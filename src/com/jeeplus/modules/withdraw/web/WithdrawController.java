/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.withdraw.web;

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
import com.jeeplus.modules.sys.utils.UserUtils;
import com.jeeplus.modules.withdraw.entity.Withdraw;
import com.jeeplus.modules.withdraw.service.WithdrawService;

/**
 * withdrawController
 * @author mxc
 * @version 2017-10-17
 */
@Controller
@RequestMapping(value = "${adminPath}/withdraw/withdraw")
public class WithdrawController extends BaseController {

	@Autowired
	private WithdrawService withdrawService;
	
	@ModelAttribute
	public Withdraw get(@RequestParam(required=false) String id) {
		Withdraw entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = withdrawService.get(id);
		}
		if (entity == null){
			entity = new Withdraw();
		}
		return entity;
	}
	
	/**
	 * 提现管理列表页面
	 */
	@RequiresPermissions("withdraw:withdraw:list")
	@RequestMapping(value = {"list", ""})
	public String list(Withdraw withdraw, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Withdraw> page = withdrawService.findPage(new Page<Withdraw>(request, response), withdraw); 
		model.addAttribute("page", page);
		return "modules/withdraw/withdrawList";
	}

	/**
	 * 查看，增加，编辑提现管理表单页面
	 */
	@RequiresPermissions(value={"withdraw:withdraw:view","withdraw:withdraw:add","withdraw:withdraw:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Withdraw withdraw, Model model) {
		model.addAttribute("withdraw", withdraw);
		return "modules/withdraw/withdrawForm";
	}

	/**
	 * 审核管理页面
	 * @param withdraw
	 * @param model
	 * @return
	 */
	@RequestMapping(value="formShenhe")
	public String formShenhe(Withdraw withdraw, Model model){
		
		withdraw = withdrawService.get(withdraw);
		
		model.addAttribute("withdraw", withdraw);
		return "modules/withdraw/withdrawFormShenhe";
	}
	
	/**
	 * 审核处理
	 * @param withdraw
	 * @param model
	 * @param redirectAttributes
	 * @return
	 */
	@RequestMapping(value="saveShenhe")
	public String saveShenhe(Withdraw withdraw, Model model,  RedirectAttributes redirectAttributes){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String msg = "";
		// 根据id获取最新数据
		Withdraw with = withdrawService.get(withdraw);
		
		// 判断页面审核状态
		if(withdraw.getShzt().equals("0")){
			msg = "请选择除“待审核”以外的状态";
		}else{
			// 判断数据库最新审核状态
			if(with.getShzt().equals("0")){
				with.setShrname(UserUtils.getUser().getName());
				with.setShrid(UserUtils.getUser().toString());
				with.setShsj(df.format(new Date()));
				
				with.setShbtgyy(withdraw.getShbtgyy());
				with.setShzt(withdraw.getShzt());
				
				withdrawService.save(with);
				msg = "信息提交成功！";
			}else{
				msg = "此申请已处理！";
			}
		}
		
		addMessage(redirectAttributes, msg);
		return "redirect:"+Global.getAdminPath()+"/withdraw/withdraw/?repage";
	}
	
	/**
	 * 保存提现管理
	 */
	@RequiresPermissions(value={"withdraw:withdraw:add","withdraw:withdraw:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Withdraw withdraw, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, withdraw)){
			return form(withdraw, model);
		}
		if(!withdraw.getIsNewRecord()){//编辑表单保存
			Withdraw t = withdrawService.get(withdraw.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(withdraw, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			withdrawService.save(t);//保存
		}else{//新增表单保存
			withdrawService.save(withdraw);//保存
		}
		addMessage(redirectAttributes, "保存提现管理成功");
		return "redirect:"+Global.getAdminPath()+"/withdraw/withdraw/?repage";
	}
	
	/**
	 * 删除提现管理
	 */
	@RequiresPermissions("withdraw:withdraw:del")
	@RequestMapping(value = "delete")
	public String delete(Withdraw withdraw, RedirectAttributes redirectAttributes) {
		withdrawService.delete(withdraw);
		addMessage(redirectAttributes, "删除提现管理成功");
		return "redirect:"+Global.getAdminPath()+"/withdraw/withdraw/?repage";
	}
	
	/**
	 * 批量删除提现管理
	 */
	@RequiresPermissions("withdraw:withdraw:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			withdrawService.delete(withdrawService.get(id));
		}
		addMessage(redirectAttributes, "删除提现管理成功");
		return "redirect:"+Global.getAdminPath()+"/withdraw/withdraw/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("withdraw:withdraw:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Withdraw withdraw, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "提现管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Withdraw> page = withdrawService.findPage(new Page<Withdraw>(request, response, -1), withdraw);
    		new ExportExcel("提现管理", Withdraw.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出提现管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/withdraw/withdraw/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("withdraw:withdraw:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Withdraw> list = ei.getDataList(Withdraw.class);
			for (Withdraw withdraw : list){
				try{
					withdrawService.save(withdraw);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条提现管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条提现管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入提现管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/withdraw/withdraw/?repage";
    }
	
	/**
	 * 下载导入提现管理数据模板
	 */
	@RequiresPermissions("withdraw:withdraw:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "提现管理数据导入模板.xlsx";
    		List<Withdraw> list = Lists.newArrayList(); 
    		new ExportExcel("提现管理数据", Withdraw.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/withdraw/withdraw/?repage";
    }
	
	
}