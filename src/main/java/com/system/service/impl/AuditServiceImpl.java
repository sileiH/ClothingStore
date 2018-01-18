package com.system.service.impl;

import com.commom.exception.ServiceException;
import com.commom.web.PageObject;
import com.system.dao.AuditDao;
import com.system.service.AuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.Map;

@Service
public class AuditServiceImpl implements AuditService {

    @Autowired
    private AuditDao auditDao;

    public int getCount(){
        return auditDao.getCount();
    }

    public Map<String,Object> getThroughData(PageObject pageObject) {
        int pageCurrent = pageObject.getPageCurrent();
        pageObject.setPageSize(3);
        pageObject.setRowCount(getCount());
        pageObject.setStartIndex((pageCurrent - 1)*pageObject.getPageSize());
        pageObject.setPageCount(pageObject.getPageCount());
        if(pageCurrent < 0 || pageCurrent > pageObject.getPageCount()){
            throw new ServiceException("当前页数不合法");
        }
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("pageObject",pageObject);
        map.put("OrderInfo",auditDao.getThroughData(pageObject));
        return map;
    }

    public void chgThrough(Integer id, Integer isThrough, String reason, String auditName) {
        if (StringUtils.isEmpty(id)) {
            throw new ServiceException("id值非法");
        } else if (StringUtils.isEmpty(isThrough)) {
            throw new ServiceException("isThrough值非法");
        } else if (StringUtils.isEmpty(auditName)) {
            throw new ServiceException("auditName值非法");
        } else{
            auditDao.chgThrough(id, isThrough, reason, auditName);
        }
    }
}
