package com.design.service;

import java.util.Map;

import com.commom.web.PageObject;
import com.design.entity.Commodity;
import com.design.entity.SearchFilter;
import com.design.entity.SelectDemo;

public interface CommodityService {
	// 获取查找的商品
	Map<String, Object> findPageObjects(String sort,SearchFilter filter,Integer pageCurrent);

	// 根据Number查找信息
	Commodity getObjectByNum(String number);
}
