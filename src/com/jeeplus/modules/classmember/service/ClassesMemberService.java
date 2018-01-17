/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classmember.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.classmember.entity.ClassesMember;
import com.jeeplus.modules.classmember.dao.ClassesMemberDao;

/**
 * classMemberService
 * @author mxc
 * @version 2017-10-16
 */
@Service
@Transactional(readOnly = true)
public class ClassesMemberService extends CrudService<ClassesMemberDao, ClassesMember> {

	public ClassesMember get(String id) {
		return super.get(id);
	}
	
	public List<ClassesMember> findList(ClassesMember classesMember) {
		return super.findList(classesMember);
	}
	
	public Page<ClassesMember> findPage(Page<ClassesMember> page, ClassesMember classesMember) {
		return super.findPage(page, classesMember);
	}
	
	@Transactional(readOnly = false)
	public void save(ClassesMember classesMember) {
		super.save(classesMember);
	}
	
	@Transactional(readOnly = false)
	public void delete(ClassesMember classesMember) {
		super.delete(classesMember);
	}
	
	
	
	
}