package com.system.controller;

import com.commom.exception.ServiceException;
import com.commom.web.JsonResult;
import com.commom.web.PageObject;
import com.system.service.AuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/audit/")
public class AuditController {

    @Autowired
    private AuditService auditService;

    @RequestMapping("listUI")
    public String listUI() {
        return "audit/list_audit";
    }

    @RequestMapping("chgThrough")
    @ResponseBody
    public JsonResult chgThrough(Integer id, Integer isThrough, String reason, String auditName) {
        try{
            System.out.println(id + "," + isThrough + "," + reason + "," + auditName);
            auditService.chgThrough(id,isThrough,reason,auditName);
            return new JsonResult();
        }catch(ServiceException e){
            return new JsonResult(e);
        }
    }

    @RequestMapping("getThroughData")
    @ResponseBody
    public JsonResult getThroughData(PageObject pageObject){
       try{
           //System.out.println(pageObject);
           return new JsonResult(auditService.getThroughData(pageObject));
       }catch(ServiceException e){
           return new JsonResult(e);
       }
    }

}
