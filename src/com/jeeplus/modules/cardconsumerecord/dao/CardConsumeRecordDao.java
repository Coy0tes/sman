/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.cardconsumerecord.dao;

import com.jeeplus.modules.site.entity.Site;
import java.util.List;
import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.cardconsumerecord.entity.CardConsumeRecord;

/**
 * 套餐卡消费记录DAO接口
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@MyBatisDao
public interface CardConsumeRecordDao extends CrudDao<CardConsumeRecord> {

	public List<Site> findListBysite(Site site);
	
}