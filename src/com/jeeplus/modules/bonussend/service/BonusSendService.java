/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bonussend.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import  com.jeeplus.modules.classes.entity.Classes;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.bonussend.entity.BonusSend;
import com.jeeplus.modules.bonussend.dao.BonusSendDao;

/**
 * 奖金发放记录Service
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@Service
@Transactional(readOnly = true)
public class BonusSendService extends CrudService<BonusSendDao, BonusSend> {

	public BonusSend get(String id) {
		return super.get(id);
	}
	
	public List<BonusSend> findList(BonusSend bonusSend) {
		return super.findList(bonusSend);
	}
	
	public Page<BonusSend> findPage(Page<BonusSend> page, BonusSend bonusSend) {
		return super.findPage(page, bonusSend);
	}
	
	@Transactional(readOnly = false)
	public void save(BonusSend bonusSend) {
		super.save(bonusSend);
	}
	
	@Transactional(readOnly = false)
	public void delete(BonusSend bonusSend) {
		super.delete(bonusSend);
	}
	
	public Page<Classes> findPageByclasses(Page<Classes> page, Classes classes) {
		classes.setPage(page);
		page.setList(dao.findListByclasses(classes));
		return page;
	}
	
	
	
}