/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.card.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.modules.pkg.entity.Pkg;
import com.jeeplus.modules.member.entity.Member;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.card.entity.Card;
import com.jeeplus.modules.card.dao.CardDao;

/**
 * cardService
 * @author mxc
 * @version 2017-10-16
 */
@Service
@Transactional(readOnly = true)
public class CardService extends CrudService<CardDao, Card> {

	public Card get(String id) {
		return super.get(id);
	}
	
	public List<Card> findList(Card card) {
		return super.findList(card);
	}
	
	public Page<Card> findPage(Page<Card> page, Card card) {
		return super.findPage(page, card);
	}
	
	@Transactional(readOnly = false)
	public void save(Card card) {
		super.save(card);
	}
	
	@Transactional(readOnly = false)
	public void delete(Card card) {
		super.delete(card);
	}
	
	public Page<Pkg> findPageBypkg(Page<Pkg> page, Pkg pkg) {
		pkg.setPage(page);
		page.setList(dao.findListBypkg(pkg));
		return page;
	}
	public Page<Member> findPageBymemebr(Page<Member> page, Member memebr) {
		memebr.setPage(page);
		page.setList(dao.findListBymemebr(memebr));
		return page;
	}
	
	
	
}