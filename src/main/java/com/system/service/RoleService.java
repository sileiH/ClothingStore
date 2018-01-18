package com.system.service;

import java.util.List;

import com.system.entity.Role;

public interface RoleService {
	public List<Role> getRoleObjects();

	public void addRoleObject(Role role);

	public void deleteRoleObject(Integer id);

	public void updateRoleObject(Role role, Integer id);
}
