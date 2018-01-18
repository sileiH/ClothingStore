package com.system.dao;

import com.commom.web.PageObject;
import com.design.entity.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuditDao {
    //审核
    void chgThrough(@Param("id") Integer id,
                    @Param("isThrough") Integer isThrough,
                    @Param("reason") String reason,
                    @Param("auditName") String auditName);

    //获取要审核的数据
    List<OrderInfo> getThroughData(PageObject pageObject);

    int getCount();
}
