/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.news.entity;


import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.excel.annotation.ExcelField;

/**
 * newsEntity
 * @author mxc
 * @version 2017-10-14
 */
public class News extends DataEntity<News> {
	
	private static final long serialVersionUID = 1L;
	private String title;		// 新闻标题
	private String category;		// 所属分类
	private String mainpicurl;		// 新闻主图
	private String contents;		// 新闻内容
	private String xh;		// 序号
	
	public News() {
		super();
	}

	public News(String id){
		super(id);
	}

	@ExcelField(title="新闻标题", align=2, sort=1)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	@ExcelField(title="所属分类", dictType="news_category", align=2, sort=2)
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
//	@ExcelField(title="新闻主图", align=2, sort=3)
	public String getMainpicurl() {
		return mainpicurl;
	}

	public void setMainpicurl(String mainpicurl) {
		this.mainpicurl = mainpicurl;
	}
	
//	@ExcelField(title="新闻内容", align=2, sort=4)
	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@ExcelField(title="序号", align=2, sort=3)
	public String getXh() {
		return xh;
	}

	public void setXh(String xh) {
		this.xh = xh;
	}
	
}