package com.design.service;

import java.util.List;

import com.design.entity.Products;

public interface ProductService {

	public List<Products> getObjectsByType(String type);
	
	public List<Products> getNewObjects();
}
