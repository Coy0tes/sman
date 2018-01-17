/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.pkg.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.pkg.entity.Pkg;
import com.jeeplus.modules.pkg.dao.PkgDao;

/**
 * pkgService
 * @author mxc
 * @version 2017-10-15
 */
@Service
@Transactional(readOnly = true)
public class PkgService extends CrudService<PkgDao, Pkg> {

	public Pkg get(String id) {
		return super.get(id);
	}
	
	public List<Pkg> findList(Pkg pkg) {
		return super.findList(pkg);
	}
	
	public Page<Pkg> findPage(Page<Pkg> page, Pkg pkg) {
		return super.findPage(page, pkg);
	}
	
	@Transactional(readOnly = false)
	public void save(Pkg pkg) {
		super.save(pkg);
	}
	
	@Transactional(readOnly = false)
	public void delete(Pkg pkg) {
		super.delete(pkg);
	}
	
	
	
	
}