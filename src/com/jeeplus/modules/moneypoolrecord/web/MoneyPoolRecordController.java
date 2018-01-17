/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.moneypoolrecord.web;

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

import com.jeeplus.modules.classes.entity.Classes;
import com.google.common.collect.Lists;
import com.jeeplus.common.utils.DateUtils;
import com.jeeplus.common.utils.MyBeanUtils;
import com.jeeplus.common.config.Global;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.utils.excel.ExportExcel;
import com.jeeplus.common.utils.excel.ImportExcel;
import com.jeeplus.modules.moneypoolrecord.entity.MoneyPoolRecord;
import com.jeeplus.modules.moneypoolrecord.service.MoneyPoolRecordService;

/**
 * 奖金池记录Controller
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@Controller
@RequestMapping(value = "${adminPath}/moneypoolrecord/moneyPoolRecord")
public class MoneyPoolRecordController extends BaseController {

	@Autowired
	private MoneyPoolRecordService moneyPoolRecordService;
	
	@ModelAttribute
	public MoneyPoolRecord get(@RequestParam(required=false) String id) {
		MoneyPoolRecord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = moneyPoolRecordService.get(id);
		}
		if (entity == null){
			entity = new MoneyPoolRecord();
		}
		return entity;
	}
	
	/**
	 * 奖金池记录列表页面
	 */
	@RequiresPermissions("moneypoolrecord:moneyPoolRecord:list")
	@RequestMapping(value = {"list", ""})
	public String list(MoneyPoolRecord moneyPoolRecord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MoneyPoolRecord> page = moneyPoolRecordService.findPage(new Page<MoneyPoolRecord>(request, response), moneyPoolRecord); 
		model.addAttribute("page", page);
		return "modules/moneypoolrecord/moneyPoolRecordList";
	}

	/**
	 * 查看，增加，编辑奖金池记录表单页面
	 */
	@RequiresPermissions(value={"moneypoolrecord:moneyPoolRecord:view","moneypoolrecord:moneyPoolRecord:add","moneypoolrecord:moneyPoolRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(MoneyPoolRecord moneyPoolRecord, Model model) {
		model.addAttribute("moneyPoolRecord", moneyPoolRecord);
		return "modules/moneypoolrecord/moneyPoolRecordForm";
	}

	/**
	 * 保存奖金池记录
	 */
	@RequiresPermissions(value={"moneypoolrecord:moneyPoolRecord:add","moneypoolrecord:moneyPoolRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(MoneyPoolRecord moneyPoolRecord, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, moneyPoolRecord)){
			return form(moneyPoolRecord, model);
		}
		if(!moneyPoolRecord.getIsNewRecord()){//编辑表单保存
			MoneyPoolRecord t = moneyPoolRecordService.get(moneyPoolRecord.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(moneyPoolRecord, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			moneyPoolRecordService.save(t);//保存
		}else{//新增表单保存
			moneyPoolRecordService.save(moneyPoolRecord);//保存
		}
		addMessage(redirectAttributes, "保存奖金池记录成功");
		return "redirect:"+Global.getAdminPath()+"/moneypoolrecord/moneyPoolRecord/?repage";
	}
	
	/**
	 * 删除奖金池记录
	 */
	@RequiresPermissions("moneypoolrecord:moneyPoolRecord:del")
	@RequestMapping(value = "delete")
	public String delete(MoneyPoolRecord moneyPoolRecord, RedirectAttributes redirectAttributes) {
		moneyPoolRecordService.delete(moneyPoolRecord);
		addMessage(redirectAttributes, "删除奖金池记录成功");
		return "redirect:"+Global.getAdminPath()+"/moneypoolrecord/moneyPoolRecord/?repage";
	}
	
	/**
	 * 批量删除奖金池记录
	 */
	@RequiresPermissions("moneypoolrecord:moneyPoolRecord:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			moneyPoolRecordService.delete(moneyPoolRecordService.get(id));
		}
		addMessage(redirectAttributes, "删除奖金池记录成功");
		return "redirect:"+Global.getAdminPath()+"/moneypoolrecord/moneyPoolRecord/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("moneypoolrecord:moneyPoolRecord:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(MoneyPoolRecord moneyPoolRecord, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "奖金池记录"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<MoneyPoolRecord> page = moneyPoolRecordService.findPage(new Page<MoneyPoolRecord>(request, response, -1), moneyPoolRecord);
    		new ExportExcel("奖金池记录", MoneyPoolRecord.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出奖金池记录记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/moneypoolrecord/moneyPoolRecord/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("moneypoolrecord:moneyPoolRecord:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<MoneyPoolRecord> list = ei.getDataList(MoneyPoolRecord.class);
			for (MoneyPoolRecord moneyPoolRecord : list){
				try{
					moneyPoolRecordService.save(moneyPoolRecord);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条奖金池记录记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条奖金池记录记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入奖金池记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/moneypoolrecord/moneyPoolRecord/?repage";
    }
	
	/**
	 * 下载导入奖金池记录数据模板
	 */
	@RequiresPermissions("moneypoolrecord:moneyPoolRecord:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "奖金池记录数据导入模板.xlsx";
    		List<MoneyPoolRecord> list = Lists.newArrayList(); 
    		new ExportExcel("奖金池记录数据", MoneyPoolRecord.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/moneypoolrecord/moneyPoolRecord/?repage";
    }
	
	
	/**
	 * 选择班级
	 */
	@RequestMapping(value = "selectclasses")
	public String selectclasses(Classes classes, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Classes> page = moneyPoolRecordService.findPageByclasses(new Page<Classes>(request, response),  classes);
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