/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classes.web;

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
import com.jeeplus.modules.classes.entity.Classes;
import com.jeeplus.modules.classes.service.ClassesService;

/**
 * classesController
 * @author mxc
 * @version 2017-10-15
 */
@Controller
@RequestMapping(value = "${adminPath}/classes/classes")
public class ClassesController extends BaseController {

	@Autowired
	private ClassesService classesService;
	
	@ModelAttribute
	public Classes get(@RequestParam(required=false) String id) {
		Classes entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = classesService.get(id);
		}
		if (entity == null){
			entity = new Classes();
		}
		return entity;
	}
	
	/**
	 * 约跑班级管理列表页面
	 */
	@RequiresPermissions("classes:classes:list")
	@RequestMapping(value = {"list", ""})
	public String list(Classes classes, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Classes> page = classesService.findPage(new Page<Classes>(request, response), classes); 
		model.addAttribute("page", page);
		return "modules/classes/classesList";
	}

	/**
	 * 查看，增加，编辑约跑班级管理表单页面
	 */
	@RequiresPermissions(value={"classes:classes:view","classes:classes:add","classes:classes:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Classes classes, Model model) {
		model.addAttribute("classes", classes);
		return "modules/classes/classesForm";
	}

	/**
	 * 保存约跑班级管理
	 */
	@RequiresPermissions(value={"classes:classes:add","classes:classes:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Classes classes, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, classes)){
			return form(classes, model);
		}
		if(!classes.getIsNewRecord()){//编辑表单保存
			Classes t = classesService.get(classes.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(classes, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			classesService.save(t);//保存
		}else{//新增表单保存
			classesService.save(classes);//保存
		}
		addMessage(redirectAttributes, "保存约跑班级管理成功");
		return "redirect:"+Global.getAdminPath()+"/classes/classes/?repage";
	}
	
	/**
	 * 删除约跑班级管理
	 */
	@RequiresPermissions("classes:classes:del")
	@RequestMapping(value = "delete")
	public String delete(Classes classes, RedirectAttributes redirectAttributes) {
		classesService.delete(classes);
		addMessage(redirectAttributes, "删除约跑班级管理成功");
		return "redirect:"+Global.getAdminPath()+"/classes/classes/?repage";
	}
	
	/**
	 * 批量删除约跑班级管理
	 */
	@RequiresPermissions("classes:classes:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			classesService.delete(classesService.get(id));
		}
		addMessage(redirectAttributes, "删除约跑班级管理成功");
		return "redirect:"+Global.getAdminPath()+"/classes/classes/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("classes:classes:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Classes classes, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "约跑班级管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Classes> page = classesService.findPage(new Page<Classes>(request, response, -1), classes);
    		new ExportExcel("约跑班级管理", Classes.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出约跑班级管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classes/classes/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("classes:classes:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Classes> list = ei.getDataList(Classes.class);
			for (Classes classes : list){
				try{
					classesService.save(classes);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条约跑班级管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条约跑班级管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入约跑班级管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classes/classes/?repage";
    }
	
	/**
	 * 下载导入约跑班级管理数据模板
	 */
	@RequiresPermissions("classes:classes:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "约跑班级管理数据导入模板.xlsx";
    		List<Classes> list = Lists.newArrayList(); 
    		new ExportExcel("约跑班级管理数据", Classes.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classes/classes/?repage";
    }
	
	
	

}