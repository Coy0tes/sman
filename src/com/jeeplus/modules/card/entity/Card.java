/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.card.entity;

import com.jeeplus.modules.pkg.entity.Pkg;
import com.jeeplus.modules.member.entity.Member;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * cardEntity
 * @author mxc
 * @version 2017-10-16
 */
public class Card extends DataEntity<Card> {
	
	private static final long serialVersionUID = 1L;
	private String cardbh;		// 卡号
	private Pkg pkg;		// 所属套餐
	private String packa;	// 所属套餐名字
	private String ckr;		// 持卡人ID
	private Member memebr;		// 持卡人
	private String ckrname;	// 持卡人名字
	private String gksj;		// 购卡时间
	private Double gkjine;		// 购卡金额
	private Integer maxusenum;		// 最大使用次数
	private Integer sycs;		// 剩余次数
	private Double maxuserange;		// 最大使用范围(千米)
	private Double gklng;		// 购卡位置经度
	private Double gklat;		// 购卡位置纬度
	private String gklabel;		// 购卡位置名称
	private String orderid;		// 所属订单
	
	public Card() {
		super();
	}

	public Card(String id){
		super(id);
	}

	@ExcelField(title="卡号", align=2, sort=1)
	public String getCardbh() {
		return cardbh;
	}

	public void setCardbh(String cardbh) {
		this.cardbh = cardbh;
	}
	
	public Pkg getPkg() {
		return pkg;
	}

	public void setPkg(Pkg pkg) {
		this.pkg = pkg;
	}
	
	@ExcelField(title="所属套餐", align=2, sort=2)
	public String getPacka() {
		return packa;
	}

	public void setPacka(String packa) {
		this.packa = packa;
	}

	public String getCkr() {
		return ckr;
	}

	public void setCkr(String ckr) {
		this.ckr = ckr;
	}
	
	@ExcelField(title="持卡人", align=2, sort=4)
	public String getCkrname() {
		return ckrname;
	}

	public void setCkrname(String ckrname) {
		this.ckrname = ckrname;
	}

	public Member getMemebr() {
		return memebr;
	}

	public void setMemebr(Member memebr) {
		this.memebr = memebr;
	}
	
	@ExcelField(title="购卡时间", align=2, sort=5)
	public String getGksj() {
		return gksj;
	}

	public void setGksj(String gksj) {
		this.gksj = gksj;
	}
	
	@ExcelField(title="购卡金额", align=2, sort=6)
	public Double getGkjine() {
		return gkjine;
	}

	public void setGkjine(Double gkjine) {
		this.gkjine = gkjine;
	}
	
	@ExcelField(title="最大使用次数", align=2, sort=7)
	public Integer getMaxusenum() {
		return maxusenum;
	}

	public void setMaxusenum(Integer maxusenum) {
		this.maxusenum = maxusenum;
	}
	
	@ExcelField(title="剩余次数", align=2, sort=8)
	public Integer getSycs() {
		return sycs;
	}

	public void setSycs(Integer sycs) {
		this.sycs = sycs;
	}
	
	@ExcelField(title="最大使用范围(千米)", align=2, sort=9)
	public Double getMaxuserange() {
		return maxuserange;
	}

	public void setMaxuserange(Double maxuserange) {
		this.maxuserange = maxuserange;
	}
	
	@ExcelField(title="购卡位置经度", align=2, sort=10)
	public Double getGklng() {
		return gklng;
	}

	public void setGklng(Double gklng) {
		this.gklng = gklng;
	}
	
	@ExcelField(title="购卡位置纬度", align=2, sort=11)
	public Double getGklat() {
		return gklat;
	}

	public void setGklat(Double gklat) {
		this.gklat = gklat;
	}
	
	@ExcelField(title="购卡位置名称", align=2, sort=12)
	public String getGklabel() {
		return gklabel;
	}

	public void setGklabel(String gklabel) {
		this.gklabel = gklabel;
	}
	
//	@ExcelField(title="所属订单", align=2, sort=13)
	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	
}