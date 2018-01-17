/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.order.web;

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
import com.jeeplus.modules.order.entity.Orders;
import com.jeeplus.modules.order.service.OrdersService;
import com.jeeplus.modules.pkg.entity.Pkg;
import com.jeeplus.modules.pkg.service.PkgService;

/**
 * orderController
 * @author mxc
 * @version 2017-10-16
 */
@Controller
@RequestMapping(value = "${adminPath}/order/orders")
public class OrdersController extends BaseController {

	@Autowired
	private OrdersService ordersService;
	@Autowired
	private PkgService pkgService;
	
	@ModelAttribute
	public Orders get(@RequestParam(required=false) String id) {
		Orders entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = ordersService.get(id);
		}
		if (entity == null){
			entity = new Orders();
		}
		return entity;
	}
	
	/**
	 * 订单管理列表页面
	 */
	@RequiresPermissions("order:orders:list")
	@RequestMapping(value = {"list", ""})
	public String list(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.findPage(new Page<Orders>(request, response), orders); 
		Pkg pkg = new Pkg();
		
		List<Pkg> packa = pkgService.findList(pkg);
		
		model.addAttribute("packa", packa);
		model.addAttribute("page", page);
		return "modules/order/ordersList";
	}

	/**
	 * 查看，增加，编辑订单管理表单页面
	 */
	@RequiresPermissions(value={"order:orders:view","order:orders:add","order:orders:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Orders orders, Model model) {
		model.addAttribute("orders", orders);
		return "modules/order/ordersForm";
	}

	/**
	 * 保存订单管理
	 */
	@RequiresPermissions(value={"order:orders:add","order:orders:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Orders orders, Model model, RedirectAttributes redirectAttributes) throws Exception{
		if (!beanValidator(model, orders)){
			return form(orders, model);
		}
		if(!orders.getIsNewRecord()){//编辑表单保存
			Orders t = ordersService.get(orders.getId());//从数据库取出记录的值
			MyBeanUtils.copyBeanNotNull2Bean(orders, t);//将编辑表单中的非NULL值覆盖数据库记录中的值
			ordersService.save(t);//保存
		}else{//新增表单保存
			ordersService.save(orders);//保存
		}
		addMessage(redirectAttributes, "保存订单管理成功");
		return "redirect:"+Global.getAdminPath()+"/order/orders/?repage";
	}
	
	/**
	 * 删除订单管理
	 */
	@RequiresPermissions("order:orders:del")
	@RequestMapping(value = "delete")
	public String delete(Orders orders, RedirectAttributes redirectAttributes) {
		ordersService.delete(orders);
		addMessage(redirectAttributes, "删除订单管理成功");
		return "redirect:"+Global.getAdminPath()+"/order/orders/?repage";
	}
	
	/**
	 * 批量删除订单管理
	 */
	@RequiresPermissions("order:orders:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			ordersService.delete(ordersService.get(id));
		}
		addMessage(redirectAttributes, "删除订单管理成功");
		return "redirect:"+Global.getAdminPath()+"/order/orders/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("order:orders:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Orders orders, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "订单管理"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Orders> page = ordersService.findPage(new Page<Orders>(request, response, -1), orders);
    		new ExportExcel("订单管理", Orders.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出订单管理记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/order/orders/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("order:orders:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			int failureNum = 0;
			StringBuilder failureMsg = new StringBuilder();
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Orders> list = ei.getDataList(Orders.class);
			for (Orders orders : list){
				try{
					ordersService.save(orders);
					successNum++;
				}catch(ConstraintViolationException ex){
					failureNum++;
				}catch (Exception ex) {
					failureNum++;
				}
			}
			if (failureNum>0){
				failureMsg.insert(0, "，失败 "+failureNum+" 条订单管理记录。");
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条订单管理记录"+failureMsg);
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入订单管理失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/order/orders/?repage";
    }
	
	/**
	 * 下载导入订单管理数据模板
	 */
	@RequiresPermissions("order:orders:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "订单管理数据导入模板.xlsx";
    		List<Orders> list = Lists.newArrayList(); 
    		new ExportExcel("订单管理数据", Orders.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/order/orders/?repage";
    }
	

}