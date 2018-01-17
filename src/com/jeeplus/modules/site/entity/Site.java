/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.site.entity;

import com.jeeplus.modules.sitetype.entity.Sitetype;
import javax.validation.constraints.NotNull;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * 场馆管理Entity
 * @author zhaoliangdong
 * @version 2017-10-14
 */
public class Site extends DataEntity<Site> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 场馆名称
	private Sitetype sitetype;		// 场馆分类
	private String simg;		// 场馆图片
	private String mobile;		// 联系电话
	private Double longitude;		// 经度
	private Double latitude;		// 纬度
	private String label;		// 位置名称
	private String contents;		// 场馆简介
	private String devices;		// 场馆设备
	
	private String province;
	private String city;
	private String county;
	
	private String  orderoc;
	private int maxordernumday;
	private String noorderrqq;
	private String noorderrqz;
	
	public Site() {
		super();
	}

	public Site(String id){
		super(id);
	}

	@ExcelField(title="场馆名称", align=2, sort=1)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@NotNull(message="场馆分类不能为空")
	@ExcelField(title="场馆分类", align=2, sort=2)
	public Sitetype getSitetype() {
		return sitetype;
	}

	public void setSitetype(Sitetype sitetype) {
		this.sitetype = sitetype;
	}
	
	public String getSimg() {
		return simg;
	}

	public void setSimg(String simg) {
		this.simg = simg;
	}

	@ExcelField(title="联系电话", align=2, sort=3)
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	@ExcelField(title="经度", align=2, sort=4)
	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	
	@ExcelField(title="纬度", align=2, sort=5)
	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	
	@ExcelField(title="位置名称", align=2, sort=6)
	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
	
	@ExcelField(title="场馆简介", align=2, sort=7)
	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@ExcelField(title="场馆设备", dictType="sitedevices", align=2, sort=8)
	public String getDevices() {
		return devices;
	}

	public void setDevices(String devices) {
		this.devices = devices;
	}

	@ExcelField(title="省", align=2, sort=9)
	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	@ExcelField(title="市", align=2, sort=10)
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@ExcelField(title="区", align=2, sort=11)
	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	@ExcelField(title="是否允许预约",dictType="yes_no", align=2, sort=12)
	public String getOrderoc() {
		return orderoc;
	}

	public void setOrderoc(String orderoc) {
		this.orderoc = orderoc;
	}

	@ExcelField(title="最大日预约人数", align=2, sort=13)
	public int getMaxordernumday() {
		return maxordernumday;
	}

	public void setMaxordernumday(int maxordernumday) {
		this.maxordernumday = maxordernumday;
	}

	@ExcelField(title="不可预约日期起", align=2, sort=14)
	public String getNoorderrqq() {
		return noorderrqq;
	}

	public void setNoorderrqq(String noorderrqq) {
		this.noorderrqq = noorderrqq;
	}

	@ExcelField(title="不可预约日期止", align=2, sort=15)
	public String getNoorderrqz() {
		return noorderrqz;
	}

	public void setNoorderrqz(String noorderrqz) {
		this.noorderrqz = noorderrqz;
	}
}