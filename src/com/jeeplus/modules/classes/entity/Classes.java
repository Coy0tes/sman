/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classes.entity;

import javax.validation.constraints.NotNull;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * classesEntity
 * @author mxc
 * @version 2017-10-15
 */
public class Classes extends DataEntity<Classes> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 班级名称
	private String imgurl;		// 跑班头像
	private String classtype;		// 班级类型
	private String mrgls;		// 每日公里数
	private String mzcq;		// 每周出勤
	private String mrqyj;		// 每日契约金
	private Double moneypool;		// 奖金池
	
	public Classes() {
		super();
	}

	public Classes(String id){
		super(id);
	}

	@ExcelField(title="班级名称", align=2, sort=1)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	
	@ExcelField(title="班级类型", dictType="classes_classtype", align=2, sort=3)
	public String getClasstype() {
		return classtype;
	}

	public void setClasstype(String classtype) {
		this.classtype = classtype;
	}
	
	@ExcelField(title="每日公里数（km）", align=2, sort=4)
	public String getMrgls() {
		return mrgls;
	}

	public void setMrgls(String mrgls) {
		this.mrgls = mrgls;
	}
	
	@ExcelField(title="每周出勤（周/次）", align=2, sort=5)
	public String getMzcq() {
		return mzcq;
	}

	public void setMzcq(String mzcq) {
		this.mzcq = mzcq;
	}
	
	@ExcelField(title="每日契约金（元）", align=2, sort=6)
	public String getMrqyj() {
		return mrqyj;
	}

	public void setMrqyj(String mrqyj) {
		this.mrqyj = mrqyj;
	}
	
	@NotNull(message="奖金池不能为空")
	@ExcelField(title="奖金池", align=2, sort=7)
	public Double getMoneypool() {
		return moneypool;
	}

	public void setMoneypool(Double moneypool) {
		this.moneypool = moneypool;
	}
	
}