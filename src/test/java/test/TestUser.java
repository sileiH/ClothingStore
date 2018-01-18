package test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.design.entity.User;
import com.design.service.UserService;

public class TestUser {
	private ClassPathXmlApplicationContext cpxa;
	private UserService userService;
	@Before
	public void init(){
		cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
		userService = cpxa.getBean("userServiceImpl",UserService.class);
	}
	
	//登录测试
	@Test
	public void testFindUser(){
		User user = new User();
		user.setAccount("admin");
		user.setPassword("1234567");
		String id = userService.findUser(user);
		System.out.println(id);
	}
	
	//注册测试
	@Test
	public void testRegisterUser(){
		User user = new User();
		user.setAccount("Andys");
		user.setPassword("123456");
		user.setUsername("Andys");
		Integer row = userService.registerUser(user);
		System.out.println(row);
	}
	
	@After
	public void destory(){
		cpxa.close();
	}
}
