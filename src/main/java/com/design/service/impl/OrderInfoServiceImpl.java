package com.design.service.impl;

import com.commom.exception.ServiceException;
import com.design.dao.OrderInfoDao;
import com.design.entity.OrderInfo;
import com.design.service.OrderInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderInfoServiceImpl implements OrderInfoService{
    @Autowired
    private OrderInfoDao orderInfoDao;

    public int subOrderInfo(OrderInfo orderInfo) {
        int row = orderInfoDao.subOrderInfo(orderInfo);
        if(row <= 0){
            throw new ServiceException("订单提交失败");
        }
        return row;
    }
}
