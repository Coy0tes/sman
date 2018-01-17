/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.classmember.dao;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.classmember.entity.ClassesMember;

/**
 * classMemberDAO接口
 * @author mxc
 * @version 2017-10-16
 */
@MyBatisDao
public interface ClassesMemberDao extends CrudDao<ClassesMember> {

	
}