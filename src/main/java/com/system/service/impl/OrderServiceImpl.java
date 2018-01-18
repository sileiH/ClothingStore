package com.system.service.impl;

import com.commom.exception.ServiceException;
import com.design.entity.OrderInfo;
import com.system.dao.OrderDao;
import com.system.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderDao orderDao;

    public List<OrderInfo> getAllOrderInfo(){
        return orderDao.getAllOrderInfo();
    }

    public void updateOrderInfo(OrderInfo orderInfo) {
        if(orderInfo.getId()  == null || orderInfo.getId() < 0){
            throw new ServiceException("id不合法");
        }
        orderDao.updateOrderInfo(orderInfo);
    }

    public void deleteOrderInfo(Integer id) {
        if(id == null || id < 0){
            throw new ServiceException("id不合法");
        }
        orderDao.deleteOrderInfo(id);
    }
}
