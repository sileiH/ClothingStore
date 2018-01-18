package test;

import com.commom.web.PageObject;
import com.system.service.AuditService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestAuditService {
    private ClassPathXmlApplicationContext cpxa;
    private AuditService auditService;

    @Before
    public void init(){
        cpxa = new ClassPathXmlApplicationContext("Spring-myBatis.xml");
        auditService = cpxa.getBean("auditServiceImpl",AuditService.class);
    }
    @Test
    public void test1(){
        PageObject pageObject = new PageObject();
        pageObject.setPageSize(3);
        pageObject.setStartIndex(0);
        System.out.println(auditService.getThroughData(pageObject));
    }

    @Test
    public void test2(){
        auditService.chgThrough(9,1,null,"Oliver");
    }

    @After
    public void destory(){
        cpxa.destroy();
    }

}
