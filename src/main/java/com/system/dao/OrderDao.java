package com.system.dao;

import com.design.entity.OrderInfo;

import java.util.List;

public interface OrderDao {
    List<OrderInfo> getAllOrderInfo();

    void updateOrderInfo(OrderInfo orderInfo);

    void deleteOrderInfo(Integer id);
}
