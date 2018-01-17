/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.code.web;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
import com.jeeplus.modules.code.entity.Code;
import com.jeeplus.modules.code.service.CodeService;
import com.jeeplus.modules.member.entity.Member;
import com.jeeplus.modules.sys.utils.DictUtils;

/**
 * codeController
 * @author mxc
 * @version 2017-10-14
 */
@Controller
@RequestMapping(value = "${adminPath}/code/code")
public class CodeController extends BaseController {

	@Autowired
	private CodeService codeService;
	
	@ModelAttribute
	public Code get(@RequestParam(required=false) String id) {
		Code entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = codeService.get(id);
		}
		if (entity == null){
			entity = new Code();
		}
		return entity;
	}
	
	/**
	 * 兑换券管理列表页面
	 */
	@RequiresPermissions("code:code:list")
	@RequestMapping(value = {"list", ""})
	public String list(Code code, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Code> page = codeService.findPage(new Page<Code>(request, response), code); 
		model.addAttribute("page", page);
		return "modules/code/codeList";
	}

	/**
	 * 查看，增加，编辑兑换券管理表单页面
	 */
	@RequiresPermissions(value={"code:code:view","code:code:add","code:code:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Code code, Model model) {
		if(code.getId() == null){
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
			code.setCode(df.format(new Date()));
		}
		model.addAttribute("code", code);
		return "modules/code/codeForm";
	}
	
	/**
	 * 批量增加兑换码
	 * @param code
	 * @return
	 */
	@RequestMapping(value="addCodeForm")
	public String addCodeForm(Code code){
		
		return "modules/code/addCodeForm";
	}
	
	@RequestMapping(value="addCodeSave")
	public String addCodeSave(Code code, Model model, RedirectAttributes redirectAttributes){
		
		String msg = codeService.saveAddCode(code);
		
		addMessage(redirectAttributes, "批量添加成功！本次添加【"+code.getCodenum()+"】条兑换码");
		return "redirect:"+Global.getAdminPath()+"/code/code/?repage";
	}

	/**
	 * 保存兑换券管理
	 */
	@RequiresPermissions(value={"code:code:add","code:code:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Code code, Model model, RedirectAttributes redirectAttributes) throws Exception{
		String msg = "";
		if (!beanValidator(model, code)){
			return form(code, model);
		}
		if(!code.getIsNewRecord()){//编辑表单保存
			Code t = codeService.get(code.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(code, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			codeService.save(t);//保存
		}else{//新增表单保存
			// 兑换码重复效验
			int num = 0;
			num = codeService.findCode(code);
			if(num>0){
				msg = "兑换码重复，请重新输入！";
			}else{
				msg = "保存兑换码成功";
				codeService.save(code);//保存
			}
		}
		addMessage(redirectAttributes, msg);
		return "redirect:"+Global.getAdminPath()+"/code/code/?repage";
	}
	
	/**
	 * 删除兑换券管理
	 */
	@RequiresPermissions("code:code:del")
	@RequestMapping(value = "delete")
	public String delete(Code code, RedirectAttributes redirectAttributes) {
		// 如果兑换码状态已经发放或者已经使用，则不能删
		String msg = null;
		if(!code.getStatus().equals("0")){
			msg = "该兑换券"+DictUtils.getDictLabel(code.getStatus(), "code_status_isstatus","")+"，不能删除！";
		}else{
			codeService.delete(code);
			msg = "删除兑换券成功！";
		}
		addMessage(redirectAttributes, msg);
		return "redirect:"+Global.getAdminPath()+"/code/code/?repage";
	}
	
	/**
	 * 批量删除兑换券管理
	 */
	@RequiresPermissions("code:code:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			codeService.delete(codeService.get(id));
		}
		addMessage(redirectAttributes, "删除兑换券管理成功");
		return "redirect:"+Global.getAdminPath()+"/code/code/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("code:code:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Code code, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "兑换券管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Code> page = codeService.findPage(new Page<Code>(request, response, -1), code);
    		new ExportExcel("兑换券管理", Code.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出兑换券管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/code/code/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("code:code:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Code> list = ei.getDataList(Code.class);
			for (Code code : list){
				try{
					codeService.save(code);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条兑换券管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条兑换券管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入兑换券管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/code/code/?repage";
    }
	
	/**
	 * 下载导入兑换券管理数据模板
	 */
	@RequiresPermissions("code:code:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "兑换券管理数据导入模板.xlsx";
    		List<Code> list = Lists.newArrayList(); 
    		new ExportExcel("兑换券管理数据", Code.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/code/code/?repage";
    }
	
	/**
	 * 选择所属领用人
	 */
	@RequestMapping(value = "selectcode")
	public String selectcode(Code code, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Code> page = codeService.findPageByCode(new Page<Code>(request, response),  code);
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
		model.addAttribute("obj", code);
		model.addAttribute("page", page);
		return "modules/sys/gridselect";
	}
	
	/**
	 * 选择领用人
	 */
	@RequestMapping(value = "selectmember")
	public String selectmember(Member member, String url, String fieldLabels, String fieldKeys, String searchLabel, String searchKey, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Member> page = codeService.findPageBymember(new Page<Member>(request, response),  member);
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
		model.addAttribute("obj", member);
		model.addAttribute("page", page);
		return "modules/sys/gridselect";
	}
}