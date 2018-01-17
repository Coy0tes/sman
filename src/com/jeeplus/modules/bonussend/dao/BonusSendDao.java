/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bonussend.dao;

import  com.jeeplus.modules.classes.entity.Classes;
import java.util.List;
import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.bonussend.entity.BonusSend;

/**
 * 奖金发放记录DAO接口
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@MyBatisDao
public interface BonusSendDao extends CrudDao<BonusSend> {

	public List<Classes> findListByclasses(Classes classes);
	
}