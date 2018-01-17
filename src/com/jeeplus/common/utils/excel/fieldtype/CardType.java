package com.jeeplus.common.utils.excel.fieldtype;

import com.jeeplus.modules.card.entity.Card;

public class CardType {
	public static String setValue(Object val) {
		if (val != null && ((Card)val).getCardbh() != null){
			return ((Card)val).getCardbh();
		}
		return "";
	}
}
