/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.appointrecord.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.appointrecord.entity.AppointRecord;

/**
 * 预约管理DAO接口
 * @author zhaoliangdong
 * @version 2017-10-16
 */
@MyBatisDao
public interface AppointRecordDao extends CrudDao<AppointRecord> {

	
}