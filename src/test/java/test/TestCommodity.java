package test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.design.entity.Commodity;
import com.design.entity.SearchFilter;
import com.design.service.CommodityService;

public class TestCommodity {
	private ClassPathXmlApplicationContext cpxa;
	private CommodityService commodityService;

	@Before
	public void init() {
		cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
		commodityService = cpxa.getBean("commodityServiceImpl", CommodityService.class);
	}
	

	@Test
	public void test2(){
		String sort = "sort-default";
		SearchFilter filter = new SearchFilter();
		filter.setSeason("Spring");
		filter.setPrice("290-500");
		filter.setSeries("cons");
		filter.setClassify("shoe");
		System.out.println("123");
		Integer pageCurrent = 0;
		Map<String,Object> map = commodityService.findPageObjects(sort, filter,pageCurrent);
		System.out.println(map.get("page"));
		for(Commodity exp : (List<Commodity>) map.get("list")){
			System.out.println(exp.getSex());
		}
	}
	
	@Test
	public void test3(){
		System.out.println(commodityService.getObjectByNum("100010"));
	}
	
	@After
	public void destory() {
		cpxa.close();
	}
}
