package com.system.controller;

import com.commom.web.JsonResult;
import com.design.entity.OrderInfo;
import com.system.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/order/")
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("listUI")
    public String listUI(){
        return "order/list_order";
    }

    @RequestMapping("getAllOrderInfo")
    @ResponseBody
    public JsonResult getALLOrderInfo(){
        return new JsonResult(orderService.getAllOrderInfo());
    }

    @ResponseBody
    @RequestMapping("updateOrderInfo")
    public JsonResult updateOrderInfo(OrderInfo orderInfo){
        try{
            orderService.updateOrderInfo(orderInfo);
            return new JsonResult("修改成功");
        }catch(Exception e){
            return new JsonResult(e.getMessage());
        }
    }

    @RequestMapping("deleteOrderInfo")
    @ResponseBody
    public JsonResult deleteOrderInfo(Integer id){
        try{
            orderService.deleteOrderInfo(id);;
            return new JsonResult("删除成功");
        }catch(Exception e){
            return new JsonResult(e.getMessage());
        }
    }
}
