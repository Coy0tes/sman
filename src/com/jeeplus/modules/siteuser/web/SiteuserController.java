/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.siteuser.web;

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

import com.google.common.collect.Lists;
import com.jeeplus.common.config.Global;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.utils.DateUtils;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.utils.excel.ExportExcel;
import com.jeeplus.common.utils.excel.ImportExcel;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.modules.site.entity.Site;
import com.jeeplus.modules.siteuser.entity.Siteuser;
import com.jeeplus.modules.siteuser.service.SiteuserService;
import com.jeeplus.modules.sys.entity.Role;
import com.jeeplus.modules.sys.service.SystemService;
import com.jeeplus.modules.sys.utils.UserUtils;

/**
 * 场馆管理员Controller
 * @author zhaoliangdong
 * @version 2017-10-15
 */
@Controller
@RequestMapping(value = "${adminPath}/siteuser/siteuser")
public class SiteuserController extends BaseController {

	@Autowired
	private SiteuserService siteuserService;
	
	@ModelAttribute
	public Siteuser get(@RequestParam(required=false) String id) {
		Siteuser entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = siteuserService.get(id);
		}
		if (entity == null){
			entity = new Siteuser();
		}
		return entity;
	}
	
	/**
	 * 管理员列表页面
	 */
	@RequiresPermissions("siteuser:siteuser:list")
	@RequestMapping(value = {"list", ""})
	public String list(Siteuser siteuser, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Siteuser> page = siteuserService.findPage(new Page<Siteuser>(request, response), siteuser); 
		model.addAttribute("page", page);
		return "modules/siteuser/siteuserList";
	}

	/**
	 * 查看，增加，编辑管理员表单页面
	 */
	@RequiresPermissions(value={"siteuser:siteuser:view","siteuser:siteuser:add","siteuser:siteuser:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Siteuser siteuser, Model model) {
		List<Role> rolelist = UserUtils.getSiteRoleList();
		model.addAttribute("siteuser", siteuser);
		model.addAttribute("allRoles", rolelist);
		return "modules/siteuser/siteuserForm";
	}

	/**
	 * 保存管理员
	 */
	@RequiresPermissions(value={"siteuser:siteuser:add","siteuser:siteuser:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Siteuser siteuser, Model model, RedirectAttributes redirectAttributes) throws Exception{
		// 如果新密码为空，则不更换密码
		if (StringUtils.isNotBlank(siteuser.getNewPassword())) {
			siteuser.setPassword(SystemService.entryptPassword(siteuser.getNewPassword()));
		}
		
		String msg = this.siteuserService.saveUser(siteuser);
		
		//如果修改当前用户信息，则清空该用户的缓存
		if (siteuser.getLoginName().equals(UserUtils.getUser().getLoginName())){
			UserUtils.clearCache();
		}
		addMessage(redirectAttributes, msg);
		
		return "redirect:"+Global.getAdminPath()+"/siteuser/siteuser/?repage";
	}
	
	/**
	 * 删除管理员
	 */
	@RequiresPermissions("siteuser:siteuser:del")
	@RequestMapping(value = "delete")
	public String delete(Siteuser siteuser, RedirectAttributes redirectAttributes) {
		siteuserService.delete(siteuser);
		addMessage(redirectAttributes, "删除管理员成功");
		return "redirect:"+Global.getAdminPath()+"/siteuser/siteuser/?repage";
	}
	
	/**
	 * 批量删除管理员
	 */
	@RequiresPermissions("siteuser:siteuser:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			siteuserService.delete(siteuserService.get(id));
		}
		addMessage(redirectAttributes, "删除管理员成功");
		return "redirect:"+Global.getAdminPath()+"/siteuser/siteuser/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("siteuser:siteuser:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Siteuser siteuser, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "管理员"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Siteuser> page = siteuserService.findPage(new Page<Siteuser>(request, response, -1), siteuser);
    		new ExportExcel("管理员", Siteuser.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出管理员记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/siteuser/siteuser/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("siteuser:siteuser:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Siteuser> list = ei.getDataList(Siteuser.class);
			for (Siteuser siteuser : list){
				try{
					siteuserService.save(siteuser);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条管理员记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条管理员记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入管理员失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/siteuser/siteuser/?repage";
    }
	
	/**
	 * 下载导入管理员数据模板
	 */
	@RequiresPermissions("siteuser:siteuser:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "管理员数据导入模板.xlsx";
    		List<Siteuser> list = Lists.newArrayList(); 
    		new ExportExcel("管理员数据", Siteuser.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/siteuser/siteuser/?repage";
    }
	
	
	/**
	 * 选择场馆
	 */
	@RequestMapping(value = "selectsite")
	public String selectsite(Site site, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Site> page = siteuserService.findPageBysite(new Page<Site>(request, response),  site);
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
		model.addAttribute("obj", site);
		model.addAttribute("page", page);
		return "modules/sys/gridselect";
	}
	

}