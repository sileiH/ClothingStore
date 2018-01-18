package test;

import com.design.entity.OrderInfo;
import com.system.service.OrderService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestOrderService {
    ClassPathXmlApplicationContext cpxa;
    OrderService orderService;

    @Before
    public void init(){
        cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
        orderService = cpxa.getBean("orderServiceImpl",OrderService.class);
    }

    @Test
    public void test1(){
        System.out.println(orderService.getAllOrderInfo());
    }

    @Test
    public void test2(){
        OrderInfo orderInfo = orderService.getAllOrderInfo().get(2);
        System.out.println(orderInfo);
        orderService.updateOrderInfo(orderInfo);
    }

    @Test
    public void test3(){
        orderService.deleteOrderInfo(7);
    }

    @After
    public void destory(){
        cpxa.destroy();
    }
}
