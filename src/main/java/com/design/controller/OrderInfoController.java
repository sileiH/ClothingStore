package com.design.controller;

import com.commom.web.JsonResult;
import com.design.entity.OrderInfo;
import com.design.service.OrderInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/order/")
public class OrderInfoController {
    @Autowired
    OrderInfoService orderInfoService;

    @RequestMapping("subOrderInfo")
    @ResponseBody
    public JsonResult subOrderInfo(OrderInfo orderInfo){
        System.out.println(orderInfo);
        return new JsonResult(orderInfoService.subOrderInfo(orderInfo));
    }
}
