/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.site.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.site.entity.Site;

/**
 * 场馆管理DAO接口
 * @author zhaoliangdong
 * @version 2017-10-14
 */
@MyBatisDao
public interface SiteDao extends CrudDao<Site> {

	
}