package com.system.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.commom.web.JsonDateTypeConvert;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

public class ListProduct implements Serializable {

	private static final long serialVersionUID = 8908632400435762231L;

	public Integer id;

	public String name;

	public Double price;

	public String url;

	public String number;

	public Integer count;

	public String introduce;

	public String season;

	public String series;

	public String size;

	public String classify;

	@DateTimeFormat(pattern="yyyy-MM-dd")
	public Date birth;

	public String sex;

	public String popular;

	public String favorite;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	@JsonSerialize(using=JsonDateTypeConvert.class)
	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPopular() {
		return popular;
	}

	public void setPopular(String popular) {
		this.popular = popular;
	}

	public String getFavorite() {
		return favorite;
	}

	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}

	@Override
	public String toString() {
		return "ListProduct [id=" + id + ", name=" + name + ", price=" + price + ", url=" + url + ", number=" + number
				+ ", count=" + count + ", introduce=" + introduce + ", season=" + season + ", series=" + series
				+ ", size=" + size + ", classify=" + classify + ", birth=" + birth + ", sex=" + sex + ", popular="
				+ popular + ", favorite=" + favorite + "]";
	}

}
