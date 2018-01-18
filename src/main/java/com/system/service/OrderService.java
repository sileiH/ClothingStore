package com.system.service;

import com.design.entity.OrderInfo;

import java.util.List;

public interface OrderService {
    List<OrderInfo> getAllOrderInfo();

    void updateOrderInfo(OrderInfo orderInfo);

    void deleteOrderInfo(Integer id);
}
