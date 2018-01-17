/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.code.entity;

import com.jeeplus.modules.member.entity.Member;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * codeEntity
 * @author mxc
 * @version 2017-10-16
 */
public class Code extends DataEntity<Code> {
	
	private static final long serialVersionUID = 1L;
	private String code;		// 兑换码
	private String ffrqq;		// 发放日期起
	private String ffrqz;		// 发放日期止
	private String yxrqq;		// 有效日期起
	private String yxrqz;		// 有效日期止
	private String status;		// 状态
	private Member member;		// 领用人
	private String lysj;		// 领用时间
	private String sysj;		// 使用时间
	private String orderid;		// 订单ID
	private String lyr;	// 	领用人
	private String codenum;		// 批量添加数量
	
	public Code() {
		super();
	}

	public Code(String id){
		super(id);
	}

	@ExcelField(title="兑换码", align=2, sort=1)
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	@ExcelField(title="发放日期起", align=2, sort=2)
	public String getFfrqq() {
		return ffrqq;
	}

	public void setFfrqq(String ffrqq) {
		this.ffrqq = ffrqq;
	}
	
	@ExcelField(title="发放日期止", align=2, sort=3)
	public String getFfrqz() {
		return ffrqz;
	}

	public void setFfrqz(String ffrqz) {
		this.ffrqz = ffrqz;
	}
	
	@ExcelField(title="有效日期起", align=2, sort=4)
	public String getYxrqq() {
		return yxrqq;
	}

	public void setYxrqq(String yxrqq) {
		this.yxrqq = yxrqq;
	}
	
	@ExcelField(title="有效日期止", align=2, sort=5)
	public String getYxrqz() {
		return yxrqz;
	}

	public void setYxrqz(String yxrqz) {
		this.yxrqz = yxrqz;
	}
	
	@ExcelField(title="状态", dictType="code_status_isstatus", align=2, sort=6)
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
	@ExcelField(title="领用时间", align=2, sort=8)
	public String getLysj() {
		return lysj;
	}

	public void setLysj(String lysj) {
		this.lysj = lysj;
	}
	
	@ExcelField(title="使用时间", align=2, sort=9)
	public String getSysj() {
		return sysj;
	}

	public void setSysj(String sysj) {
		this.sysj = sysj;
	}
	
	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	@ExcelField(title="领用人", align=2, sort=7)
	public String getLyr() {
		return lyr;
	}

	public void setLyr(String lyr) {
		this.lyr = lyr;
	}

	public String getCodenum() {
		return codenum;
	}

	public void setCodenum(String codenum) {
		this.codenum = codenum;
	}
	
	
}