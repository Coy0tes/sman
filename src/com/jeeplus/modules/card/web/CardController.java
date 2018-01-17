/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.card.web;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolationException;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jeeplus.modules.pkg.entity.Pkg;
import com.jeeplus.modules.member.entity.Member;
import com.google.common.collect.Lists;
import com.jeeplus.common.utils.DateUtils;
import com.jeeplus.common.utils.MyBeanUtils;
import com.jeeplus.common.config.Global;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.utils.excel.ExportExcel;
import com.jeeplus.common.utils.excel.ImportExcel;
import com.jeeplus.modules.card.entity.Card;
import com.jeeplus.modules.card.service.CardService;

/**
 * cardController
 * @author mxc
 * @version 2017-10-16
 */
@Controller
@RequestMapping(value = "${adminPath}/card/card")
public class CardController extends BaseController {

	@Autowired
	private CardService cardService;
	
	@ModelAttribute
	public Card get(@RequestParam(required=false) String id) {
		Card entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = cardService.get(id);
		}
		if (entity == null){
			entity = new Card();
		}
		return entity;
	}
	
	/**
	 * 套餐卡管理列表页面
	 */
	@RequiresPermissions("card:card:list")
	@RequestMapping(value = {"list", ""})
	public String list(Card card, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Card> page = cardService.findPage(new Page<Card>(request, response), card); 
		model.addAttribute("page", page);
		return "modules/card/cardList";
	}

	/**
	 * 查看，增加，编辑套餐卡管理表单页面
	 */
	@RequiresPermissions(value={"card:card:view","card:card:add","card:card:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Card card, Model model) {
		
		if(card.getId() == null){
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
			card.setCardbh(df.format(new Date())+"0");
		}
		
		model.addAttribute("card", card);
		return "modules/card/cardForm";
	}

	/**
	 * 保存套餐卡管理
	 */
	@RequiresPermissions(value={"card:card:add","card:card:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Card card, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, card)){
			return form(card, model);
		}
		if(!card.getIsNewRecord()){//编辑表单保存
			Card t = cardService.get(card.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(card, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			cardService.save(t);//保存
		}else{//新增表单保存
			cardService.save(card);//保存
		}
		addMessage(redirectAttributes, "保存套餐卡管理成功");
		return "redirect:"+Global.getAdminPath()+"/card/card/?repage";
	}
	
	/**
	 * 删除套餐卡管理
	 */
	@RequiresPermissions("card:card:del")
	@RequestMapping(value = "delete")
	public String delete(Card card, RedirectAttributes redirectAttributes) {
		String msg = "";
		// 套餐卡剩余次数等于0才能删
		if(String.valueOf(card.getSycs()).equals("0")){
			cardService.delete(card);
			msg = "删除套餐卡成功";
		}else{
			msg="该套餐卡有剩余次数未使用，不可删除";
		}
		
		addMessage(redirectAttributes, msg);
		return "redirect:"+Global.getAdminPath()+"/card/card/?repage";
	}
	
	/**
	 * 批量删除套餐卡管理
	 */
	@RequiresPermissions("card:card:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			cardService.delete(cardService.get(id));
		}
		addMessage(redirectAttributes, "删除套餐卡管理成功");
		return "redirect:"+Global.getAdminPath()+"/card/card/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("card:card:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Card card, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "套餐卡管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Card> page = cardService.findPage(new Page<Card>(request, response, -1), card);
    		new ExportExcel("套餐卡管理", Card.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出套餐卡管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/card/card/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("card:card:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Card> list = ei.getDataList(Card.class);
			for (Card card : list){
				try{
					cardService.save(card);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条套餐卡管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条套餐卡管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入套餐卡管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/card/card/?repage";
    }
	
	/**
	 * 下载导入套餐卡管理数据模板
	 */
	@RequiresPermissions("card:card:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "套餐卡管理数据导入模板.xlsx";
    		List<Card> list = Lists.newArrayList(); 
    		new ExportExcel("套餐卡管理数据", Card.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/card/card/?repage";
    }
	
	
	/**
	 * 选择所属套餐
	 */
	@RequestMapping(value = "selectpkg")
	public String selectpkg(Pkg pkg, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Pkg> page = cardService.findPageBypkg(new Page<Pkg>(request, response),  pkg);
		try {
			fieldLabels = URLDecoder.decode(fieldLabels, "UTF-8");
			fieldKeys = URLDecoder.decode(fieldKeys, "UTF-8");
			searchLabel = URLDecoder.decode(searchLabel, "UTF-8");
			searchKey = URLDecoder.decode(searchKey, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		model.addAttribute("labelNames", fieldLabels.split("\\|"));
		model.addAttribute("labelValues", fieldKeys.split("\\|"));
		model.addAttribute("fieldLabels", fieldLabels);
		model.addAttribute("fieldKeys", fieldKeys);
		model.addAttribute("url", url);
		model.addAttribute("searchLabel", searchLabel);
		model.addAttribute("searchKey", searchKey);
		model.addAttribute("obj", pkg);
		model.addAttribute("page", page);
		return "modules/sys/gridselect";
	}
	/**
	 * 选择持卡人
	 */
	@RequestMapping(value = "selectmemebr")
	public String selectmemebr(Member memebr, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Member> page = cardService.findPageBymemebr(new Page<Member>(request, response),  memebr);
		try {
			fieldLabels = URLDecoder.decode(fieldLabels, "UTF-8");
			fieldKeys = URLDecoder.decode(fieldKeys, "UTF-8");
			searchLabel = URLDecoder.decode(searchLabel, "UTF-8");
			searchKey = URLDecoder.decode(searchKey, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		model.addAttribute("labelNames", fieldLabels.split("\\|"));
		model.addAttribute("labelValues", fieldKeys.split("\\|"));
		model.addAttribute("fieldLabels", fieldLabels);
		model.addAttribute("fieldKeys", fieldKeys);
		model.addAttribute("url", url);
		model.addAttribute("searchLabel", searchLabel);
		model.addAttribute("searchKey", searchKey);
		model.addAttribute("obj", memebr);
		model.addAttribute("page", page);
		return "modules/sys/gridselect";
	}
	

}