/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.news.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.news.entity.News;
import com.jeeplus.modules.news.dao.NewsDao;

/**
 * newsService
 * @author mxc
 * @version 2017-10-14
 */
@Service
@Transactional(readOnly = true)
public class NewsService extends CrudService<NewsDao, News> {

	public News get(String id) {
		return super.get(id);
	}
	
	public List<News> findList(News news) {
		return super.findList(news);
	}
	
	public Page<News> findPage(Page<News> page, News news) {
		return super.findPage(page, news);
	}
	
	@Transactional(readOnly = false)
	public void save(News news) {
		super.save(news);
	}
	
	@Transactional(readOnly = false)
	public void delete(News news) {
		super.delete(news);
	}
	
	
	
	
}