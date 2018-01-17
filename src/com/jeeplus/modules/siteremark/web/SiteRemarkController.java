/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.siteremark.web;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.jeeplus.modules.siteremark.entity.SiteRemark;
import com.jeeplus.modules.siteremark.service.SiteRemarkService;
import com.jeeplus.modules.siteuser.entity.Siteuser;
import com.jeeplus.modules.sys.entity.User;
import com.jeeplus.modules.sys.utils.UserUtils;
import com.jeeplus.modules.withdraw.entity.Withdraw;

/**
 * siteRemarkController
 * @author mxc
 * @version 2017-10-17
 */
@Controller
@RequestMapping(value = "${adminPath}/siteremark/siteRemark")
public class SiteRemarkController extends BaseController {

	@Autowired
	private SiteRemarkService siteRemarkService;
	
	@ModelAttribute
	public SiteRemark get(@RequestParam(required=false) String id) {
		SiteRemark entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = siteRemarkService.get(id);
		}
		if (entity == null){
			entity = new SiteRemark();
		}
		return entity;
	}
	
	/**
	 * 场馆评价管理列表页面
	 */
	@RequiresPermissions("siteremark:siteRemark:list")
	@RequestMapping(value = {"list", ""})
	public String list(SiteRemark siteRemark, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SiteRemark> page = siteRemarkService.findPage(new Page<SiteRemark>(request, response), siteRemark);
		
		// 场馆检索控制
		User user = UserUtils.getUser();
		
		model.addAttribute("page", page);
		model.addAttribute("user", user.getId().toString());
		return "modules/siteremark/siteRemarkList";
	}

	/**
	 * 审核管理页面
	 * @param withdraw
	 * @param model
	 * @return
	 */
	@RequestMapping(value="formShenhe")
	public String formShenhe(SiteRemark siteRemark, Model model){
		
		siteRemark = siteRemarkService.get(siteRemark);
		
		model.addAttribute("siteRemark", siteRemark);
		return "modules/siteremark/siteRemarkFormShenhe";
	}
	
	/**
	 * 审核处理
	 * @param withdraw
	 * @param model
	 * @param redirectAttributes
	 * @return
	 */
	@RequestMapping(value="saveShenhe")
	public String saveShenhe(SiteRemark siteRemark, Model model,  RedirectAttributes redirectAttributes){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String msg = "";
		// 根据id获取最新数据
		SiteRemark with = siteRemarkService.get(siteRemark);
		
		// 判断页面审核状态
		if(siteRemark.getShzt().equals("0")){
			msg = "请选择除“待审核”以外的状态";
		}else{
			// 判断数据库最新审核状态
			if(with.getShzt().equals("0")){
				
				with.setShrname(UserUtils.getUser().getName());
				with.setShrid(UserUtils.getUser().toString());
				with.setShsj(df.format(new Date()));
				
				with.setShbtgyy(siteRemark.getShbtgyy());
				with.setShzt(siteRemark.getShzt());
				
				siteRemarkService.save(with);
				msg = "信息提交成功！";
			}else{
				msg = "此申请已处理！";
			}
		}
		
		addMessage(redirectAttributes, msg);
		return "redirect:"+Global.getAdminPath()+"/siteremark/siteRemark/?repage";
	}
	
	
	/**
	 * 查看，增加，编辑场馆评价管理表单页面
	 */
	@RequiresPermissions(value={"siteremark:siteRemark:view","siteremark:siteRemark:add","siteremark:siteRemark:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(SiteRemark siteRemark, Model model) {
		model.addAttribute("siteRemark", siteRemark);
		return "modules/siteremark/siteRemarkForm";
	}

	/**
	 * 保存场馆评价管理
	 */
	@RequiresPermissions(value={"siteremark:siteRemark:add","siteremark:siteRemark:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(SiteRemark siteRemark, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, siteRemark)){
			return form(siteRemark, model);
		}
		if(!siteRemark.getIsNewRecord()){//编辑表单保存
			SiteRemark t = siteRemarkService.get(siteRemark.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(siteRemark, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			siteRemarkService.save(t);//保存
		}else{//新增表单保存
			siteRemarkService.save(siteRemark);//保存
		}
		addMessage(redirectAttributes, "保存场馆评价管理成功");
		return "redirect:"+Global.getAdminPath()+"/siteremark/siteRemark/?repage";
	}
	
	/**
	 * 删除场馆评价管理
	 */
	@RequiresPermissions("siteremark:siteRemark:del")
	@RequestMapping(value = "delete")
	public String delete(SiteRemark siteRemark, RedirectAttributes redirectAttributes) {
		siteRemarkService.delete(siteRemark);
		addMessage(redirectAttributes, "删除场馆评价管理成功");
		return "redirect:"+Global.getAdminPath()+"/siteremark/siteRemark/?repage";
	}
	
	/**
	 * 批量删除场馆评价管理
	 */
	@RequiresPermissions("siteremark:siteRemark:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			siteRemarkService.delete(siteRemarkService.get(id));
		}
		addMessage(redirectAttributes, "删除场馆评价管理成功");
		return "redirect:"+Global.getAdminPath()+"/siteremark/siteRemark/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("siteremark:siteRemark:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(SiteRemark siteRemark, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "场馆评价管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<SiteRemark> page = siteRemarkService.findPage(new Page<SiteRemark>(request, response, -1), siteRemark);
    		new ExportExcel("场馆评价管理", SiteRemark.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出场馆评价管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/siteremark/siteRemark/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("siteremark:siteRemark:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<SiteRemark> list = ei.getDataList(SiteRemark.class);
			for (SiteRemark siteRemark : list){
				try{
					siteRemarkService.save(siteRemark);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条场馆评价管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条场馆评价管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入场馆评价管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/siteremark/siteRemark/?repage";
    }
	
	/**
	 * 下载导入场馆评价管理数据模板
	 */
	@RequiresPermissions("siteremark:siteRemark:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "场馆评价管理数据导入模板.xlsx";
    		List<SiteRemark> list = Lists.newArrayList(); 
    		new ExportExcel("场馆评价管理数据", SiteRemark.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/siteremark/siteRemark/?repage";
    }
	
	public static void main(String[] args) {
		for(int i = 0;i<11; i++){
			String uid = UUID.randomUUID().toString().replace("-", "");
			System.out.println(uid);
		}
	}
	

}