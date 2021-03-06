/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.siteuser.entity;

import java.util.List;

import com.google.common.collect.Lists;
import com.jeeplus.modules.site.entity.Site;
import com.jeeplus.modules.sys.entity.Role;

import javax.validation.constraints.NotNull;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 场馆管理员Entity
 * @author zhaoliangdong
 * @version 2017-10-15
 */
public class Siteuser extends DataEntity<Siteuser> {
	
	private static final long serialVersionUID = 1L;
	private Site site;		// 场馆
	private String loginName;		// 登录名
	private String password;		// 密码
	private String name;		// 姓名
	private String phone;		// 电话
	private String email;		// 邮箱
	private String photo;		// 用户头像
	private String userStatus;		// 用户状态
	private String userType;
	
	private String newPassword;	// 新密码
	private String sitename;
	private Role role;	// 根据角色查询用户条件
	private List<Role> roleList = Lists.newArrayList(); // 拥有角色列表
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	public List<String> getRoleIdList() {
		List<String> roleIdList = Lists.newArrayList();
		for (Role role : roleList) {
			if(role != null){
				roleIdList.add(role.getId());
			}
		}
		return roleIdList;
	}

	public void setRoleIdList(List<String> roleIdList) {
		roleList = Lists.newArrayList();
		if(roleIdList != null){
			for (String roleId : roleIdList) {
				Role role = new Role();
				role.setId(roleId);
				roleList.add(role);
			}
		}
	}
	
	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
	
	public String getSitename() {
		return sitename;
	}

	public void setSitename(String sitename) {
		this.sitename = sitename;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	public Siteuser() {
		super();
	}

	public Siteuser(String id){
		super(id);
	}

	@NotNull(message="场馆不能为空")
	@ExcelField(title="场馆", align=2, sort=1)
	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}
	
	@ExcelField(title="登录名", align=2, sort=2)
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
	
	@ExcelField(title="电话", align=2, sort=5)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@ExcelField(title="邮箱", align=2, sort=6)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@ExcelField(title="用户状态", dictType="user_status", align=2, sort=14)
	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
}