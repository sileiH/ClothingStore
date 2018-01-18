package com.design.entity;

import java.io.Serializable;

public class SearchFilter implements Serializable {

	private static final long serialVersionUID = -3703707910494268371L;

	public String series;
	public String season;
	public String classify;
	public String price;
	public String sex;

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getSex() {
		return sex;
	}
	
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Override
	public String toString() {
		return "SearchFilter [series=" + series + ", season=" + season + ", classify=" + classify + ", price=" + price
				+ ", sex=" + sex + "]";
	}

}
