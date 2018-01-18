package com.design.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.commom.exception.ServiceException;
import com.commom.web.JsonResult;
import com.design.entity.SearchFilter;
import com.design.service.CommodityService;

@Controller
@RequestMapping("/search/")
public class CommodityController {
	@Autowired
	public CommodityService commodityService;

	/*@ResponseBody
	@RequestMapping("getPageObjects")
	public JsonResult getPageObjects(SelectDemo selectDemo, PageObject page) {
		
		return new JsonResult(commodityService.findPageObjects(selectDemo, page));
	}*/
	@ResponseBody
	@RequestMapping("getPageObjects")
	public JsonResult getPageObjects(String sort,SearchFilter filter,Integer pageCurrent) {
		return new JsonResult(commodityService.findPageObjects(sort,filter,pageCurrent));
	}
	
	@ResponseBody
	@RequestMapping("getObjectByNum")
	public JsonResult getObjectByNum(String number){
		try {
			return new JsonResult(commodityService.getObjectByNum(number));
		} catch (ServiceException e) {
			return new JsonResult(e);
		}
		
	}
	
}
