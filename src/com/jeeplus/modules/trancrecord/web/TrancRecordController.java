/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.trancrecord.web;

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
import com.jeeplus.modules.trancrecord.entity.TrancRecord;
import com.jeeplus.modules.trancrecord.service.TrancRecordService;

/**
 * trancRecordController
 * @author mxc
 * @version 2017-10-17
 */
@Controller
@RequestMapping(value = "${adminPath}/trancrecord/trancRecord")
public class TrancRecordController extends BaseController {

	@Autowired
	private TrancRecordService trancRecordService;
	
	@ModelAttribute
	public TrancRecord get(@RequestParam(required=false) String id) {
		TrancRecord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = trancRecordService.get(id);
		}
		if (entity == null){
			entity = new TrancRecord();
		}
		return entity;
	}
	
	/**
	 * 交易流水列表页面
	 */
	@RequiresPermissions("trancrecord:trancRecord:list")
	@RequestMapping(value = {"list", ""})
	public String list(TrancRecord trancRecord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TrancRecord> page = trancRecordService.findPage(new Page<TrancRecord>(request, response), trancRecord); 
		model.addAttribute("page", page);
		return "modules/trancrecord/trancRecordList";
	}

	/**
	 * 查看，增加，编辑交易流水表单页面
	 */
	@RequiresPermissions(value={"trancrecord:trancRecord:view","trancrecord:trancRecord:add","trancrecord:trancRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(TrancRecord trancRecord, Model model) {
		model.addAttribute("trancRecord", trancRecord);
		return "modules/trancrecord/trancRecordForm";
	}

	/**
	 * 保存交易流水
	 */
	@RequiresPermissions(value={"trancrecord:trancRecord:add","trancrecord:trancRecord:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(TrancRecord trancRecord, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, trancRecord)){
			return form(trancRecord, model);
		}
		if(!trancRecord.getIsNewRecord()){//编辑表单保存
			TrancRecord t = trancRecordService.get(trancRecord.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(trancRecord, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			trancRecordService.save(t);//保存
		}else{//新增表单保存
			trancRecordService.save(trancRecord);//保存
		}
		addMessage(redirectAttributes, "保存交易流水成功");
		return "redirect:"+Global.getAdminPath()+"/trancrecord/trancRecord/?repage";
	}
	
	/**
	 * 删除交易流水
	 */
	@RequiresPermissions("trancrecord:trancRecord:del")
	@RequestMapping(value = "delete")
	public String delete(TrancRecord trancRecord, RedirectAttributes redirectAttributes) {
		trancRecordService.delete(trancRecord);
		addMessage(redirectAttributes, "删除交易流水成功");
		return "redirect:"+Global.getAdminPath()+"/trancrecord/trancRecord/?repage";
	}
	
	/**
	 * 批量删除交易流水
	 */
	@RequiresPermissions("trancrecord:trancRecord:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			trancRecordService.delete(trancRecordService.get(id));
		}
		addMessage(redirectAttributes, "删除交易流水成功");
		return "redirect:"+Global.getAdminPath()+"/trancrecord/trancRecord/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("trancrecord:trancRecord:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(TrancRecord trancRecord, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "交易流水"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<TrancRecord> page = trancRecordService.findPage(new Page<TrancRecord>(request, response, -1), trancRecord);
    		new ExportExcel("交易流水", TrancRecord.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出交易流水记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/trancrecord/trancRecord/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("trancrecord:trancRecord:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<TrancRecord> list = ei.getDataList(TrancRecord.class);
			for (TrancRecord trancRecord : list){
				try{
					trancRecordService.save(trancRecord);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条交易流水记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条交易流水记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入交易流水失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/trancrecord/trancRecord/?repage";
    }
	
	/**
	 * 下载导入交易流水数据模板
	 */
	@RequiresPermissions("trancrecord:trancRecord:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "交易流水数据导入模板.xlsx";
    		List<TrancRecord> list = Lists.newArrayList(); 
    		new ExportExcel("交易流水数据", TrancRecord.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/trancrecord/trancRecord/?repage";
    }
	

}