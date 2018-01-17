/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.trancrecord.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * trancRecordEntity
 * @author mxc
 * @version 2017-10-17
 */
public class TrancRecord extends DataEntity<TrancRecord> {
	
	private static final long serialVersionUID = 1L;
	private String jylx;		// 交易类型
	private String fkfid;		// 付款方ID
	private String fkfname;		// 付款方
	private String skfid;		// 收款方ID
	private String skfname;		// 收款方
	private Double jine;		// 交易金额
	private String orderid;		// 订单ID
	
	public TrancRecord() {
		super();
	}

	public TrancRecord(String id){
		super(id);
	}

	@ExcelField(title="交易类型", dictType="tranc_record_jylx", align=2, sort=1)
	public String getJylx() {
		return jylx;
	}

	public void setJylx(String jylx) {
		this.jylx = jylx;
	}
	
	public String getFkfid() {
		return fkfid;
	}

	public void setFkfid(String fkfid) {
		this.fkfid = fkfid;
	}
	
	@ExcelField(title="付款方", align=2, sort=3)
	public String getFkfname() {
		return fkfname;
	}

	public void setFkfname(String fkfname) {
		this.fkfname = fkfname;
	}
	
	public String getSkfid() {
		return skfid;
	}

	public void setSkfid(String skfid) {
		this.skfid = skfid;
	}
	
	@ExcelField(title="收款方", align=2, sort=5)
	public String getSkfname() {
		return skfname;
	}

	public void setSkfname(String skfname) {
		this.skfname = skfname;
	}
	
	@ExcelField(title="交易金额（元）", align=2, sort=6)
	public Double getJine() {
		return jine;
	}

	public void setJine(Double jine) {
		this.jine = jine;
	}
	
	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	
}