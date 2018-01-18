package test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.system.entity.ListProduct;
import com.system.service.ListService;

public class TestListService {
	private ClassPathXmlApplicationContext cpxa;
	private ListService listService;

	@Before
	public void init() {
		cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
		listService = cpxa.getBean("listServiceImpl", ListService.class);
	}

	@Test
	public void test1(){
		System.out.println(listService.getAllProducts());
	}
	
	@Test
	public void test2(){
		ListProduct listProduct = listService.getAllProducts().get(0);
		listProduct.setName("test");
		listService.addListProduct(listProduct);
	}
	
	@Test
	public void test3(){
		ListProduct listProduct = listService.getAllProducts().get(20);
		listProduct.setName("test6");
		System.out.println(listProduct);
		listService.updateListProduct(listProduct, listProduct.getId());
	}

	@Test
	public void test4(){
		listService.deleteListProduct(21);
	}
	
	@After
	public void destory() {
		cpxa.close();
	}
}
