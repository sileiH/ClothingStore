package com.design.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.commom.exception.ServiceException;
import com.design.dao.UserDao;
import com.design.entity.User;
import com.design.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	/** 查找帐号 */
	public String findUser(User user) {
		if (StringUtils.isEmpty(user.getPassword())) {
			throw new ServiceException("密码不能为空");
		}
		if (StringUtils.isEmpty(user.getAccount())) {
			throw new ServiceException("帐号不能为空");
		}
		return userDao.findUser(user);
	}

	/** 注册帐号 */
	public Integer registerUser(User user) {
		if (StringUtils.isEmpty(user.getPassword())) {
			throw new ServiceException("密码不能为空");
		}
		if (StringUtils.isEmpty(user.getAccount())) {
			throw new ServiceException("帐号不能为空");
		}
		if (StringUtils.isEmpty(user.getUsername())){
			throw new ServiceException("用户名不能为空");
		}
		User users = new User();
		users.setAccount(user.getAccount());
		if (userDao.findUser(users)!=null){
			throw new ServiceException("该帐号已经存在");
		}
		return userDao.registerUser(user);
	}
}
