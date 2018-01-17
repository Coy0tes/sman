/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.signin.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.signin.entity.Signin;

/**
 * signinDAO接口
 * @author mxc
 * @version 2017-10-18
 */
@MyBatisDao
public interface SigninDao extends CrudDao<Signin> {

	
}