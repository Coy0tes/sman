/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.news.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.news.entity.News;

/**
 * newsDAO接口
 * @author mxc
 * @version 2017-10-14
 */
@MyBatisDao
public interface NewsDao extends CrudDao<News> {

	
}