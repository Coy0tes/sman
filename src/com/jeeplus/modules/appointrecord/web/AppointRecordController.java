/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.appointrecord.web;

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

import com.google.common.collect.Lists;
import com.jeeplus.common.utils.DateUtils;
import com.jeeplus.common.utils.MyBeanUtils;
import com.jeeplus.common.config.Global;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.utils.excel.ExportExcel;
import com.jeeplus.common.utils.excel.ImportExcel;
import com.jeeplus.modules.appointrecord.entity.AppointRecord;
import com.jeeplus.modules.appointrecord.service.AppointRecordService;

/**
 * 预约管理Controller
 * @author zhaoliangdong
 * @version 2017-10-16
 */
@Controller
@RequestMapping(value = "${adminPath}/appointrecord/appointRecord")
public class AppointRecordController extends BaseController {

	@Autowired
	private AppointRecordService appointRecordService;
	
	@ModelAttribute
	public AppointRecord get(@RequestParam(required=false) String id) {
		AppointRecord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = appointRecordService.get(id);
		}
		if (entity == null){
			entity = new AppointRecord();
		}
		return entity;
	}
	
	/**
	 * 预约信息列表页面
	 */
	@RequiresPermissions("appointrecord:appointRecord:list")
	@RequestMapping(value = {"list", ""})
	public String list(AppointRecord appointRecord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<AppointRecord> page = appointRecordService.findPage(new Page<AppointRecord>(request, response), appointRecord); 
		model.addAttribute("page", page);
		return "modules/appointrecord/appointRecordList";
	}

	/**
	 * 查看，增加，编辑预约信息表单页面
	 */
	@RequiresPermissions(value={"appointrecord:appointRecord:view","appointrecord:appointRecord:add","appointrecord:appointRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(AppointRecord appointRecord, Model model) {
		model.addAttribute("appointRecord", appointRecord);
		return "modules/appointrecord/appointRecordForm";
	}

	/**
	 * 保存预约信息
	 */
	@RequiresPermissions(value={"appointrecord:appointRecord:add","appointrecord:appointRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(AppointRecord appointRecord, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, appointRecord)){
			return form(appointRecord, model);
		}
		if(!appointRecord.getIsNewRecord()){//编辑表单保存
			AppointRecord t = appointRecordService.get(appointRecord.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(appointRecord, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			appointRecordService.save(t);//保存
		}else{//新增表单保存
			appointRecordService.save(appointRecord);//保存
		}
		addMessage(redirectAttributes, "保存预约信息成功");
		return "redirect:"+Global.getAdminPath()+"/appointrecord/appointRecord/?repage";
	}
	
	/**
	 * 删除预约信息
	 */
	@RequiresPermissions("appointrecord:appointRecord:del")
	@RequestMapping(value = "delete")
	public String delete(AppointRecord appointRecord, RedirectAttributes redirectAttributes) {
		appointRecordService.delete(appointRecord);
		addMessage(redirectAttributes, "删除预约信息成功");
		return "redirect:"+Global.getAdminPath()+"/appointrecord/appointRecord/?repage";
	}
	
	/**
	 * 批量删除预约信息
	 */
	@RequiresPermissions("appointrecord:appointRecord:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			appointRecordService.delete(appointRecordService.get(id));
		}
		addMessage(redirectAttributes, "删除预约信息成功");
		return "redirect:"+Global.getAdminPath()+"/appointrecord/appointRecord/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("appointrecord:appointRecord:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(AppointRecord appointRecord, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "预约信息"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<AppointRecord> page = appointRecordService.findPage(new Page<AppointRecord>(request, response, -1), appointRecord);
    		new ExportExcel("预约信息", AppointRecord.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出预约信息记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/appointrecord/appointRecord/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("appointrecord:appointRecord:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<AppointRecord> list = ei.getDataList(AppointRecord.class);
			for (AppointRecord appointRecord : list){
				try{
					appointRecordService.save(appointRecord);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条预约信息记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条预约信息记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入预约信息失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/appointrecord/appointRecord/?repage";
    }
	
	/**
	 * 下载导入预约信息数据模板
	 */
	@RequiresPermissions("appointrecord:appointRecord:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "预约信息数据导入模板.xlsx";
    		List<AppointRecord> list = Lists.newArrayList(); 
    		new ExportExcel("预约信息数据", AppointRecord.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/appointrecord/appointRecord/?repage";
    }
	
	
	

}