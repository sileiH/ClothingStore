package com.system.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.commom.web.JsonDateTypeConvert;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

public class Sales implements Serializable {

	private static final long serialVersionUID = 2392951428579268281L;

	private Integer id;

	private Integer cons;

	private Integer chuck;

	private Integer all_star;

	private Integer taylor;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date sale_date;

	public Integer getCons() {
		return cons;
	}

	public void setCons(Integer cons) {
		this.cons = cons;
	}

	public Integer getChuck() {
		return chuck;
	}

	public void setChuck(Integer chuck) {
		this.chuck = chuck;
	}

	public Integer getAll_star() {
		return all_star;
	}

	public void setAll_star(Integer all_star) {
		this.all_star = all_star;
	}

	public Integer getTaylor() {
		return taylor;
	}

	public void setTaylor(Integer taylor) {
		this.taylor = taylor;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@JsonSerialize(using = JsonDateTypeConvert.class)
	public Date getSale_date() {
		return sale_date;
	}

	public void setSale_date(Date sale_date) {
		this.sale_date = sale_date;
	}

	@Override
	public String toString() {
		return "Sales [id=" + id + ", cons=" + cons + ", chuck=" + chuck + ", all_star=" + all_star + ", taylor="
				+ taylor + ", sale_date=" + sale_date + "]";
	}

}
