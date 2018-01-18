package com.design.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.design.entity.Products;

public interface ProductDao {
	//获取最热的产品
	public List<Products> getObjectsByType(@Param("type")String type);
	
	//获取最新的产品
	public List<Products> getNewObjects();

}
