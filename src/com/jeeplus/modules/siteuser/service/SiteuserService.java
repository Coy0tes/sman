/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.siteuser.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.modules.site.entity.Site;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.modules.siteuser.entity.Siteuser;
import com.jeeplus.modules.siteuser.dao.SiteuserDao;
import com.jeeplus.modules.sys.utils.UserUtils;

/**
 * 场馆管理员Service
 * @author zhaoliangdong
 * @version 2017-10-15
 */
@Service
@Transactional(readOnly = true)
public class SiteuserService extends CrudService<SiteuserDao, Siteuser> {

	public Siteuser get(String id) {
		return UserUtils.getSiteUser(id);
	}
	
	public List<Siteuser> findList(Siteuser siteuser) {
		return super.findList(siteuser);
	}
	
	public Page<Siteuser> findPage(Page<Siteuser> page, Siteuser siteuser) {
		return super.findPage(page, siteuser);
	}
	
	@Transactional(readOnly = false)
	public void save(Siteuser siteuser) {
		super.save(siteuser);
	}
	
	@Transactional(readOnly = false)
	public void delete(Siteuser siteuser) {
		super.delete(siteuser);
	}
	
	public Page<Site> findPageBysite(Page<Site> page, Site site) {
		site.setPage(page);
		page.setList(dao.findListBysite(site));
		return page;
	}

	@Transactional(readOnly = false)
	public String saveUser(Siteuser user) {
		String msg = "保存账号成功";
		if (StringUtils.isBlank(user.getId())){
			user.preInsert();
			dao.insert(user);
		}else{
			// 更新用户数据
			user.preUpdate();
			dao.update(user);
		}
		if (StringUtils.isNotBlank(user.getId())){
			// 更新用户与角色关联
			dao.deleteUserRole(user);
			dao.insertUserRole(user);
		}
		
		// 清除用户缓存
		UserUtils.clearCache(user);
		
		return msg;
	}
	
	
	
}