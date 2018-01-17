/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.moneybackrecord.dao;

import com.jeeplus.modules.classes.entity.Classes;
import java.util.List;
import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.moneybackrecord.entity.MoneyBackRecord;

/**
 * 契约金返还记录DAO接口
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@MyBatisDao
public interface MoneyBackRecordDao extends CrudDao<MoneyBackRecord> {

	public List<Classes> findListByclasses(Classes classes);
	
}