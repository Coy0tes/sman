/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.appointrecord.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 预约管理Entity
 * @author zhaoliangdong
 * @version 2017-10-16
 */
public class AppointRecord extends DataEntity<AppointRecord> {
	
	private static final long serialVersionUID = 1L;
	private String yybh;		// 预约号
	private String yyr;		// 预约人ID
	private String yyrname;		// 预约人
	private String yyrdh;		// 预约人电话
	private String cardid;		// 预约卡
	private String siteid;		// 预约场馆ID
	private String sitename;		// 预约场馆
	private String yysj;		// 预约时间
	private String yyqrcode;		// 预约二维码
	private String status;		// 预约状态
	private String sysj;		// 使用时间
	
	private String cardbh;
	
	public AppointRecord() {
		super();
	}

	public AppointRecord(String id){
		super(id);
	}

	@ExcelField(title="预约号", align=2, sort=1)
	public String getYybh() {
		return yybh;
	}

	public void setYybh(String yybh) {
		this.yybh = yybh;
	}
	
	public String getYyr() {
		return yyr;
	}

	public void setYyr(String yyr) {
		this.yyr = yyr;
	}
	
	@ExcelField(title="预约人", align=2, sort=3)
	public String getYyrname() {
		return yyrname;
	}

	public void setYyrname(String yyrname) {
		this.yyrname = yyrname;
	}
	
	@ExcelField(title="预约人电话", align=2, sort=4)
	public String getYyrdh() {
		return yyrdh;
	}

	public void setYyrdh(String yyrdh) {
		this.yyrdh = yyrdh;
	}

	public String getCardid() {
		return cardid;
	}

	public void setCardid(String cardid) {
		this.cardid = cardid;
	}
	
	public String getSiteid() {
		return siteid;
	}

	public void setSiteid(String siteid) {
		this.siteid = siteid;
	}
	
	@ExcelField(title="预约场馆", align=2, sort=6)
	public String getSitename() {
		return sitename;
	}

	public void setSitename(String sitename) {
		this.sitename = sitename;
	}
	
	@ExcelField(title="预约时间", align=2, sort=7)
	public String getYysj() {
		return yysj;
	}

	public void setYysj(String yysj) {
		this.yysj = yysj;
	}
	
	public String getYyqrcode() {
		return yyqrcode;
	}

	public void setYyqrcode(String yyqrcode) {
		this.yyqrcode = yyqrcode;
	}
	
	@ExcelField(title="预约状态", dictType="appointstatus", align=2, sort=9)
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@ExcelField(title="使用时间", align=2, sort=10)
	public String getSysj() {
		return sysj;
	}

	public void setSysj(String sysj) {
		this.sysj = sysj;
	}

	@ExcelField(title="预约卡", align=2, sort=4)
	public String getCardbh() {
		return cardbh;
	}

	public void setCardbh(String cardbh) {
		this.cardbh = cardbh;
	}
	
}