package com.jeeplus.common.utils.excel.fieldtype;

import com.jeeplus.modules.sitetype.entity.Sitetype;


public class SitetypeType {
	public static String setValue(Object val) {
		if (val != null && ((Sitetype)val).getName() != null){
			return ((Sitetype)val).getName();
		}
		return "";
	}
}
