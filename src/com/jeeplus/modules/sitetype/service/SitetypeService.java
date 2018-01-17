/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.sitetype.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.service.TreeService;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.modules.sitetype.entity.Sitetype;
import com.jeeplus.modules.sitetype.dao.SitetypeDao;

/**
 * 场馆分类管理Service
 * @author zhaoliangdong
 * @version 2017-10-14
 */
@Service
@Transactional(readOnly = true)
public class SitetypeService extends TreeService<SitetypeDao, Sitetype> {

	public Sitetype get(String id) {
		return super.get(id);
	}
	
	public List<Sitetype> findList(Sitetype sitetype) {
		if (StringUtils.isNotBlank(sitetype.getParentIds())){
			sitetype.setParentIds(","+sitetype.getParentIds()+",");
		}
		return super.findList(sitetype);
	}
	
	@Transactional(readOnly = false)
	public void save(Sitetype sitetype) {
		super.save(sitetype);
	}
	
	@Transactional(readOnly = false)
	public void delete(Sitetype sitetype) {
		super.delete(sitetype);
	}

	public List<Sitetype> findTopList() {
		Sitetype sitetype = new Sitetype();
		return dao.findTopList(sitetype);
	}
	
}