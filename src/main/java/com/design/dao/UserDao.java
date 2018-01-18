package com.design.dao;

import com.design.entity.User;

public interface UserDao {
	//查找帐号
	public String findUser(User user);
	
	//注册帐号
	public Integer registerUser(User user);
}
