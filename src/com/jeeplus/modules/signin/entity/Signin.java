/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.signin.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * signinEntity
 * @author mxc
 * @version 2017-10-18
 */
public class Signin extends DataEntity<Signin> {
	
	private static final long serialVersionUID = 1L;
	private String dkrid;		// 打卡人ID
	private String dkrname;		// 打卡人
	private String imgurl;		// 打卡截图
	private Double pbjl;		// 跑步距离(千米）
	private Integer pbys;		// 跑步用时(分钟)
	private String shzt;		// 审核状态
	private String shrid;		// 审核人ID
	private String shrname;		// 审核人
	private String shsj;		// 审核时间
	private String shbtgyy;		// 审核不通过原因
	
	public Signin() {
		super();
	}

	public Signin(String id){
		super(id);
	}

	public String getDkrid() {
		return dkrid;
	}

	public void setDkrid(String dkrid) {
		this.dkrid = dkrid;
	}
	
	@ExcelField(title="打卡人", align=2, sort=1)
	public String getDkrname() {
		return dkrname;
	}

	public void setDkrname(String dkrname) {
		this.dkrname = dkrname;
	}
	
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	
	@ExcelField(title="跑步距离(千米）", align=2, sort=2)
	public Double getPbjl() {
		return pbjl;
	}

	public void setPbjl(Double pbjl) {
		this.pbjl = pbjl;
	}
	
	@ExcelField(title="跑步用时(分钟)", align=2, sort=3)
	public Integer getPbys() {
		return pbys;
	}

	public void setPbys(Integer pbys) {
		this.pbys = pbys;
	}
	
	@ExcelField(title="审核状态", dictType="withdraw_shzt", align=2, sort=4)
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
	
	@ExcelField(title="审核人", align=2, sort=5)
	public String getShrname() {
		return shrname;
	}

	public void setShrname(String shrname) {
		this.shrname = shrname;
	}
	
	@ExcelField(title="审核时间", align=2, sort=6)
	public String getShsj() {
		return shsj;
	}

	public void setShsj(String shsj) {
		this.shsj = shsj;
	}

	@ExcelField(title="审核时间", align=2, sort=7)
	public String getShbtgyy() {
		return shbtgyy;
	}

	public void setShbtgyy(String shbtgyy) {
		this.shbtgyy = shbtgyy;
	}
	
	
}