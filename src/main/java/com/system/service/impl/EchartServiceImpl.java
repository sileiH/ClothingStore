package com.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.dao.EchartDao;
import com.system.entity.Sales;
import com.system.service.EchartService;

@Service
public class EchartServiceImpl implements EchartService {

	@Autowired
	private EchartDao echartDao;

	public List<Sales> getAllData() {
		return echartDao.getAllData();
	}

}
