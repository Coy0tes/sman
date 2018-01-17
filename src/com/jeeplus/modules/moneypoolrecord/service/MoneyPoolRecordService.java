/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.moneypoolrecord.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.modules.classes.entity.Classes;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.moneypoolrecord.entity.MoneyPoolRecord;
import com.jeeplus.modules.moneypoolrecord.dao.MoneyPoolRecordDao;

/**
 * 奖金池记录Service
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@Service
@Transactional(readOnly = true)
public class MoneyPoolRecordService extends CrudService<MoneyPoolRecordDao, MoneyPoolRecord> {

	public MoneyPoolRecord get(String id) {
		return super.get(id);
	}
	
	public List<MoneyPoolRecord> findList(MoneyPoolRecord moneyPoolRecord) {
		return super.findList(moneyPoolRecord);
	}
	
	public Page<MoneyPoolRecord> findPage(Page<MoneyPoolRecord> page, MoneyPoolRecord moneyPoolRecord) {
		return super.findPage(page, moneyPoolRecord);
	}
	
	@Transactional(readOnly = false)
	public void save(MoneyPoolRecord moneyPoolRecord) {
		super.save(moneyPoolRecord);
	}
	
	@Transactional(readOnly = false)
	public void delete(MoneyPoolRecord moneyPoolRecord) {
		super.delete(moneyPoolRecord);
	}
	
	public Page<Classes> findPageByclasses(Page<Classes> page, Classes classes) {
		classes.setPage(page);
		page.setList(dao.findListByclasses(classes));
		return page;
	}
	
	
	
}