package test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.system.entity.Role;
import com.system.service.RoleService;

public class TestRole {
	private ClassPathXmlApplicationContext cpxa;
	private RoleService roleService;

	@Before
	public void init() {
		cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
		roleService = cpxa.getBean("roleServiceImpl", RoleService.class);
	}

	@Test
	public void test2() {
		System.out.println(roleService.getRoleObjects());
	}
	
	@Test
	public void test1() {
		Role role = new Role();
		role.setAccount("Andy");
		role.setUsername("Andy");
		role.setPassword("123456");
		role.setPower("manager");
		roleService.addRoleObject(role);
	}
	
	@Test
	public void test3() {
		roleService.deleteRoleObject(7);
	}
	
	@Test
	public void test4() {
		Role role = new Role();
		role.setAccount("bb");
		role.setUsername("aa");
		role.setPassword("aa");
		role.setPower("aa");
		roleService.updateRoleObject(role, 9);
	}

	@After
	public void destory() {
		cpxa.close();
	}
}
