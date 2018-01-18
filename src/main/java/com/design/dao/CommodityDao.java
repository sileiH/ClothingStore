package com.design.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.commom.web.PageObject;
import com.design.entity.Commodity;
import com.design.entity.SelectDemo;

public interface CommodityDao {

	// 获取查找的商品
	List<Commodity> findPageObjects(@Param("selectDemo")SelectDemo selectDemo,
									@Param("pageObject")PageObject page);

	// 获取查找商品的数量
	int getRowCount(SelectDemo selectDemo);
	
	// 根据Number查找信息
	Commodity getObjectByNum(String number);

}
