package com.commom.tool;

import java.util.Random;

public class SqlSalesCreate {
	public static void main(String[] args) {
		StringBuilder str = new StringBuilder("");
		for(int i = 0;i< 10;i++){
			String s = "" + (i + 1);
			if(s.length() == 1){
				s = 0 + s;
			}
			str.append("(null,\"2017-12-" + s + " 18:17:57\",");
			Random random = new Random();
			str.append(random.nextInt(100));
			str.append(",");
			str.append(random.nextInt(100));
			str.append(",");
			str.append(random.nextInt(100));
			str.append(",");
			str.append(random.nextInt(100));
			str.append("),");
		}
		System.out.println(str);
	}
}
