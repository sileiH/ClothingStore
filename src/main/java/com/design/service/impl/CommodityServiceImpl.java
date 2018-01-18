package com.design.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.commom.exception.ServiceException;
import com.commom.web.PageObject;
import com.design.dao.CommodityDao;
import com.design.entity.Commodity;
import com.design.entity.SearchFilter;
import com.design.entity.SelectDemo;
import com.design.service.CommodityService;

@Service
public class CommodityServiceImpl implements CommodityService {

	@Autowired
	public CommodityDao commodityDao;

	public Map<String, Object> findPageObjects(String sort, SearchFilter filter, Integer pageCurrent) {
		PageObject page = new PageObject();
		SelectDemo selectDemo = new SelectDemo();
		if("sort-price_up".equals(sort)){
			sort = "price asc";
		}else if("sort-price_down".equals(sort)){
			sort = "price desc";
		}else if("sort-default".equals(sort)){
			sort = "";
		}else if("sort-favorite".equals(sort)){
			sort = "favorite desc";
		}else if("sprt-popular".equals(sort)){
			sort = "popular desc";
		}
		selectDemo.setOrderType(sort);
		if (filter.getSeason()!=null) {
			selectDemo.setSeason(filter.getSeason());
		}
		if (filter.getSeries()!=null) {
			selectDemo.setSeries(filter.getSeries());
		}
		if (filter.getSex()!=null) {
			selectDemo.setSex(filter.getSex());
		}
		if (filter.getClassify()!=null) {
			selectDemo.setClassify(filter.getClassify());
		}
		if (filter.getPrice()!=null) {
			String price = filter.getPrice();
			Double init_price = Double.parseDouble(price.substring(0, price.indexOf("-")));
			Double end_price = Double.parseDouble(price.substring(price.indexOf("-") + 1));
			selectDemo.setInit_price(init_price);
			selectDemo.setEnd_price(end_price);
		}
		page.setPageCurrent(pageCurrent);
		page.setRowCount(commodityDao.getRowCount(selectDemo));
		page.setPageSize(9);
		page.setStartIndex((page.getPageCurrent() - 1) * page.getPageSize());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", commodityDao.findPageObjects(selectDemo, page));
		map.put("page", page);

		return map;
	}

	public Commodity getObjectByNum(String number) {
		if(StringUtils.isEmpty(number)){
			throw new ServiceException("number不合法");
		}else{
			return commodityDao.getObjectByNum(number);
		}
		
	}
}
