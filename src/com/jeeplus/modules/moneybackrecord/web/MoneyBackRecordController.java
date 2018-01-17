/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.moneybackrecord.web;

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
import com.jeeplus.modules.moneybackrecord.entity.MoneyBackRecord;
import com.jeeplus.modules.moneybackrecord.service.MoneyBackRecordService;

/**
 * 契约金返还记录Controller
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@Controller
@RequestMapping(value = "${adminPath}/moneybackrecord/moneyBackRecord")
public class MoneyBackRecordController extends BaseController {

	@Autowired
	private MoneyBackRecordService moneyBackRecordService;
	
	@ModelAttribute
	public MoneyBackRecord get(@RequestParam(required=false) String id) {
		MoneyBackRecord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = moneyBackRecordService.get(id);
		}
		if (entity == null){
			entity = new MoneyBackRecord();
		}
		return entity;
	}
	
	/**
	 * 返还记录列表页面
	 */
	@RequiresPermissions("moneybackrecord:moneyBackRecord:list")
	@RequestMapping(value = {"list", ""})
	public String list(MoneyBackRecord moneyBackRecord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MoneyBackRecord> page = moneyBackRecordService.findPage(new Page<MoneyBackRecord>(request, response), moneyBackRecord); 
		model.addAttribute("page", page);
		return "modules/moneybackrecord/moneyBackRecordList";
	}

	/**
	 * 查看，增加，编辑返还记录表单页面
	 */
	@RequiresPermissions(value={"moneybackrecord:moneyBackRecord:view","moneybackrecord:moneyBackRecord:add","moneybackrecord:moneyBackRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(MoneyBackRecord moneyBackRecord, Model model) {
		model.addAttribute("moneyBackRecord", moneyBackRecord);
		return "modules/moneybackrecord/moneyBackRecordForm";
	}

	/**
	 * 保存返还记录
	 */
	@RequiresPermissions(value={"moneybackrecord:moneyBackRecord:add","moneybackrecord:moneyBackRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(MoneyBackRecord moneyBackRecord, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, moneyBackRecord)){
			return form(moneyBackRecord, model);
		}
		if(!moneyBackRecord.getIsNewRecord()){//编辑表单保存
			MoneyBackRecord t = moneyBackRecordService.get(moneyBackRecord.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(moneyBackRecord, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			moneyBackRecordService.save(t);//保存
		}else{//新增表单保存
			moneyBackRecordService.save(moneyBackRecord);//保存
		}
		addMessage(redirectAttributes, "保存返还记录成功");
		return "redirect:"+Global.getAdminPath()+"/moneybackrecord/moneyBackRecord/?repage";
	}
	
	/**
	 * 删除返还记录
	 */
	@RequiresPermissions("moneybackrecord:moneyBackRecord:del")
	@RequestMapping(value = "delete")
	public String delete(MoneyBackRecord moneyBackRecord, RedirectAttributes redirectAttributes) {
		moneyBackRecordService.delete(moneyBackRecord);
		addMessage(redirectAttributes, "删除返还记录成功");
		return "redirect:"+Global.getAdminPath()+"/moneybackrecord/moneyBackRecord/?repage";
	}
	
	/**
	 * 批量删除返还记录
	 */
	@RequiresPermissions("moneybackrecord:moneyBackRecord:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			moneyBackRecordService.delete(moneyBackRecordService.get(id));
		}
		addMessage(redirectAttributes, "删除返还记录成功");
		return "redirect:"+Global.getAdminPath()+"/moneybackrecord/moneyBackRecord/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("moneybackrecord:moneyBackRecord:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(MoneyBackRecord moneyBackRecord, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "返还记录"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<MoneyBackRecord> page = moneyBackRecordService.findPage(new Page<MoneyBackRecord>(request, response, -1), moneyBackRecord);
    		new ExportExcel("返还记录", MoneyBackRecord.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出返还记录记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/moneybackrecord/moneyBackRecord/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("moneybackrecord:moneyBackRecord:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<MoneyBackRecord> list = ei.getDataList(MoneyBackRecord.class);
			for (MoneyBackRecord moneyBackRecord : list){
				try{
					moneyBackRecordService.save(moneyBackRecord);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条返还记录记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条返还记录记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入返还记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/moneybackrecord/moneyBackRecord/?repage";
    }
	
	/**
	 * 下载导入返还记录数据模板
	 */
	@RequiresPermissions("moneybackrecord:moneyBackRecord:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "返还记录数据导入模板.xlsx";
    		List<MoneyBackRecord> list = Lists.newArrayList(); 
    		new ExportExcel("返还记录数据", MoneyBackRecord.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/moneybackrecord/moneyBackRecord/?repage";
    }
	
	
	/**
	 * 选择约跑班级
	 */
	@RequestMapping(value = "selectclasses")
	public String selectclasses(Classes classes, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Classes> page = moneyBackRecordService.findPageByclasses(new Page<Classes>(request, response),  classes);
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