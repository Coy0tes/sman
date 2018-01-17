/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.member.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.member.entity.Member;

/**
 * 会员管理DAO接口
 * @author zhaoliangdong
 * @version 2017-10-15
 */
@MyBatisDao
public interface MemberDao extends CrudDao<Member> {

	void resetPassword(Member member);

	
}