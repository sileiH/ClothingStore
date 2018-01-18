package com.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.system.entity.ListProduct;

public interface ListDao {
	public List<ListProduct> getAllProducts();

	public void addListProduct(ListProduct listProduct);

	public void deleteListProduct(Integer id);

	public void updateListProduct(@Param("listProduct")ListProduct listProduct, @Param("id")Integer id);
}
