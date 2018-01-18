package com.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.commom.exception.ServiceException;
import com.system.dao.RoleDao;
import com.system.entity.Role;
import com.system.service.RoleService;

@Service("roleServiceImpl")
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleDao roleDao;
	
	public List<Role> getRoleObjects() {
		return roleDao.getRoleObjects();
	}

	public void addRoleObject(Role role) {
		if(StringUtils.isEmpty(role.getUsername())){
			throw new ServiceException("用户名不能为空");
		}else if(StringUtils.isEmpty(role.getAccount())){
			throw new ServiceException("帐号不能为空");
		}else if(StringUtils.isEmpty(role.getAccount())){
			throw new ServiceException("密码不能为空");
		}else if(StringUtils.isEmpty(role.getAccount())){
			throw new ServiceException("权限不能为空");
		}else{
			roleDao.addRoleObject(role);
		}
	}

	public void deleteRoleObject(Integer id) {
		if(id == null || id < 0){
			throw new ServiceException("非法id");
		}else{
			roleDao.deleteRoleObject(id);
		}
	}

	public void updateRoleObject(Role role, Integer id) {
		if(StringUtils.isEmpty(role.getUsername())){
			throw new ServiceException("用户名不能为空");
		}else if(StringUtils.isEmpty(role.getAccount())){
			throw new ServiceException("帐号不能为空");
		}else if(StringUtils.isEmpty(role.getAccount())){
			throw new ServiceException("密码不能为空");
		}else if(StringUtils.isEmpty(role.getAccount())){
			throw new ServiceException("权限不能为空");
		}else if(id == null || id < 0){
			throw new ServiceException("非法id");
		}else{
			roleDao.updateRoleObject(role,id);
		}
	}

}
