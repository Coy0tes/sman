/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.card.dao;

import com.jeeplus.modules.pkg.entity.Pkg;
import com.jeeplus.modules.member.entity.Member;
import java.util.List;
import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.card.entity.Card;

/**
 * cardDAO接口
 * @author mxc
 * @version 2017-10-16
 */
@MyBatisDao
public interface CardDao extends CrudDao<Card> {

	public List<Pkg> findListBypkg(Pkg pkg);
	public List<Member> findListBymemebr(Member memebr);
	
}