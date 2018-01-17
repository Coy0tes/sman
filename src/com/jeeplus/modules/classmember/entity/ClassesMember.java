/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classmember.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * classMemberEntity
 * @author mxc
 * @version 2017-10-16
 */
public class ClassesMember extends DataEntity<ClassesMember> {
	
	private static final long serialVersionUID = 1L;
	private String memberid;		// 报名人id
	private String membername;		// 报名人
	private String classesid;		// 班级id
	private String classesname;		// 班级
	private String lxsj;		// 联系手机
	private String bmsj;		// 报名时间
	private Double yue;		// 账号余额
	private String signupid;		// 报名id
	
	public ClassesMember() {
		super();
	}

	public ClassesMember(String id){
		super(id);
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	
	@ExcelField(title="报名人", align=2, sort=2)
	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}
	
	public String getClassesid() {
		return classesid;
	}

	public void setClassesid(String classesid) {
		this.classesid = classesid;
	}
	
	@ExcelField(title="班级", align=2, sort=4)
	public String getClassesname() {
		return classesname;
	}

	public void setClassesname(String classesname) {
		this.classesname = classesname;
	}
	
	@ExcelField(title="联系手机", align=2, sort=5)
	public String getLxsj() {
		return lxsj;
	}

	public void setLxsj(String lxsj) {
		this.lxsj = lxsj;
	}
	
	@ExcelField(title="报名时间", align=2, sort=6)
	public String getBmsj() {
		return bmsj;
	}

	public void setBmsj(String bmsj) {
		this.bmsj = bmsj;
	}
	
	public Double getYue() {
		return yue;
	}

	public void setYue(Double yue) {
		this.yue = yue;
	}
	
	public String getSignupid() {
		return signupid;
	}

	public void setSignupid(String signupid) {
		this.signupid = signupid;
	}
	
}