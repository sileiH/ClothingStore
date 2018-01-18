package com.design.entity;

import java.io.Serializable;

public class User implements Serializable {
	public User(){
		
	}
	
	private static final long serialVersionUID = 6824694931281213551L;

	private Integer id;
	private String account;
	private String username;
	private String password;

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

	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", username=" + username + ", password=" + password + "]";
	}
	
}
