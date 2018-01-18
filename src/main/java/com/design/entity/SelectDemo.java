package com.design.entity;

import java.io.Serializable;

//该类仅用于进行search界面的筛选
public class SelectDemo implements Serializable{
	
	public SelectDemo(){
		
	}

	private static final long serialVersionUID = 4984444603417666482L;

	//性别
	public String sex;
	
	//季节
	public String season;
	
	//品牌
	public String series;
	
	//种类
	public String classify;
	
	//价格范围
	public Double init_price;
	
	public Double end_price;
	
	public String orderType;

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	
	public String getOrderType() {
		return orderType;
	}
	
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public Double getInit_price() {
		return init_price;
	}

	public void setInit_price(Double init_price) {
		this.init_price = init_price;
	}

	public Double getEnd_price() {
		return end_price;
	}

	public void setEnd_price(Double end_price) {
		this.end_price = end_price;
	}

	@Override
	public String toString() {
		return "SelectDemo [sex=" + sex + ", season=" + season + ", series=" + series + ", classify=" + classify
				+ ", init_price=" + init_price + ", end_price=" + end_price + ", orderType=" + orderType + "]";
	}
	
	
}
