/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.signin.web;

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
import com.jeeplus.modules.signin.entity.Signin;
import com.jeeplus.modules.signin.service.SigninService;
import com.jeeplus.modules.sys.utils.UserUtils;
import com.jeeplus.modules.withdraw.entity.Withdraw;

/**
 * signinController
 * @author mxc
 * @version 2017-10-18
 */
@Controller
@RequestMapping(value = "${adminPath}/signin/signin")
public class SigninController extends BaseController {

	@Autowired
	private SigninService signinService;
	
	@ModelAttribute
	public Signin get(@RequestParam(required=false) String id) {
		Signin entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = signinService.get(id);
		}
		if (entity == null){
			entity = new Signin();
		}
		return entity;
	}
	
	/**
	 * 约跑打卡管理列表页面
	 */
	@RequiresPermissions("signin:signin:list")
	@RequestMapping(value = {"list", ""})
	public String list(Signin signin, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Signin> page = signinService.findPage(new Page<Signin>(request, response), signin); 
		model.addAttribute("page", page);
		return "modules/signin/signinList";
	}
	
	/**
	 * 审核管理页面
	 * @param withdraw
	 * @param model
	 * @return
	 */
	@RequestMapping(value="formShenhe")
	public String formShenhe(Signin signin, Model model){
		
		signin = signinService.get(signin);
		
		model.addAttribute("withdraw", signin);
		return "modules/signin/signinFormShenhe";
	}
	
	/**
	 * 审核处理
	 * @param withdraw
	 * @param model
	 * @param redirectAttributes
	 * @return
	 */
	@RequestMapping(value="saveShenhe")
	public String saveShenhe(Signin signin, Model model,  RedirectAttributes redirectAttributes){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String msg = "";
		// 根据id获取最新数据
		Signin with = signinService.get(signin);
		
		// 判断页面审核状态
		if(signin.getShzt().equals("0")){
			msg = "请选择除“待审核”以外的状态";
		}else{
			// 判断数据库最新审核状态
			if(with.getShzt().equals("0")){
				
				with.setShrname(UserUtils.getUser().getName());
				with.setShrid(UserUtils.getUser().toString());
				with.setShsj(df.format(new Date()));
				
				with.setShbtgyy(signin.getShbtgyy());
				with.setShzt(signin.getShzt());
				
				signinService.save(with);
				msg = "信息提交成功！";
			}else{
				msg = "此申请已处理！";
			}
		}
		
		addMessage(redirectAttributes, msg);
		return "redirect:"+Global.getAdminPath()+"/signin/signin/?repage";
	}

	/**
	 * 查看，增加，编辑约跑打卡管理表单页面
	 */
	@RequiresPermissions(value={"signin:signin:view","signin:signin:add","signin:signin:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Signin signin, Model model) {
		model.addAttribute("signin", signin);
		return "modules/signin/signinForm";
	}

	/**
	 * 保存约跑打卡管理
	 */
	@RequiresPermissions(value={"signin:signin:add","signin:signin:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Signin signin, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, signin)){
			return form(signin, model);
		}
		if(!signin.getIsNewRecord()){//编辑表单保存
			Signin t = signinService.get(signin.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(signin, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			signinService.save(t);//保存
		}else{//新增表单保存
			signinService.save(signin);//保存
		}
		addMessage(redirectAttributes, "保存约跑打卡管理成功");
		return "redirect:"+Global.getAdminPath()+"/signin/signin/?repage";
	}
	
	/**
	 * 删除约跑打卡管理
	 */
	@RequiresPermissions("signin:signin:del")
	@RequestMapping(value = "delete")
	public String delete(Signin signin, RedirectAttributes redirectAttributes) {
		signinService.delete(signin);
		addMessage(redirectAttributes, "删除约跑打卡管理成功");
		return "redirect:"+Global.getAdminPath()+"/signin/signin/?repage";
	}
	
	/**
	 * 批量删除约跑打卡管理
	 */
	@RequiresPermissions("signin:signin:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			signinService.delete(signinService.get(id));
		}
		addMessage(redirectAttributes, "删除约跑打卡管理成功");
		return "redirect:"+Global.getAdminPath()+"/signin/signin/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("signin:signin:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Signin signin, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "约跑打卡管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Signin> page = signinService.findPage(new Page<Signin>(request, response, -1), signin);
    		new ExportExcel("约跑打卡管理", Signin.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出约跑打卡管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/signin/signin/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("signin:signin:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Signin> list = ei.getDataList(Signin.class);
			for (Signin signin : list){
				try{
					signinService.save(signin);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条约跑打卡管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条约跑打卡管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入约跑打卡管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/signin/signin/?repage";
    }
	
	/**
	 * 下载导入约跑打卡管理数据模板
	 */
	@RequiresPermissions("signin:signin:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "约跑打卡管理数据导入模板.xlsx";
    		List<Signin> list = Lists.newArrayList(); 
    		new ExportExcel("约跑打卡管理数据", Signin.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/signin/signin/?repage";
    }
	

}