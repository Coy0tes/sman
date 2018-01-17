/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.trancrecord.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.trancrecord.entity.TrancRecord;
import com.jeeplus.modules.trancrecord.dao.TrancRecordDao;

/**
 * trancRecordService
 * @author mxc
 * @version 2017-10-17
 */
@Service
@Transactional(readOnly = true)
public class TrancRecordService extends CrudService<TrancRecordDao, TrancRecord> {

	public TrancRecord get(String id) {
		return super.get(id);
	}
	
	public List<TrancRecord> findList(TrancRecord trancRecord) {
		return super.findList(trancRecord);
	}
	
	public Page<TrancRecord> findPage(Page<TrancRecord> page, TrancRecord trancRecord) {
		return super.findPage(page, trancRecord);
	}
	
	@Transactional(readOnly = false)
	public void save(TrancRecord trancRecord) {
		super.save(trancRecord);
	}
	
	@Transactional(readOnly = false)
	public void delete(TrancRecord trancRecord) {
		super.delete(trancRecord);
	}
	
	
	
	
}