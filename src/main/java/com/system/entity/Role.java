package com.system.entity;

import java.io.Serializable;

public class Role implements Serializable {
	private static final long serialVersionUID = 6824694931281213551L;

	private Integer id;
	private String account;
	private String username;
	private String password;
	public String Power;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPower() {
		return Power;
	}

	public void setPower(String power) {
		Power = power;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", account=" + account + ", username=" + username + ", password=" + password
				+ ", Power=" + Power + "]";
	}

}