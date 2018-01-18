package com.system.service;

import java.util.List;

import com.system.entity.ListProduct;

public interface ListService {
	public List<ListProduct> getAllProducts();
	public void addListProduct(ListProduct listProduct);
	public void deleteListProduct(Integer id);
	public void updateListProduct(ListProduct listProduct,Integer id);
}
