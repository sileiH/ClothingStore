package com.system.service;

import com.commom.web.PageObject;
import com.design.entity.OrderInfo;

import java.util.List;
import java.util.Map;

public interface AuditService {
    int getCount();

    Map<String,Object> getThroughData(PageObject pageObject);

    void chgThrough(Integer id, Integer isThrough, String reason, String auditName);
}
