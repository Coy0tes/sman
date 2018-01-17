/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.news.web;

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
import com.jeeplus.modules.news.entity.News;
import com.jeeplus.modules.news.service.NewsService;

/**
 * newsController
 * @author mxc
 * @version 2017-10-14
 */
@Controller
@RequestMapping(value = "${adminPath}/news/news")
public class NewsController extends BaseController {

	@Autowired
	private NewsService newsService;
	
	@ModelAttribute
	public News get(@RequestParam(required=false) String id) {
		News entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = newsService.get(id);
		}
		if (entity == null){
			entity = new News();
		}
		return entity;
	}
	
	/**
	 * 新闻管理列表页面
	 */
	@RequiresPermissions("news:news:list")
	@RequestMapping(value = {"list", ""})
	public String list(News news, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<News> page = newsService.findPage(new Page<News>(request, response), news); 
		model.addAttribute("page", page);
		return "modules/news/newsList";
	}

	/**
	 * 查看，增加，编辑新闻管理表单页面
	 */
	@RequiresPermissions(value={"news:news:view","news:news:add","news:news:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(News news, Model model) {
		// 新闻排序自动赋值
		if(news.getXh() == null){
			List<News> lists = newsService.findList(news);
			int j = 0;
			if(lists.size()!=0){
				for(int i = 0; i < lists.size(); i++){
					// 类型转换
					if(Integer.valueOf(lists.get(i).getXh()) > j){
						j = Integer.valueOf(lists.get(i).getXh());
						news.setXh(String.valueOf(j+1));
					}
				}
			}else{
				news.setXh(String.valueOf(j+1));
			}
		}
		model.addAttribute("news", news);
		return "modules/news/newsForm";
	}

	/**
	 * 保存新闻管理
	 */
	@RequiresPermissions(value={"news:news:add","news:news:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(News news, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, news)){
			return form(news, model);
		}
		if(!news.getIsNewRecord()){//编辑表单保存
			News t = newsService.get(news.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(news, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			newsService.save(t);//保存
		}else{//新增表单保存
			newsService.save(news);//保存
		}
		addMessage(redirectAttributes, "保存新闻管理成功");
		return "redirect:"+Global.getAdminPath()+"/news/news/?repage";
	}
	
	/**
	 * 删除新闻管理
	 */
	@RequiresPermissions("news:news:del")
	@RequestMapping(value = "delete")
	public String delete(News news, RedirectAttributes redirectAttributes) {
		newsService.delete(news);
		addMessage(redirectAttributes, "删除新闻管理成功");
		return "redirect:"+Global.getAdminPath()+"/news/news/?repage";
	}
	
	/**
	 * 批量删除新闻管理
	 */
	@RequiresPermissions("news:news:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			newsService.delete(newsService.get(id));
		}
		addMessage(redirectAttributes, "删除新闻管理成功");
		return "redirect:"+Global.getAdminPath()+"/news/news/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("news:news:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(News news, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "新闻管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<News> page = newsService.findPage(new Page<News>(request, response, -1), news);
    		new ExportExcel("新闻管理", News.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出新闻管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/news/news/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("news:news:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<News> list = ei.getDataList(News.class);
			for (News news : list){
				try{
					newsService.save(news);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条新闻管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条新闻管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入新闻管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/news/news/?repage";
    }
	
	/**
	 * 下载导入新闻管理数据模板
	 */
	@RequiresPermissions("news:news:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "新闻管理数据导入模板.xlsx";
    		List<News> list = Lists.newArrayList(); 
    		new ExportExcel("新闻管理数据", News.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/news/news/?repage";
    }
	
	
	

}