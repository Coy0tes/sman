/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.siteremark.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * siteRemarkEntity
 * @author mxc
 * @version 2017-10-17
 */
public class SiteRemark extends DataEntity<SiteRemark> {
	
	private static final long serialVersionUID = 1L;
	private String memberid;		// 评价人ID
	private String membername;		// 评价人姓名
	private String contents;		// 评价内容
	private String siteid;		// 场馆名称id
	private String sitename;	// 场馆名称
	private String shzt;		// 审核通过
	private String shrid;		// 审核人ID
	private String shrname;		// 审核人
	private String shsj;		// 审核时间
	private String shbtgyy;		// 审核不通过原因
	
	public SiteRemark() {
		super();
	}

	public SiteRemark(String id){
		super(id);
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	
	@ExcelField(title="评价人姓名", align=2, sort=2)
	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}
	
	@ExcelField(title="评价内容", align=2, sort=3)
	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public String getSiteid() {
		return siteid;
	}

	public void setSiteid(String siteid) {
		this.siteid = siteid;
	}
	
	@ExcelField(title="场馆名称", align=2, sort=4)
	public String getSitename() {
		return sitename;
	}

	public void setSitename(String sitename) {
		this.sitename = sitename;
	}

	@ExcelField(title="审核通过", dictType="withdraw_shzt", align=2, sort=5)
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
	
	@ExcelField(title="审核人", align=2, sort=7)
	public String getShrname() {
		return shrname;
	}

	public void setShrname(String shrname) {
		this.shrname = shrname;
	}
	
	@ExcelField(title="审核时间", align=2, sort=8)
	public String getShsj() {
		return shsj;
	}

	public void setShsj(String shsj) {
		this.shsj = shsj;
	}
	
	@ExcelField(title="审核不通过原因", align=2, sort=9)
	public String getShbtgyy() {
		return shbtgyy;
	}

	public void setShbtgyy(String shbtgyy) {
		this.shbtgyy = shbtgyy;
	}
	
}