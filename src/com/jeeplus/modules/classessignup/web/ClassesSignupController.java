/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classessignup.web;

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
import com.jeeplus.modules.classessignup.entity.ClassesSignup;
import com.jeeplus.modules.classessignup.service.ClassesSignupService;

/**
 * classesSignupController
 * @author mxc
 * @version 2017-10-15
 */
@Controller
@RequestMapping(value = "${adminPath}/classessignup/classesSignup")
public class ClassesSignupController extends BaseController {

	@Autowired
	private ClassesSignupService classesSignupService;
	
	@ModelAttribute
	public ClassesSignup get(@RequestParam(required=false) String id) {
		ClassesSignup entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = classesSignupService.get(id);
		}
		if (entity == null){
			entity = new ClassesSignup();
		}
		return entity;
	}
	
	/**
	 * 约跑报名管理列表页面
	 */
	@RequiresPermissions("classessignup:classesSignup:list")
	@RequestMapping(value = {"list", ""})
	public String list(ClassesSignup classesSignup, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ClassesSignup> page = classesSignupService.findPage(new Page<ClassesSignup>(request, response), classesSignup); 
		model.addAttribute("page", page);
		return "modules/classessignup/classesSignupList";
	}

	/**
	 * 查看，增加，编辑约跑报名管理表单页面
	 */
	@RequiresPermissions(value={"classessignup:classesSignup:view","classessignup:classesSignup:add","classessignup:classesSignup:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(ClassesSignup classesSignup, Model model) {
		model.addAttribute("classesSignup", classesSignup);
		return "modules/classessignup/classesSignupForm";
	}

	/**
	 * 保存约跑报名管理
	 */
	@RequiresPermissions(value={"classessignup:classesSignup:add","classessignup:classesSignup:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(ClassesSignup classesSignup, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, classesSignup)){
			return form(classesSignup, model);
		}
		if(!classesSignup.getIsNewRecord()){//编辑表单保存
			ClassesSignup t = classesSignupService.get(classesSignup.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(classesSignup, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			classesSignupService.save(t);//保存
		}else{//新增表单保存
			classesSignupService.save(classesSignup);//保存
		}
		addMessage(redirectAttributes, "保存约跑报名管理成功");
		return "redirect:"+Global.getAdminPath()+"/classessignup/classesSignup/?repage";
	}
	
	/**
	 * 删除约跑报名管理
	 */
	@RequiresPermissions("classessignup:classesSignup:del")
	@RequestMapping(value = "delete")
	public String delete(ClassesSignup classesSignup, RedirectAttributes redirectAttributes) {
		classesSignupService.delete(classesSignup);
		addMessage(redirectAttributes, "删除约跑报名管理成功");
		return "redirect:"+Global.getAdminPath()+"/classessignup/classesSignup/?repage";
	}
	
	/**
	 * 批量删除约跑报名管理
	 */
	@RequiresPermissions("classessignup:classesSignup:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			classesSignupService.delete(classesSignupService.get(id));
		}
		addMessage(redirectAttributes, "删除约跑报名管理成功");
		return "redirect:"+Global.getAdminPath()+"/classessignup/classesSignup/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("classessignup:classesSignup:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(ClassesSignup classesSignup, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "约跑报名管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<ClassesSignup> page = classesSignupService.findPage(new Page<ClassesSignup>(request, response, -1), classesSignup);
    		new ExportExcel("约跑报名管理", ClassesSignup.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出约跑报名管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classessignup/classesSignup/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("classessignup:classesSignup:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<ClassesSignup> list = ei.getDataList(ClassesSignup.class);
			for (ClassesSignup classesSignup : list){
				try{
					classesSignupService.save(classesSignup);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条约跑报名管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条约跑报名管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入约跑报名管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classessignup/classesSignup/?repage";
    }
	
	/**
	 * 下载导入约跑报名管理数据模板
	 */
	@RequiresPermissions("classessignup:classesSignup:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "约跑报名管理数据导入模板.xlsx";
    		List<ClassesSignup> list = Lists.newArrayList(); 
    		new ExportExcel("约跑报名管理数据", ClassesSignup.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classessignup/classesSignup/?repage";
    }
	
	
	

}