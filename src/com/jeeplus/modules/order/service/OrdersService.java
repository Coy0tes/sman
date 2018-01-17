/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.order.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.order.entity.Orders;
import com.jeeplus.modules.order.dao.OrdersDao;

/**
 * orderService
 * @author mxc
 * @version 2017-10-16
 */
@Service
@Transactional(readOnly = true)
public class OrdersService extends CrudService<OrdersDao, Orders> {

	public Orders get(String id) {
		return super.get(id);
	}
	
	public List<Orders> findList(Orders orders) {
		return super.findList(orders);
	}
	
	public Page<Orders> findPage(Page<Orders> page, Orders orders) {
		return super.findPage(page, orders);
	}
	
	@Transactional(readOnly = false)
	public void save(Orders orders) {
		super.save(orders);
	}
	
	@Transactional(readOnly = false)
	public void delete(Orders orders) {
		super.delete(orders);
	}
	
	
	
	
}