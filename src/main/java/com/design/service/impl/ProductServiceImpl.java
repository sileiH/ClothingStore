package com.design.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.commom.exception.ServiceException;
import com.design.dao.ProductDao;
import com.design.entity.Products;
import com.design.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;
	
	public List<Products> getObjectsByType(String type) {
		if(StringUtils.isEmpty(type)){
			throw new ServiceException("类型不能为空");
		}
		return productDao.getObjectsByType(type);
	}

	public List<Products> getNewObjects() {
		return productDao.getNewObjects();
	}

}
