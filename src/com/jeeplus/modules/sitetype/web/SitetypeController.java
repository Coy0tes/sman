/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.sitetype.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.jeeplus.common.utils.MyBeanUtils;
import com.jeeplus.common.config.Global;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.modules.sitetype.entity.Sitetype;
import com.jeeplus.modules.sitetype.service.SitetypeService;

/**
 * 场馆分类管理Controller
 * @author zhaoliangdong
 * @version 2017-10-14
 */
@Controller
@RequestMapping(value = "${adminPath}/sitetype/sitetype")
public class SitetypeController extends BaseController {

	@Autowired
	private SitetypeService sitetypeService;
	
	@ModelAttribute
	public Sitetype get(@RequestParam(required=false) String id) {
		Sitetype entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = sitetypeService.get(id);
		}
		if (entity == null){
			entity = new Sitetype();
		}
		return entity;
	}
	
	/**
	 * 分类列表页面
	 */
	@RequiresPermissions("sitetype:sitetype:list")
	@RequestMapping(value = {"list", ""})
	public String list(Sitetype sitetype, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<Sitetype> list = sitetypeService.findList(sitetype); 
		model.addAttribute("list", list);
		return "modules/sitetype/sitetypeList";
	}

	/**
	 * 查看，增加，编辑分类表单页面
	 */
	@RequiresPermissions(value={"sitetype:sitetype:view","sitetype:sitetype:add","sitetype:sitetype:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Sitetype sitetype, Model model) {
		if (sitetype.getParent()!=null && StringUtils.isNotBlank(sitetype.getParent().getId())){
			sitetype.setParent(sitetypeService.get(sitetype.getParent().getId()));
			// 获取排序号，最末节点排序号+30
			if (StringUtils.isBlank(sitetype.getId())){
				Sitetype sitetypeChild = new Sitetype();
				sitetypeChild.setParent(new Sitetype(sitetype.getParent().getId()));
				List<Sitetype> list = sitetypeService.findList(sitetype); 
				if (list.size() > 0){
					sitetype.setSort(list.get(list.size()-1).getSort());
					if (sitetype.getSort() != null){
						sitetype.setSort(sitetype.getSort() + 30);
					}
				}else{
					sitetype.setSort(30);
				}
			}
		}
		if (sitetype.getSort() == null){
			List<Sitetype> lists = sitetypeService.findTopList();
			if(lists == null || lists.size() == 0){
				sitetype.setSort(30);
			}else{
				sitetype.setSort(lists.get(lists.size()-1).getSort());
				if(sitetype.getSort() != null){
					sitetype.setSort(sitetype.getSort()+30);
				}
			}
		}
		model.addAttribute("sitetype", sitetype);
		return "modules/sitetype/sitetypeForm";
	}

	/**
	 * 保存分类
	 */
	@RequiresPermissions(value={"sitetype:sitetype:add","sitetype:sitetype:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Sitetype sitetype, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, sitetype)){
			return form(sitetype, model);
		}
		if(!sitetype.getIsNewRecord()){//编辑表单保存
			Sitetype t = sitetypeService.get(sitetype.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(sitetype, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			sitetypeService.save(t);//保存
		}else{//新增表单保存
			sitetypeService.save(sitetype);//保存
		}
		addMessage(redirectAttributes, "保存分类成功");
		return "redirect:"+Global.getAdminPath()+"/sitetype/sitetype/?repage";
	}
	
	/**
	 * 删除分类
	 */
	@RequiresPermissions("sitetype:sitetype:del")
	@RequestMapping(value = "delete")
	public String delete(Sitetype sitetype, RedirectAttributes redirectAttributes) {
		sitetypeService.delete(sitetype);
		addMessage(redirectAttributes, "删除分类成功");
		return "redirect:"+Global.getAdminPath()+"/sitetype/sitetype/?repage";
	}

	@RequiresPermissions("user")
	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<Sitetype> list = sitetypeService.findList(new Sitetype());
		for (int i=0; i<list.size(); i++){
			Sitetype e = list.get(i);
			if (StringUtils.isBlank(extId) || (extId!=null && !extId.equals(e.getId()) && e.getParentIds().indexOf(","+extId+",")==-1)){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParentId());
				map.put("name", e.getName());
				mapList.add(map);
			}
		}
		return mapList;
	}
	
}