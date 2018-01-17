/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.cardconsumerecord.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.modules.site.entity.Site;
import com.jeeplus.modules.siteuser.entity.Siteuser;
import com.jeeplus.modules.sys.entity.User;
import com.jeeplus.modules.sys.utils.UserUtils;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.cardconsumerecord.entity.CardConsumeRecord;
import com.jeeplus.modules.cardconsumerecord.dao.CardConsumeRecordDao;

/**
 * 套餐卡消费记录Service
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@Service
@Transactional(readOnly = true)
public class CardConsumeRecordService extends CrudService<CardConsumeRecordDao, CardConsumeRecord> {

	public CardConsumeRecord get(String id) {
		return super.get(id);
	}
	
	public List<CardConsumeRecord> findList(CardConsumeRecord cardConsumeRecord) {
		//数据权限
		User user = UserUtils.getUser();
		if(UserUtils.isSiteUser(user.getId())){
			Siteuser suser = UserUtils.getSiteUser(user.getId());
			cardConsumeRecord.setSite(suser.getSite());
		}
		
		return super.findList(cardConsumeRecord);
	}
	
	public Page<CardConsumeRecord> findPage(Page<CardConsumeRecord> page, CardConsumeRecord cardConsumeRecord) {
		//数据权限
		User user = UserUtils.getUser();
		if(UserUtils.isSiteUser(user.getId())){
			Siteuser suser = UserUtils.getSiteUser(user.getId());
			cardConsumeRecord.setSite(suser.getSite());
		}
		
		return super.findPage(page, cardConsumeRecord);
	}
	
	@Transactional(readOnly = false)
	public void save(CardConsumeRecord cardConsumeRecord) {
		super.save(cardConsumeRecord);
	}
	
	@Transactional(readOnly = false)
	public void delete(CardConsumeRecord cardConsumeRecord) {
		super.delete(cardConsumeRecord);
	}
	
	public Page<Site> findPageBysite(Page<Site> page, Site site) {
		site.setPage(page);
		page.setList(dao.findListBysite(site));
		return page;
	}
	
	
	
}