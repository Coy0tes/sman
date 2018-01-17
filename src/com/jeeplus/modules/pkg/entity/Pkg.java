/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.pkg.entity;

import javax.validation.constraints.NotNull;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * pkgEntity
 * @author mxc
 * @version 2017-10-15
 */
public class Pkg extends DataEntity<Pkg> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 名称
	private String pkgtype;		// 类型
	private String imgurl;		// 套餐图片
	private String description;		// 使用说明
	private Double price;		// 金额
	private Integer maxusenum;		// 最大使用次数
	private Double maxuserange;		// 最大使用范围(千米)
	private Integer maxbuynum;		// 每月最大购卡次数
	
	public Pkg() {
		super();
	}

	public Pkg(String id){
		super(id);
	}

	@ExcelField(title="名称", align=2, sort=1)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@ExcelField(title="类型", dictType="package_pkgtype", align=2, sort=2)
	public String getPkgtype() {
		return pkgtype;
	}

	public void setPkgtype(String pkgtype) {
		this.pkgtype = pkgtype;
	}
	
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@ExcelField(title="使用说明", align=2, sort=3)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@NotNull(message="金额不能为空")
	@ExcelField(title="金额", align=2, sort=4)
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
	
	@NotNull(message="最大使用次数不能为空")
	@ExcelField(title="最大使用次数", align=2, sort=5)
	public Integer getMaxusenum() {
		return maxusenum;
	}

	public void setMaxusenum(Integer maxusenum) {
		this.maxusenum = maxusenum;
	}
	
	@NotNull(message="最大使用范围(千米)不能为空")
	@ExcelField(title="最大使用范围(千米)", align=2, sort=6)
	public Double getMaxuserange() {
		return maxuserange;
	}

	public void setMaxuserange(Double maxuserange) {
		this.maxuserange = maxuserange;
	}
	
	@NotNull(message="每月最大购卡次数不能为空")
	@ExcelField(title="每月最大购卡次数", align=2, sort=7)
	public Integer getMaxbuynum() {
		return maxbuynum;
	}

	public void setMaxbuynum(Integer maxbuynum) {
		this.maxbuynum = maxbuynum;
	}
	
}