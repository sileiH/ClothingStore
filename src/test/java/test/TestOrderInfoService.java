package test;

import com.design.entity.OrderInfo;
import com.design.service.OrderInfoService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestOrderInfoService {
    private ClassPathXmlApplicationContext cpxa;
    private OrderInfoService orderInfoService;

    @Before
    public void init() {
        cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
        orderInfoService = cpxa.getBean("orderInfoServiceImpl", OrderInfoService.class);
    }

    @Test
    public void test1() {
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setConsignee("Oliver");
        orderInfo.setAddress("广东 珠海市 斗门区 斗门镇");
        orderInfo.setE_mail("hzxshsl1@126.com");
        orderInfo.setPhone("13588298888");
        orderInfo.setOrderList("[{\"id\":\"null\", \"name\":\"低帮帆布鞋\", \"count\":\"1\", \"price\":\"280\", \"size\":\"30\", \"color\":\"黑\", \"number\":\"10010\", \"series\":\"chuck\", \"sex\":\"男的\", \"url\":\"img/hot/w-shoes/2.png\"}]");
        orderInfoService.subOrderInfo(orderInfo);
    }

    @After
    public void destory() {
        cpxa.close();
    }
}
