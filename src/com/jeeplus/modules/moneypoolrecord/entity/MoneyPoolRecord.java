/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.moneypoolrecord.entity;

import com.jeeplus.modules.classes.entity.Classes;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 奖金池记录Entity
 * @author zhaoliangdong
 * @version 2017-10-18
 */
public class MoneyPoolRecord extends DataEntity<MoneyPoolRecord> {
	
	private static final long serialVersionUID = 1L;
	private Classes classes;		// 班级
	private String weekbegin;		// 周日期起
	private String weekend;		// 周日期止
	private Integer zypts;		// 总应跑天数
	private Integer zlpts;		// 总漏跑天数
	private Double mrqyj;		// 每日契约金
	private Double jjcje;		// 奖金池金额
	private String trancid;		// 交易流水ID
	
	public MoneyPoolRecord() {
		super();
	}

	public MoneyPoolRecord(String id){
		super(id);
	}

	@ExcelField(title="班级", align=2, sort=1)
	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	
	@ExcelField(title="周日期起", align=2, sort=2)
	public String getWeekbegin() {
		return weekbegin;
	}

	public void setWeekbegin(String weekbegin) {
		this.weekbegin = weekbegin;
	}
	
	@ExcelField(title="周日期止", align=2, sort=3)
	public String getWeekend() {
		return weekend;
	}

	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	
	@ExcelField(title="总应跑天数", align=2, sort=4)
	public Integer getZypts() {
		return zypts;
	}

	public void setZypts(Integer zypts) {
		this.zypts = zypts;
	}
	
	@ExcelField(title="总漏跑天数", align=2, sort=5)
	public Integer getZlpts() {
		return zlpts;
	}

	public void setZlpts(Integer zlpts) {
		this.zlpts = zlpts;
	}
	
	@ExcelField(title="每日契约金", align=2, sort=6)
	public Double getMrqyj() {
		return mrqyj;
	}

	public void setMrqyj(Double mrqyj) {
		this.mrqyj = mrqyj;
	}
	
	@ExcelField(title="奖金池金额", align=2, sort=7)
	public Double getJjcje() {
		return jjcje;
	}

	public void setJjcje(Double jjcje) {
		this.jjcje = jjcje;
	}
	
	public String getTrancid() {
		return trancid;
	}

	public void setTrancid(String trancid) {
		this.trancid = trancid;
	}
	
}