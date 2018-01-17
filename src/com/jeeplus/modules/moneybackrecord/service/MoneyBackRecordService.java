/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.moneybackrecord.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.modules.classes.entity.Classes;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.moneybackrecord.entity.MoneyBackRecord;
import com.jeeplus.modules.moneybackrecord.dao.MoneyBackRecordDao;

/**
 * 契约金返还记录Service
 * @author zhaoliangdong
 * @version 2017-10-18
 */
@Service
@Transactional(readOnly = true)
public class MoneyBackRecordService extends CrudService<MoneyBackRecordDao, MoneyBackRecord> {

	public MoneyBackRecord get(String id) {
		return super.get(id);
	}
	
	public List<MoneyBackRecord> findList(MoneyBackRecord moneyBackRecord) {
		return super.findList(moneyBackRecord);
	}
	
	public Page<MoneyBackRecord> findPage(Page<MoneyBackRecord> page, MoneyBackRecord moneyBackRecord) {
		return super.findPage(page, moneyBackRecord);
	}
	
	@Transactional(readOnly = false)
	public void save(MoneyBackRecord moneyBackRecord) {
		super.save(moneyBackRecord);
	}
	
	@Transactional(readOnly = false)
	public void delete(MoneyBackRecord moneyBackRecord) {
		super.delete(moneyBackRecord);
	}
	
	public Page<Classes> findPageByclasses(Page<Classes> page, Classes classes) {
		classes.setPage(page);
		page.setList(dao.findListByclasses(classes));
		return page;
	}
	
	
	
}