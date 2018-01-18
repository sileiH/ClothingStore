package test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.system.service.EchartService;

public class TestEchartService {
	private ClassPathXmlApplicationContext cpxa;
	private EchartService echartService;

	@Before
	public void init() {
		cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
		echartService = cpxa.getBean("echartServiceImpl", EchartService.class);
	}

	@Test
	public void test1() {
		System.out.println(echartService.getAllData());
	}


	@After
	public void destory() {
		cpxa.close();
	}
}
