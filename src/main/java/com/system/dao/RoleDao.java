package com.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.system.entity.Role;

public interface RoleDao {
	public List<Role> getRoleObjects();
	
	public void addRoleObject(Role role);
	
	public void deleteRoleObject(Integer id);
	
	public void updateRoleObject(@Param("role")Role role,@Param("id")Integer id);
}
