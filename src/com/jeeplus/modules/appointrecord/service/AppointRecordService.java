/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.appointrecord.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.appointrecord.dao.AppointRecordDao;
import com.jeeplus.modules.appointrecord.entity.AppointRecord;
import com.jeeplus.modules.siteuser.entity.Siteuser;
import com.jeeplus.modules.sys.entity.User;
import com.jeeplus.modules.sys.utils.UserUtils;

/**
 * 预约管理Service
 * @author zhaoliangdong
 * @version 2017-10-16
 */
@Service
@Transactional(readOnly = true)
public class AppointRecordService extends CrudService<AppointRecordDao, AppointRecord> {

	public AppointRecord get(String id) {
		return super.get(id);
	}
	
	public List<AppointRecord> findList(AppointRecord appointRecord) {
		//数据权限
		User user = UserUtils.getUser();
		if(UserUtils.isSiteUser(user.getId())){
			Siteuser suser = UserUtils.getSiteUser(user.getId());
			appointRecord.setSiteid(suser.getSite().getId());
		}
		
		return super.findList(appointRecord);
	}
	
	public Page<AppointRecord> findPage(Page<AppointRecord> page, AppointRecord appointRecord) {
		//数据权限
		User user = UserUtils.getUser();
		if(UserUtils.isSiteUser(user.getId())){
			Siteuser suser = UserUtils.getSiteUser(user.getId());
			appointRecord.setSiteid(suser.getSite().getId());
		}
		
		return super.findPage(page, appointRecord);
	}
	
	@Transactional(readOnly = false)
	public void save(AppointRecord appointRecord) {
		super.save(appointRecord);
	}
	
	@Transactional(readOnly = false)
	public void delete(AppointRecord appointRecord) {
		super.delete(appointRecord);
	}
	
	
	
	
}