/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.withdraw.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * withdrawEntity
 * @author mxc
 * @version 2017-10-17
 */
public class Withdraw extends DataEntity<Withdraw> {
	
	private static final long serialVersionUID = 1L;
	private String sqrid;		// 申请人ID
	private String sqrname;		// 申请人
	private Double jine;		// 提现金额
	private String shzt;		// 审核状态
	private String shrid;		// 审核人id
	private String shrname;		// 审核人name
	private String shsj;		// 审核时间
	private String shbtgyy;		// 审核不通过原因
	private String lqzt;		// 领取状态
	private String lqsj;		// 领取时间
	
	public Withdraw() {
		super();
	}

	public Withdraw(String id){
		super(id);
	}

	public String getSqrid() {
		return sqrid;
	}

	public void setSqrid(String sqrid) {
		this.sqrid = sqrid;
	}
	
	@ExcelField(title="申请人", align=2, sort=1)
	public String getSqrname() {
		return sqrname;
	}

	public void setSqrname(String sqrname) {
		this.sqrname = sqrname;
	}
	
	@ExcelField(title="提现金额", align=2, sort=2)
	public Double getJine() {
		return jine;
	}

	public void setJine(Double jine) {
		this.jine = jine;
	}
	
	@ExcelField(title="审核状态", dictType="withdraw_shzt", align=2, sort=3)
	public String getShzt() {
		return shzt;
	}

	public void setShzt(String shzt) {
		this.shzt = shzt;
	}
	
	public String getShrid() {
		return shrid;
	}

	public void setShrid(String shrid) {
		this.shrid = shrid;
	}

	@ExcelField(title="审核人", align=2, sort=4)
	public String getShrname() {
		return shrname;
	}

	public void setShrname(String shrname) {
		this.shrname = shrname;
	}

	@ExcelField(title="审核时间", align=2, sort=5)
	public String getShsj() {
		return shsj;
	}

	public void setShsj(String shsj) {
		this.shsj = shsj;
	}
	
	@ExcelField(title="审核不通过原因", align=2, sort=6)
	public String getShbtgyy() {
		return shbtgyy;
	}

	public void setShbtgyy(String shbtgyy) {
		this.shbtgyy = shbtgyy;
	}
	
	@ExcelField(title="领取状态", dictType="withdraw_lqzt", align=2, sort=7)
	public String getLqzt() {
		return lqzt;
	}

	public void setLqzt(String lqzt) {
		this.lqzt = lqzt;
	}
	
	@ExcelField(title="领取时间", align=2, sort=8)
	public String getLqsj() {
		return lqsj;
	}

	public void setLqsj(String lqsj) {
		this.lqsj = lqsj;
	}
	
}