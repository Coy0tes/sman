/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.siteuser.dao;

import com.jeeplus.modules.site.entity.Site;

import java.util.List;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.siteuser.entity.Siteuser;

/**
 * 场馆管理员DAO接口
 * @author zhaoliangdong
 * @version 2017-10-15
 */
@MyBatisDao
public interface SiteuserDao extends CrudDao<Siteuser> {

	public List<Site> findListBysite(Site site);

	public void deleteUserRole(Siteuser user);

	public void insertUserRole(Siteuser user);

	public Siteuser getSiteUser(String id);
	
}