/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classmember.web;

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
import com.jeeplus.modules.classmember.entity.ClassesMember;
import com.jeeplus.modules.classmember.service.ClassesMemberService;

/**
 * classMemberController
 * @author mxc
 * @version 2017-10-16
 */
@Controller
@RequestMapping(value = "${adminPath}/classmember/classesMember")
public class ClassesMemberController extends BaseController {

	@Autowired
	private ClassesMemberService classesMemberService;
	
	@ModelAttribute
	public ClassesMember get(@RequestParam(required=false) String id) {
		ClassesMember entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = classesMemberService.get(id);
		}
		if (entity == null){
			entity = new ClassesMember();
		}
		return entity;
	}
	
	/**
	 * 跑班成员管理列表页面
	 */
	@RequiresPermissions("classmember:classesMember:list")
	@RequestMapping(value = {"list", ""})
	public String list(ClassesMember classesMember, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ClassesMember> page = classesMemberService.findPage(new Page<ClassesMember>(request, response), classesMember); 
		model.addAttribute("page", page);
		return "modules/classmember/classesMemberList";
	}

	/**
	 * 查看，增加，编辑跑班成员管理表单页面
	 */
	@RequiresPermissions(value={"classmember:classesMember:view","classmember:classesMember:add","classmember:classesMember:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(ClassesMember classesMember, Model model) {
		model.addAttribute("classesMember", classesMember);
		return "modules/classmember/classesMemberForm";
	}

	/**
	 * 保存跑班成员管理
	 */
	@RequiresPermissions(value={"classmember:classesMember:add","classmember:classesMember:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(ClassesMember classesMember, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, classesMember)){
			return form(classesMember, model);
		}
		if(!classesMember.getIsNewRecord()){//编辑表单保存
			ClassesMember t = classesMemberService.get(classesMember.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(classesMember, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			classesMemberService.save(t);//保存
		}else{//新增表单保存
			classesMemberService.save(classesMember);//保存
		}
		addMessage(redirectAttributes, "保存跑班成员管理成功");
		return "redirect:"+Global.getAdminPath()+"/classmember/classesMember/?repage";
	}
	
	/**
	 * 删除跑班成员管理
	 */
	@RequiresPermissions("classmember:classesMember:del")
	@RequestMapping(value = "delete")
	public String delete(ClassesMember classesMember, RedirectAttributes redirectAttributes) {
		classesMemberService.delete(classesMember);
		addMessage(redirectAttributes, "删除跑班成员管理成功");
		return "redirect:"+Global.getAdminPath()+"/classmember/classesMember/?repage";
	}
	
	/**
	 * 批量删除跑班成员管理
	 */
	@RequiresPermissions("classmember:classesMember:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			classesMemberService.delete(classesMemberService.get(id));
		}
		addMessage(redirectAttributes, "删除跑班成员管理成功");
		return "redirect:"+Global.getAdminPath()+"/classmember/classesMember/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("classmember:classesMember:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(ClassesMember classesMember, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "跑班成员管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<ClassesMember> page = classesMemberService.findPage(new Page<ClassesMember>(request, response, -1), classesMember);
    		new ExportExcel("跑班成员管理", ClassesMember.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出跑班成员管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classmember/classesMember/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("classmember:classesMember:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<ClassesMember> list = ei.getDataList(ClassesMember.class);
			for (ClassesMember classesMember : list){
				try{
					classesMemberService.save(classesMember);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条跑班成员管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条跑班成员管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入跑班成员管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classmember/classesMember/?repage";
    }
	
	/**
	 * 下载导入跑班成员管理数据模板
	 */
	@RequiresPermissions("classmember:classesMember:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "跑班成员管理数据导入模板.xlsx";
    		List<ClassesMember> list = Lists.newArrayList(); 
    		new ExportExcel("跑班成员管理数据", ClassesMember.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/classmember/classesMember/?repage";
    }
	
	
	

}