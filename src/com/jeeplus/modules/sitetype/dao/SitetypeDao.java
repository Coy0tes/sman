/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.sitetype.dao;

import java.util.List;

import com.jeeplus.common.persistence.TreeDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.sitetype.entity.Sitetype;

/**
 * 场馆分类管理DAO接口
 * @author zhaoliangdong
 * @version 2017-10-14
 */
@MyBatisDao
public interface SitetypeDao extends TreeDao<Sitetype> {

	List<Sitetype> findTopList(Sitetype sitetype);
	
}