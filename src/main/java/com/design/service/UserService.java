package com.design.service;

import com.design.entity.User;

public interface UserService {
	//查找帐号
	public String findUser(User user);
	
	//注册帐号
	public Integer registerUser(User user);
}
