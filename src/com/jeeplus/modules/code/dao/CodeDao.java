/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.code.dao;

import java.util.List;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.code.entity.Code;
import com.jeeplus.modules.member.entity.Member;

/**
 * codeDAO接口
 * @author mxc
 * @version 2017-10-14
 */
@MyBatisDao
public interface CodeDao extends CrudDao<Code> {

	int findCode(Code code);

	List<Code> findListByCode(Code code);

	public List<Member> findListBymember(Member member);

}