/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.order.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * orderEntity
 * @author mxc
 * @version 2017-10-16
 */
public class Orders extends DataEntity<Orders> {
	
	private static final long serialVersionUID = 1L;
	private String ddh;		// 订单号
	private String pkgid;		// 所属套餐
	private String gkr;		// 购卡人ID
	private String gkrname;		// 购卡人
	private String gkfs;		// 购卡方式
	private Double gklng;		// 购卡位置经度
	private Double gklat;		// 购卡位置纬度
	private String gklabel;		// 购卡位置名称
	private String gkdhm;		// 购卡兑换码
	private Double gkjine;		// 购卡金额
	private String orderstatus;		// 订单状态
	
	public Orders() {
		super();
	}

	public Orders(String id){
		super(id);
	}

	@ExcelField(title="订单号", align=2, sort=1)
	public String getDdh() {
		return ddh;
	}

	public void setDdh(String ddh) {
		this.ddh = ddh;
	}
	
	@ExcelField(title="所属套餐", align=2, sort=2)
	public String getPkgid() {
		return pkgid;
	}

	public void setPkgid(String pkgid) {
		this.pkgid = pkgid;
	}
	
	public String getGkr() {
		return gkr;
	}

	public void setGkr(String gkr) {
		this.gkr = gkr;
	}
	
	@ExcelField(title="购卡人", align=2, sort=4)
	public String getGkrname() {
		return gkrname;
	}

	public void setGkrname(String gkrname) {
		this.gkrname = gkrname;
	}
	
	@ExcelField(title="购卡方式",dictType="order_gkfs" , align=2, sort=5)
	public String getGkfs() {
		return gkfs;
	}

	public void setGkfs(String gkfs) {
		this.gkfs = gkfs;
	}
	
	@ExcelField(title="购卡位置经度", align=2, sort=6)
	public Double getGklng() {
		return gklng;
	}

	public void setGklng(Double gklng) {
		this.gklng = gklng;
	}
	
	@ExcelField(title="购卡位置纬度", align=2, sort=7)
	public Double getGklat() {
		return gklat;
	}

	public void setGklat(Double gklat) {
		this.gklat = gklat;
	}
	
	@ExcelField(title="购卡位置名称", align=2, sort=8)
	public String getGklabel() {
		return gklabel;
	}

	public void setGklabel(String gklabel) {
		this.gklabel = gklabel;
	}
	
	@ExcelField(title="购卡兑换码", align=2, sort=9)
	public String getGkdhm() {
		return gkdhm;
	}

	public void setGkdhm(String gkdhm) {
		this.gkdhm = gkdhm;
	}
	
	@ExcelField(title="购卡金额", align=2, sort=10)
	public Double getGkjine() {
		return gkjine;
	}

	public void setGkjine(Double gkjine) {
		this.gkjine = gkjine;
	}
	
	@ExcelField(title="订单状态", dictType="order_orderstatus", align=2, sort=11)
	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	
}