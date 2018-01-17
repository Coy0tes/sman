/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.site.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.site.entity.Site;
import com.jeeplus.modules.site.dao.SiteDao;

/**
 * 场馆管理Service
 * @author zhaoliangdong
 * @version 2017-10-14
 */
@Service
@Transactional(readOnly = true)
public class SiteService extends CrudService<SiteDao, Site> {

	public Site get(String id) {
		return super.get(id);
	}
	
	public List<Site> findList(Site site) {
		return super.findList(site);
	}
	
	public Page<Site> findPage(Page<Site> page, Site site) {
		return super.findPage(page, site);
	}
	
	@Transactional(readOnly = false)
	public void save(Site site) {
		super.save(site);
	}
	
	@Transactional(readOnly = false)
	public void delete(Site site) {
		super.delete(site);
	}
	
	
	
	
}