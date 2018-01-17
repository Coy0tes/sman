/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.cardconsumerecord.entity;

import com.jeeplus.modules.card.entity.Card;
import com.jeeplus.modules.site.entity.Site;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 套餐卡消费记录Entity
 * @author zhaoliangdong
 * @version 2017-10-18
 */
public class CardConsumeRecord extends DataEntity<CardConsumeRecord> {
	
	private static final long serialVersionUID = 1L;
	private String appointid;		// 预约ID
	private Card card;		// 卡ID
	private String syrid;		// 使用人ID
	private String syrname;		// 使用人
	private String sysj;		// 使用时间
	private Site site;		// 使用场馆
	private Integer cardsycs;		// 套餐卡剩余次数
	
	public CardConsumeRecord() {
		super();
	}

	public CardConsumeRecord(String id){
		super(id);
	}

	public String getAppointid() {
		return appointid;
	}

	public void setAppointid(String appointid) {
		this.appointid = appointid;
	}
	
	@ExcelField(title="卡号", align=2, sort=2)
	public Card getCard() {
		return card;
	}

	public void setCard(Card card) {
		this.card = card;
	}
	
	public String getSyrid() {
		return syrid;
	}

	public void setSyrid(String syrid) {
		this.syrid = syrid;
	}
	
	@ExcelField(title="使用人姓名", align=2, sort=4)
	public String getSyrname() {
		return syrname;
	}

	public void setSyrname(String syrname) {
		this.syrname = syrname;
	}
	
	@ExcelField(title="使用时间", align=2, sort=5)
	public String getSysj() {
		return sysj;
	}

	public void setSysj(String sysj) {
		this.sysj = sysj;
	}
	
	@ExcelField(title="使用场馆", align=2, sort=6)
	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}
	
	@ExcelField(title="套餐卡剩余次数", align=2, sort=7)
	public Integer getCardsycs() {
		return cardsycs;
	}

	public void setCardsycs(Integer cardsycs) {
		this.cardsycs = cardsycs;
	}
	
}