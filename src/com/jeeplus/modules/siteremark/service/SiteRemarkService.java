/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.siteremark.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.siteremark.entity.SiteRemark;
import com.jeeplus.modules.siteremark.dao.SiteRemarkDao;
import com.jeeplus.modules.siteuser.entity.Siteuser;
import com.jeeplus.modules.sys.entity.User;
import com.jeeplus.modules.sys.utils.UserUtils;

/**
 * siteRemarkService
 * @author mxc
 * @version 2017-10-17
 */
@Service
@Transactional(readOnly = true)
public class SiteRemarkService extends CrudService<SiteRemarkDao, SiteRemark> {

	public SiteRemark get(String id) {
		return super.get(id);
	}
	
	public List<SiteRemark> findList(SiteRemark siteRemark) {
		//数据权限
		User user = UserUtils.getUser();
		if(UserUtils.isSiteUser(user.getId())){
			Siteuser suser = UserUtils.getSiteUser(user.getId());
			siteRemark.setSiteid(suser.getSite().getId());
		}
		return super.findList(siteRemark);
	}
	
	public Page<SiteRemark> findPage(Page<SiteRemark> page, SiteRemark siteRemark) {
		//数据权限
		User user = UserUtils.getUser();
		if(UserUtils.isSiteUser(user.getId())){
			Siteuser suser = UserUtils.getSiteUser(user.getId());
			siteRemark.setSiteid(suser.getSite().getId());
		}
		return super.findPage(page, siteRemark);
	}
	
	@Transactional(readOnly = false)
	public void save(SiteRemark siteRemark) {
		super.save(siteRemark);
	}
	
	@Transactional(readOnly = false)
	public void delete(SiteRemark siteRemark) {
		super.delete(siteRemark);
	}
	
	
	
	
}