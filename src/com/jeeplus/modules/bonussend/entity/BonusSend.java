/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bonussend.entity;

import  com.jeeplus.modules.classes.entity.Classes;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 奖金发放记录Entity
 * @author zhaoliangdong
 * @version 2017-10-18
 */
public class BonusSend extends DataEntity<BonusSend> {
	
	private static final long serialVersionUID = 1L;
	private Classes classes;		// 班级
	private String ffrid;		// 发放人ID
	private String ffrname;		// 发放人
	private Double jine;		// 发放金额
	private String trancid;		// 交易记录ID
	
	private String weekbegin;
	private String weekend;
	
	private String ffsj;
	
	public BonusSend() {
		super();
	}

	public BonusSend(String id){
		super(id);
	}

	@ExcelField(title="班级", align=2, sort=1)
	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	
	public String getFfrid() {
		return ffrid;
	}

	public void setFfrid(String ffrid) {
		this.ffrid = ffrid;
	}
	
	@ExcelField(title="发放人", align=2, sort=3)
	public String getFfrname() {
		return ffrname;
	}

	public void setFfrname(String ffrname) {
		this.ffrname = ffrname;
	}
	
	@ExcelField(title="发放金额", align=2, sort=4)
	public Double getJine() {
		return jine;
	}

	public void setJine(Double jine) {
		this.jine = jine;
	}
	
	public String getTrancid() {
		return trancid;
	}

	public void setTrancid(String trancid) {
		this.trancid = trancid;
	}

	@ExcelField(title="发放时间", align=2, sort=5)
	public String getFfsj() {
		return ffsj;
	}

	public void setFfsj(String ffsj) {
		this.ffsj = ffsj;
	}

	@ExcelField(title="周日期起", align=2, sort=6)
	public String getWeekbegin() {
		return weekbegin;
	}

	public void setWeekbegin(String weekbegin) {
		this.weekbegin = weekbegin;
	}

	@ExcelField(title="周日期止", align=2, sort=7)
	public String getWeekend() {
		return weekend;
	}

	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	
}