package com.commom.tool;

import java.util.Random;

//用于生成测试用的sql语句
public class SqlTestCreate {
	
	public static String[] name = {"魔术贴帆布鞋","低帮帆布鞋","低帮休闲运动鞋","纯色魔术贴"};
	public static String[] season = {"春","夏","秋","冬"};
	public static String[] series = {"cons","chuck","all star","taylor"};
	public static String[] sex = {"男","女","儿童"};
	public static StringBuilder create(){
		StringBuilder sb = new StringBuilder();
		sb.append("insert into commodity values");
		for(int i = 0;i < 20;i ++){
			sb.append("(null,");//id
			sb.append("\"" + name[i%4] + "\",");
			Random ran = new Random();
			sb.append(ran.nextInt(200) + 200 + ",");//price
			sb.append("\"" + "img/search/" + i + ".png" + "\",");
			sb.append("\"" + 10001 + i + "\",");
			sb.append(ran.nextInt(200) + 20 + ",");//count
			sb.append("\"" + "describe" + "\",");
			sb.append("\"" + season[i%4] + "\",");
			sb.append("\"" + series[i%4] + "\",");
			String size = "";
			for(int j = 0;j < 10;j ++){
				 size += 30 + j + ":" + ran.nextInt(30);
				 if(j != 9){
					 size += ",";
				 }
			}
			sb.append("\"" + size + "\",");//size
			sb.append("\"" + "鞋子" + "\",");//classify
			sb.append("now()" + ",");
			sb.append("\"" + sex[i%3] + "\"");
			sb.append(")");
			if(i != 19){
				sb.append(",");
			}else{
				sb.append(";");
			}
		}
		return sb;
	}
	public static void main(String[] args) {
		System.out.println(create());
	}
}
