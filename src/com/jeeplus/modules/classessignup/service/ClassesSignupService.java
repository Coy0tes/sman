/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classessignup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.modules.classessignup.entity.ClassesSignup;
import com.jeeplus.modules.classessignup.dao.ClassesSignupDao;
import com.jeeplus.modules.classessignup.entity.ClassesSignupWeeks;
import com.jeeplus.modules.classessignup.dao.ClassesSignupWeeksDao;

/**
 * classesSignupService
 * @author mxc
 * @version 2017-10-15
 */
@Service
@Transactional(readOnly = true)
public class ClassesSignupService extends CrudService<ClassesSignupDao, ClassesSignup> {

	@Autowired
	private ClassesSignupWeeksDao classesSignupWeeksDao;
	
	public ClassesSignup get(String id) {
		ClassesSignup classesSignup = super.get(id);
		classesSignup.setClassesSignupWeeksList(classesSignupWeeksDao.findList(new ClassesSignupWeeks(classesSignup)));
		return classesSignup;
	}
	
	public List<ClassesSignup> findList(ClassesSignup classesSignup) {
		return super.findList(classesSignup);
	}
	
	public Page<ClassesSignup> findPage(Page<ClassesSignup> page, ClassesSignup classesSignup) {
		return super.findPage(page, classesSignup);
	}
	
	@Transactional(readOnly = false)
	public void save(ClassesSignup classesSignup) {
		super.save(classesSignup);
		for (ClassesSignupWeeks classesSignupWeeks : classesSignup.getClassesSignupWeeksList()){
			if (classesSignupWeeks.getId() == null){
				continue;
			}
			if (ClassesSignupWeeks.DEL_FLAG_NORMAL.equals(classesSignupWeeks.getDelFlag())){
				if (StringUtils.isBlank(classesSignupWeeks.getId())){
					classesSignupWeeks.preInsert();
					classesSignupWeeksDao.insert(classesSignupWeeks);
				}else{
					classesSignupWeeks.preUpdate();
					classesSignupWeeksDao.update(classesSignupWeeks);
				}
			}else{
				classesSignupWeeksDao.delete(classesSignupWeeks);
			}
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(ClassesSignup classesSignup) {
		super.delete(classesSignup);
		classesSignupWeeksDao.delete(new ClassesSignupWeeks(classesSignup));
	}
	
}