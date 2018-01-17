package com.jeeplus.common.utils.excel.fieldtype;

import com.jeeplus.modules.classes.entity.Classes;


public class ClassesType {
	public static String setValue(Object val) {
		if (val != null && ((Classes)val).getName() != null){
			return ((Classes)val).getName();
		}
		return "";
	}
}
