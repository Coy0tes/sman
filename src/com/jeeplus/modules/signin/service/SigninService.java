/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.signin.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.signin.entity.Signin;
import com.jeeplus.modules.signin.dao.SigninDao;

/**
 * signinService
 * @author mxc
 * @version 2017-10-18
 */
@Service
@Transactional(readOnly = true)
public class SigninService extends CrudService<SigninDao, Signin> {

	public Signin get(String id) {
		return super.get(id);
	}
	
	public List<Signin> findList(Signin signin) {
		return super.findList(signin);
	}
	
	public Page<Signin> findPage(Page<Signin> page, Signin signin) {
		return super.findPage(page, signin);
	}
	
	@Transactional(readOnly = false)
	public void save(Signin signin) {
		super.save(signin);
	}
	
	@Transactional(readOnly = false)
	public void delete(Signin signin) {
		super.delete(signin);
	}
	
	
	
	
}