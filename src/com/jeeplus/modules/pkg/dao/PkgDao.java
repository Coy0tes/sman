/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.pkg.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.pkg.entity.Pkg;

/**
 * pkgDAO接口
 * @author mxc
 * @version 2017-10-15
 */
@MyBatisDao
public interface PkgDao extends CrudDao<Pkg> {

	
}