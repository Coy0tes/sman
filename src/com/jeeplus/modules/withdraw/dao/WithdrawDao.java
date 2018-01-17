/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.withdraw.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.withdraw.entity.Withdraw;

/**
 * withdrawDAO接口
 * @author mxc
 * @version 2017-10-17
 */
@MyBatisDao
public interface WithdrawDao extends CrudDao<Withdraw> {

	
}