/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classessignup.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * classesSignupEntity
 * @author mxc
 * @version 2017-10-15
 */
public class ClassesSignupWeeks extends DataEntity<ClassesSignupWeeks> {
	
	private static final long serialVersionUID = 1L;
	private ClassesSignup mainid;		// 报名id
	private String weektype;		// 周类型
	private Integer weeks;		// 周数
	private String weekbegin;		// 开始日期
	private String weekend;		// 截止日期
	private Double dkts;		// 每周打卡天数
	
	public ClassesSignupWeeks() {
		super();
	}

	public ClassesSignupWeeks(String id){
		super(id);
	}

	public ClassesSignupWeeks(ClassesSignup classesSignup) {
		this.mainid = classesSignup;
	}

	@ExcelField(title="报名id", align=2, sort=1)
	public ClassesSignup getMainid() {
		return mainid;
	}

	public void setMainid(ClassesSignup mainid) {
		this.mainid = mainid;
	}
	
	@ExcelField(title="周类型", align=2, sort=2)
	public String getWeektype() {
		return weektype;
	}

	public void setWeektype(String weektype) {
		this.weektype = weektype;
	}
	
	@ExcelField(title="周数", align=2, sort=3)
	public Integer getWeeks() {
		return weeks;
	}

	public void setWeeks(Integer weeks) {
		this.weeks = weeks;
	}
	
	@ExcelField(title="开始日期", align=2, sort=4)
	public String getWeekbegin() {
		return weekbegin;
	}

	public void setWeekbegin(String weekbegin) {
		this.weekbegin = weekbegin;
	}
	
	@ExcelField(title="截止日期", align=2, sort=5)
	public String getWeekend() {
		return weekend;
	}

	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	
	@ExcelField(title="每周打卡天数", align=2, sort=6)
	public Double getDkts() {
		return dkts;
	}

	public void setDkts(Double dkts) {
		this.dkts = dkts;
	}
	
}