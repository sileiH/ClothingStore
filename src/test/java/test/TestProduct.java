package test;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.design.entity.Products;
import com.design.service.ProductService;

public class TestProduct {
	private ClassPathXmlApplicationContext cpxa;
	private ProductService productService;

	@Before
	public void init() {
		cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
		productService = cpxa.getBean("productServiceImpl", ProductService.class);
	}

	// 登录测试
	@Test
	public void testGetObjectsByType() {
		String type = "m-shoes";
		List<Products> list = productService.getObjectsByType(type);
		System.out.println(list);
	}

	// 获取最新商品测试
	@Test
	public void testGetNewObjects() {
		List<Products> list = productService.getNewObjects();
		System.out.println(list);
	}

	@After
	public void destory() {
		cpxa.close();
	}
}
