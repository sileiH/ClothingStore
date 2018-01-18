package com.design.entity;

import java.io.Serializable;
import java.util.Date;

public class Products implements Serializable {

	private static final long serialVersionUID = -6897618208495100647L;

	// 产品类型
	private String type;

	// 产品图片地址
	private String url;

	// 产品编号
	private String number;

	// 产品信息
	private String note;

	// 产品价格
	private Double price;

	// 产品姓名
	private String name;

	// 产品库存
	private String inventory;

	// 产品入库时间
	private Date storageDay;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInventory() {
		return inventory;
	}

	public void setInventory(String inventory) {
		this.inventory = inventory;
	}


	public Date getStorageDay() {
		return storageDay;
	}

	public void setStorageDay(Date storageDay) {
		this.storageDay = storageDay;
	}

	@Override
	public String toString() {
		return "Product [type=" + type + ", url=" + url + ", number=" + number + ", note=" + note + ", price=" + price
				+ ", name=" + name + ", inventory=" + inventory + ", storageDay=" + storageDay + "]";
	}
}
