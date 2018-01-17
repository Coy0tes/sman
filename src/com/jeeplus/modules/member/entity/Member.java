/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.member.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 会员管理Entity
 * @author zhaoliangdong
 * @version 2017-10-15
 */
public class Member extends DataEntity<Member> {
	
	private static final long serialVersionUID = 1L;
	private String wxopenid;		// 微信Openid
	private String loginName;		// 用户名
	private String password;		// 密码
	private String name;		// 姓名
	private Double yue;			// 帐号余额
	private String headimgurl;		// 头像
	private String nickname;		// 昵称
	private String gztime;		// 关注时间
	private String qxgztime;		// 取消关注时间
	private String newPassword;	// 新密码
	
	public Member() {
		super();
	}

	public Member(String id){
		super(id);
	}

	@ExcelField(title="微信Openid", align=2, sort=1)
	public String getWxopenid() {
		return wxopenid;
	}

	public void setWxopenid(String wxopenid) {
		this.wxopenid = wxopenid;
	}
	
	@ExcelField(title="用户名", align=2, sort=2)
	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@ExcelField(title="姓名", align=2, sort=4)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@ExcelField(title="帐号余额", align=2, sort=5)
	public String getHeadimgurl() {
		return headimgurl;
	}

	public Double getYue() {
		return yue;
	}

	public void setYue(Double yue) {
		this.yue = yue;
	}

	public void setHeadimgurl(String headimgurl) {
		this.headimgurl = headimgurl;
	}
	
	@ExcelField(title="昵称", align=2, sort=6)
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@ExcelField(title="关注时间", align=2, sort=7)
	public String getGztime() {
		return gztime;
	}

	public void setGztime(String gztime) {
		this.gztime = gztime;
	}
	
	@ExcelField(title="取消关注时间", align=2, sort=8)
	public String getQxgztime() {
		return qxgztime;
	}

	public void setQxgztime(String qxgztime) {
		this.qxgztime = qxgztime;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
}