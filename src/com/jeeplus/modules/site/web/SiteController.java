/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.site.web;

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
import com.jeeplus.common.utils.MyBeanUtils;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.utils.excel.ExportExcel;
import com.jeeplus.common.utils.excel.ImportExcel;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.modules.site.entity.Site;
import com.jeeplus.modules.site.service.SiteService;
import com.jeeplus.modules.siteuser.entity.Siteuser;
import com.jeeplus.modules.sys.entity.User;
import com.jeeplus.modules.sys.utils.UserUtils;

/**
 * 场馆管理Controller
 * @author zhaoliangdong
 * @version 2017-10-14
 */
@Controller
@RequestMapping(value = "${adminPath}/site/site")
public class SiteController extends BaseController {

	@Autowired
	private SiteService siteService;
	
	@ModelAttribute
	public Site get(@RequestParam(required=false) String id) {
		Site entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = siteService.get(id);
		}
		if (entity == null){
			entity = new Site();
		}
		return entity;
	}
	
	/**
	 * 场馆信息列表页面
	 */
	@RequiresPermissions("site:site:list")
	@RequestMapping(value = {"list", ""})
	public String list(Site site, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Site> page = siteService.findPage(new Page<Site>(request, response), site); 
		model.addAttribute("page", page);
		return "modules/site/siteList";
	}

	/**
	 * 查看，增加，编辑场馆信息表单页面
	 */
	@RequiresPermissions(value={"site:site:view","site:site:add","site:site:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Site site, Model model) {
		model.addAttribute("site", site);
		return "modules/site/siteForm";
	}
	
	/**
	 * 场馆用户维护页面
	 * @param site
	 * @param model
	 * @return
	 */
	@RequiresPermissions(value={"site:site:view","site:site:add","site:site:edit"},logical=Logical.OR)
	@RequestMapping(value = "infoform")
	public String infoform(Site site, Model model) {
		//获取当前用户所在的场馆
		User user = UserUtils.getUser();
		Siteuser suser = UserUtils.getSiteUser(user.getId());
		Site entity = suser.getSite();
		if(entity!=null){
			site = this.siteService.get(suser.getSite());
		}
		
		model.addAttribute("site", site);
		return "modules/site/siteInfoForm";
	}
	
	/**
	 * 地图选点页面
	 * @param site
	 * @param model
	 * @return
	 */
	@RequiresPermissions(value={"site:site:view","site:site:add","site:site:edit"},logical=Logical.OR)
	@RequestMapping(value = "map")
	public String map(Site site, Model model) {
		return "modules/site/map";
	}

	/**
	 * 保存场馆信息
	 */
	@RequiresPermissions(value={"site:site:add","site:site:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Site site, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, site)){
			return form(site, model);
		}
		if(!site.getIsNewRecord()){//编辑表单保存
			Site t = siteService.get(site.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(site, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			siteService.save(t);//保存
		}else{//新增表单保存
			siteService.save(site);//保存
		}
		addMessage(redirectAttributes, "保存场馆信息成功");
		return "redirect:"+Global.getAdminPath()+"/site/site/?repage";
	}
	
	/**
	 * 场馆用户保存场馆数据
	 * @param site
	 * @param model
	 * @param redirectAttributes
	 * @return
	 * @throws Exception
	 */
	@RequiresPermissions(value={"site:site:add","site:site:edit"},logical=Logical.OR)
	@RequestMapping(value = "saveInfo")
	public String saveInfo(Site site, Model model, RedirectAttributes redirectAttributes) throws Exception{
		Site t = siteService.get(site.getId());//从数据库取出记录的值
		MyBeanUtils.copyBeanNotNull2Bean(site, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
		siteService.save(t);//保存
		addMessage(redirectAttributes, "保存场馆信息成功");
		return "redirect:"+Global.getAdminPath()+"/site/site/infoform";
	}
	
	/**
	 * 删除场馆信息
	 */
	@RequiresPermissions("site:site:del")
	@RequestMapping(value = "delete")
	public String delete(Site site, RedirectAttributes redirectAttributes) {
		siteService.delete(site);
		addMessage(redirectAttributes, "删除场馆信息成功");
		return "redirect:"+Global.getAdminPath()+"/site/site/?repage";
	}
	
	/**
	 * 批量删除场馆信息
	 */
	@RequiresPermissions("site:site:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			siteService.delete(siteService.get(id));
		}
		addMessage(redirectAttributes, "删除场馆信息成功");
		return "redirect:"+Global.getAdminPath()+"/site/site/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("site:site:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Site site, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "场馆信息"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Site> page = siteService.findPage(new Page<Site>(request, response, -1), site);
    		new ExportExcel("场馆信息", Site.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出场馆信息记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/site/site/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("site:site:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Site> list = ei.getDataList(Site.class);
			for (Site site : list){
				try{
					siteService.save(site);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条场馆信息记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条场馆信息记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入场馆信息失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/site/site/?repage";
    }
	
	/**
	 * 下载导入场馆信息数据模板
	 */
	@RequiresPermissions("site:site:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "场馆信息数据导入模板.xlsx";
    		List<Site> list = Lists.newArrayList(); 
    		new ExportExcel("场馆信息数据", Site.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/site/site/?repage";
    }
	
	
	

}