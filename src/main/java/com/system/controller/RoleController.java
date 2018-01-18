package com.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.commom.web.JsonResult;
import com.system.entity.Role;
import com.system.service.RoleService;

@Controller
@RequestMapping("/role/")
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("listUI")
	public String listUI(){
		return "role/role_list";
	}
	
	@RequestMapping("getRoleObjects")
	@ResponseBody
	public JsonResult getRoleObjects(){
		return new JsonResult(roleService.getRoleObjects());
	}
	
	@RequestMapping("addRoleObject")
	@ResponseBody
	public JsonResult addRoleObject(Role role){
		try{
			roleService.addRoleObject(role);
			return new JsonResult("添加成功");
		}catch(Exception e){
			return new JsonResult(e.getMessage());
		}
	}
	
	@RequestMapping("deleteRoleObject")
	@ResponseBody
	public JsonResult deleteRoleObject(Integer id){
		try{
			roleService.deleteRoleObject(id);
			return new JsonResult("删除成功");
		}catch(Exception e){
			return new JsonResult(e.getMessage());
		}
	}
	
	@RequestMapping("updateRoleObject")
	@ResponseBody
	public JsonResult updateRoleObject(Role role,Integer id){
		try{
			roleService.updateRoleObject(role,id);
			return new JsonResult("修改成功");
		}catch(Exception e){
			return new JsonResult(e.getMessage());
		}
	}
}
