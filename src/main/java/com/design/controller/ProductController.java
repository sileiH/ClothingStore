package com.design.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.commom.exception.ServiceException;
import com.commom.web.JsonResult;
import com.design.service.ProductService;

@Controller
@RequestMapping("/index/")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping("getObjectsByType")
	@ResponseBody
	public JsonResult getObjectsByType(String type){
		try {
			return new JsonResult(productService.getObjectsByType(type));
		} catch (ServiceException e) {
			return new JsonResult(e);
		}
	}
	
	@RequestMapping("getNewObjects")
	@ResponseBody
	public JsonResult getNewObjects(){
		return new JsonResult(productService.getNewObjects());
	}
	
	
}
