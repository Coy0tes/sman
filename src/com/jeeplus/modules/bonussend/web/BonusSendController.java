/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bonussend.web;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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

import  com.jeeplus.modules.classes.entity.Classes;
import com.google.common.collect.Lists;
import com.jeeplus.common.utils.DateUtils;
import com.jeeplus.common.utils.MyBeanUtils;
import com.jeeplus.common.config.Global;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.utils.excel.ExportExcel;
import com.jeeplus.common.utils.excel.ImportExcel;
import com.jeeplus.modules.bonussend.entity.BonusSend;
import com.jeeplus.modules.bonussend.service.BonusSendService;

/**
 * 奖金发放记录Controller
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@Controller
@RequestMapping(value = "${adminPath}/bonussend/bonusSend")
public class BonusSendController extends BaseController {

	@Autowired
	private BonusSendService bonusSendService;
	
	@ModelAttribute
	public BonusSend get(@RequestParam(required=false) String id) {
		BonusSend entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = bonusSendService.get(id);
		}
		if (entity == null){
			entity = new BonusSend();
		}
		return entity;
	}
	
	/**
	 * 发放记录列表页面
	 */
	@RequiresPermissions("bonussend:bonusSend:list")
	@RequestMapping(value = {"list", ""})
	public String list(BonusSend bonusSend, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<BonusSend> page = bonusSendService.findPage(new Page<BonusSend>(request, response), bonusSend); 
		model.addAttribute("page", page);
		return "modules/bonussend/bonusSendList";
	}

	/**
	 * 查看，增加，编辑发放记录表单页面
	 */
	@RequiresPermissions(value={"bonussend:bonusSend:view","bonussend:bonusSend:add","bonussend:bonusSend:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(BonusSend bonusSend, Model model) {
		model.addAttribute("bonusSend", bonusSend);
		return "modules/bonussend/bonusSendForm";
	}

	/**
	 * 保存发放记录
	 */
	@RequiresPermissions(value={"bonussend:bonusSend:add","bonussend:bonusSend:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(BonusSend bonusSend, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, bonusSend)){
			return form(bonusSend, model);
		}
		if(!bonusSend.getIsNewRecord()){//编辑表单保存
			BonusSend t = bonusSendService.get(bonusSend.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(bonusSend, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			bonusSendService.save(t);//保存
		}else{//新增表单保存
			bonusSendService.save(bonusSend);//保存
		}
		addMessage(redirectAttributes, "保存发放记录成功");
		return "redirect:"+Global.getAdminPath()+"/bonussend/bonusSend/?repage";
	}
	
	/**
	 * 删除发放记录
	 */
	@RequiresPermissions("bonussend:bonusSend:del")
	@RequestMapping(value = "delete")
	public String delete(BonusSend bonusSend, RedirectAttributes redirectAttributes) {
		bonusSendService.delete(bonusSend);
		addMessage(redirectAttributes, "删除发放记录成功");
		return "redirect:"+Global.getAdminPath()+"/bonussend/bonusSend/?repage";
	}
	
	/**
	 * 批量删除发放记录
	 */
	@RequiresPermissions("bonussend:bonusSend:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			bonusSendService.delete(bonusSendService.get(id));
		}
		addMessage(redirectAttributes, "删除发放记录成功");
		return "redirect:"+Global.getAdminPath()+"/bonussend/bonusSend/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("bonussend:bonusSend:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(BonusSend bonusSend, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "发放记录"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<BonusSend> page = bonusSendService.findPage(new Page<BonusSend>(request, response, -1), bonusSend);
    		new ExportExcel("发放记录", BonusSend.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出发放记录记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/bonussend/bonusSend/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("bonussend:bonusSend:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<BonusSend> list = ei.getDataList(BonusSend.class);
			for (BonusSend bonusSend : list){
				try{
					bonusSendService.save(bonusSend);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条发放记录记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条发放记录记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入发放记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/bonussend/bonusSend/?repage";
    }
	
	/**
	 * 下载导入发放记录数据模板
	 */
	@RequiresPermissions("bonussend:bonusSend:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "发放记录数据导入模板.xlsx";
    		List<BonusSend> list = Lists.newArrayList(); 
    		new ExportExcel("发放记录数据", BonusSend.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/bonussend/bonusSend/?repage";
    }
	
	
	/**
	 * 选择班级
	 */
	@RequestMapping(value = "selectclasses")
	public String selectclasses(Classes classes, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Classes> page = bonusSendService.findPageByclasses(new Page<Classes>(request, response),  classes);
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
		model.addAttribute("obj", classes);
		model.addAttribute("page", page);
		return "modules/sys/gridselect";
	}
	

}