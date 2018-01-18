package com.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commom.exception.ServiceException;
import com.system.dao.ListDao;
import com.system.entity.ListProduct;
import com.system.service.ListService;

@Service
public class ListServiceImpl implements ListService {

	@Autowired
	public ListDao listDao;

	public List<ListProduct> getAllProducts() {
		return listDao.getAllProducts();
	}

	public void addListProduct(ListProduct listProduct) {
		listDao.addListProduct(listProduct);
	}

	public void deleteListProduct(Integer id) {
		if(id == null || id < 0){
			throw new ServiceException("id不合法");
		}
		listDao.deleteListProduct(id);
	}

	public void updateListProduct(ListProduct listProduct, Integer id) {
		if(id == null || id < 0){
			throw new ServiceException("id不合法");
		}
		listDao.updateListProduct(listProduct, id);
	}

}
