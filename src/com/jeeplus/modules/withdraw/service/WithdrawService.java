/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.withdraw.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.withdraw.entity.Withdraw;
import com.jeeplus.modules.withdraw.dao.WithdrawDao;

/**
 * withdrawService
 * @author mxc
 * @version 2017-10-17
 */
@Service
@Transactional(readOnly = true)
public class WithdrawService extends CrudService<WithdrawDao, Withdraw> {

	public Withdraw get(String id) {
		return super.get(id);
	}
	
	public List<Withdraw> findList(Withdraw withdraw) {
		return super.findList(withdraw);
	}
	
	public Page<Withdraw> findPage(Page<Withdraw> page, Withdraw withdraw) {
		return super.findPage(page, withdraw);
	}
	
	@Transactional(readOnly = false)
	public void save(Withdraw withdraw) {
		super.save(withdraw);
	}
	
	@Transactional(readOnly = false)
	public void delete(Withdraw withdraw) {
		super.delete(withdraw);
	}
	
	
	
	
}