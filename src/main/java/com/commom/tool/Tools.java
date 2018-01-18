package com.commom.tool;

import org.springframework.util.StringUtils;

public class Tools {
	
	public static boolean checkAccountPassword(String account,String password){
		if(StringUtils.isEmpty(account) || StringUtils.isEmpty(password)){
			return false;
		}
		return true;
	}
}
