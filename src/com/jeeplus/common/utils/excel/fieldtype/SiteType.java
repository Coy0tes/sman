package com.jeeplus.common.utils.excel.fieldtype;

import com.jeeplus.modules.site.entity.Site;


public class SiteType {
	public static String setValue(Object val) {
		if (val != null && ((Site)val).getName() != null){
			return ((Site)val).getName();
		}
		return "";
	}
}
