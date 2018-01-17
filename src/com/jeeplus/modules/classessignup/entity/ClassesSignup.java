/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classessignup.entity;

import java.util.List;
import com.google.common.collect.Lists;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * classesSignupEntity
 * @author mxc
 * @version 2017-10-15
 */
public class ClassesSignup extends DataEntity<ClassesSignup> {
	
	private static final long serialVersionUID = 1L;
	private String bmbh;		// 报名编号
	private String bmr;		// 报名人ID
	private String bmrname;		// 报名人
	private String classesid;		// 报名班级ID
	private String classesname;		// 报名班级
	private String ksrq;		// 开始日期
	private Integer bmzs;		// 报名周数
	private String lxsj;		// 联系手机
	private Double qyj;		// 契约金
	private Double yedk;		// 余额抵扣
	private Double sjynqyj;		// 实际缴纳契约金
	private List<ClassesSignupWeeks> classesSignupWeeksList = Lists.newArrayList();		// 子表列表
	
	public ClassesSignup() {
		super();
	}

	public ClassesSignup(String id){
		super(id);
	}

	@ExcelField(title="报名编号", align=2, sort=1)
	public String getBmbh() {
		return bmbh;
	}

	public void setBmbh(String bmbh) {
		this.bmbh = bmbh;
	}
	
	public String getBmr() {
		return bmr;
	}

	public void setBmr(String bmr) {
		this.bmr = bmr;
	}
	
	@ExcelField(title="报名人", align=2, sort=3)
	public String getBmrname() {
		return bmrname;
	}

	public void setBmrname(String bmrname) {
		this.bmrname = bmrname;
	}
	
	public String getClassesid() {
		return classesid;
	}

	public void setClassesid(String classesid) {
		this.classesid = classesid;
	}
	
	@ExcelField(title="报名班级", align=2, sort=5)
	public String getClassesname() {
		return classesname;
	}

	public void setClassesname(String classesname) {
		this.classesname = classesname;
	}
	
	@ExcelField(title="开始日期", align=2, sort=6)
	public String getKsrq() {
		return ksrq;
	}

	public void setKsrq(String ksrq) {
		this.ksrq = ksrq;
	}
	
	@ExcelField(title="报名周数", align=2, sort=7)
	public Integer getBmzs() {
		return bmzs;
	}

	public void setBmzs(Integer bmzs) {
		this.bmzs = bmzs;
	}
	
	@ExcelField(title="联系手机", align=2, sort=8)
	public String getLxsj() {
		return lxsj;
	}

	public void setLxsj(String lxsj) {
		this.lxsj = lxsj;
	}
	
	@ExcelField(title="契约金", align=2, sort=9)
	public Double getQyj() {
		return qyj;
	}

	public void setQyj(Double qyj) {
		this.qyj = qyj;
	}
	
	@ExcelField(title="余额抵扣", align=2, sort=10)
	public Double getYedk() {
		return yedk;
	}

	public void setYedk(Double yedk) {
		this.yedk = yedk;
	}
	
	@ExcelField(title="实际缴纳契约金", align=2, sort=11)
	public Double getSjynqyj() {
		return sjynqyj;
	}

	public void setSjynqyj(Double sjynqyj) {
		this.sjynqyj = sjynqyj;
	}
	
	public List<ClassesSignupWeeks> getClassesSignupWeeksList() {
		return classesSignupWeeksList;
	}

	public void setClassesSignupWeeksList(List<ClassesSignupWeeks> classesSignupWeeksList) {
		this.classesSignupWeeksList = classesSignupWeeksList;
	}
}