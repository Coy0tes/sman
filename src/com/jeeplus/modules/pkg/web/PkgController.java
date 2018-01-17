/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.pkg.web;

import java.util.List;
import java.util.UUID;

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
import com.jeeplus.modules.pkg.entity.Pkg;
import com.jeeplus.modules.pkg.service.PkgService;

/**
 * pkgController
 * @author mxc
 * @version 2017-10-15
 */
@Controller
@RequestMapping(value = "${adminPath}/pkg/pkg")
public class PkgController extends BaseController {

	@Autowired
	private PkgService pkgService;
	
	@ModelAttribute
	public Pkg get(@RequestParam(required=false) String id) {
		Pkg entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = pkgService.get(id);
		}
		if (entity == null){
			entity = new Pkg();
		}
		return entity;
	}
	
	/**
	 * 套餐管理列表页面
	 */
	@RequiresPermissions("pkg:pkg:list")
	@RequestMapping(value = {"list", ""})
	public String list(Pkg pkg, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Pkg> page = pkgService.findPage(new Page<Pkg>(request, response), pkg); 
		model.addAttribute("page", page);
		return "modules/pkg/pkgList";
	}

	/**
	 * 查看，增加，编辑套餐管理表单页面
	 */
	@RequiresPermissions(value={"pkg:pkg:view","pkg:pkg:add","pkg:pkg:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Pkg pkg, Model model) {
		model.addAttribute("pkg", pkg);
		return "modules/pkg/pkgForm";
	}

	/**
	 * 保存套餐管理
	 */
	@RequiresPermissions(value={"pkg:pkg:add","pkg:pkg:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Pkg pkg, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, pkg)){
			return form(pkg, model);
		}
		if(!pkg.getIsNewRecord()){//编辑表单保存
			Pkg t = pkgService.get(pkg.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(pkg, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			pkgService.save(t);//保存
		}else{//新增表单保存
			pkgService.save(pkg);//保存
		}
		addMessage(redirectAttributes, "保存套餐管理成功");
		return "redirect:"+Global.getAdminPath()+"/pkg/pkg/?repage";
	}
	
	/**
	 * 删除套餐管理
	 */
	@RequiresPermissions("pkg:pkg:del")
	@RequestMapping(value = "delete")
	public String delete(Pkg pkg, RedirectAttributes redirectAttributes) {
		pkgService.delete(pkg);
		addMessage(redirectAttributes, "删除套餐管理成功");
		return "redirect:"+Global.getAdminPath()+"/pkg/pkg/?repage";
	}
	
	/**
	 * 批量删除套餐管理
	 */
	@RequiresPermissions("pkg:pkg:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			pkgService.delete(pkgService.get(id));
		}
		addMessage(redirectAttributes, "删除套餐管理成功");
		return "redirect:"+Global.getAdminPath()+"/pkg/pkg/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("pkg:pkg:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Pkg pkg, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "套餐管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Pkg> page = pkgService.findPage(new Page<Pkg>(request, response, -1), pkg);
    		new ExportExcel("套餐管理", Pkg.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出套餐管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/pkg/pkg/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("pkg:pkg:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Pkg> list = ei.getDataList(Pkg.class);
			for (Pkg pkg : list){
				try{
					pkgService.save(pkg);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条套餐管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条套餐管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入套餐管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/pkg/pkg/?repage";
    }
	
	/**
	 * 下载导入套餐管理数据模板
	 */
	@RequiresPermissions("pkg:pkg:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "套餐管理数据导入模板.xlsx";
    		List<Pkg> list = Lists.newArrayList(); 
    		new ExportExcel("套餐管理数据", Pkg.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/pkg/pkg/?repage";
    }
	

}