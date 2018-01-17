/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.moneybackrecord.entity;

import com.jeeplus.modules.classes.entity.Classes;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 契约金返还记录Entity
 * @author zhaoliangdong
 * @version 2017-10-18
 */
public class MoneyBackRecord extends DataEntity<MoneyBackRecord> {
	
	private static final long serialVersionUID = 1L;
	private String weekbegin;		// 周日期起
	private String weekend;		// 周日期止
	private String yprid;		// 约跑人ID
	private String yprname;		// 约跑人姓名
	private Classes classes;		// 约跑班级
	private Double fhqyj;		// 返还契约金
	private Integer ypts;		// 总应跑天数
	private Integer lpts;		// 总漏跑天数
	private Double mrqyj;		// 每日契约金
	private String trancid;		// 交易流水ID
	
	public MoneyBackRecord() {
		super();
	}

	public MoneyBackRecord(String id){
		super(id);
	}

	@ExcelField(title="周日期起", align=2, sort=1)
	public String getWeekbegin() {
		return weekbegin;
	}

	public void setWeekbegin(String weekbegin) {
		this.weekbegin = weekbegin;
	}
	
	@ExcelField(title="周日期止", align=2, sort=2)
	public String getWeekend() {
		return weekend;
	}

	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	
	public String getYprid() {
		return yprid;
	}

	public void setYprid(String yprid) {
		this.yprid = yprid;
	}
	
	@ExcelField(title="约跑人姓名", align=2, sort=4)
	public String getYprname() {
		return yprname;
	}

	public void setYprname(String yprname) {
		this.yprname = yprname;
	}
	
	@ExcelField(title="约跑班级", align=2, sort=5)
	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	
	@ExcelField(title="返还契约金", align=2, sort=6)
	public Double getFhqyj() {
		return fhqyj;
	}

	public void setFhqyj(Double fhqyj) {
		this.fhqyj = fhqyj;
	}
	
	@ExcelField(title="总应跑天数", align=2, sort=7)
	public Integer getYpts() {
		return ypts;
	}

	public void setYpts(Integer ypts) {
		this.ypts = ypts;
	}
	
	@ExcelField(title="总漏跑天数", align=2, sort=8)
	public Integer getLpts() {
		return lpts;
	}

	public void setLpts(Integer lpts) {
		this.lpts = lpts;
	}
	
	@ExcelField(title="每日契约金", align=2, sort=9)
	public Double getMrqyj() {
		return mrqyj;
	}

	public void setMrqyj(Double mrqyj) {
		this.mrqyj = mrqyj;
	}
	
	public String getTrancid() {
		return trancid;
	}

	public void setTrancid(String trancid) {
		this.trancid = trancid;
	}
	
}