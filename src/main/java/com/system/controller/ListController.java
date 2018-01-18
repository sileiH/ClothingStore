package com.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.commom.web.JsonResult;
import com.system.entity.ListProduct;
import com.system.service.ListService;

@RequestMapping("/list/")
@Controller
public class ListController {
	
	@Autowired
	private ListService listService;
	
	@RequestMapping("listUI")
	public String listUI(){
		return "list/list_list";
	}
	
	@RequestMapping("getAllProducts")
	@ResponseBody
	public JsonResult getAllProducts(){
		return new JsonResult(listService.getAllProducts());
	}
	
	@RequestMapping("addListProduct")
	@ResponseBody
	public JsonResult addListProduct(ListProduct listProduct){
		try{
			listService.addListProduct(listProduct);
			return new JsonResult("添加成功");
		}catch(Exception e){
			return new JsonResult(e.getMessage());
		}
	}
	
	@RequestMapping("deleteListProduct")
	@ResponseBody
	public JsonResult deleteListProduct(Integer id){
		try{
			listService.deleteListProduct(id);;
			return new JsonResult("删除成功");
		}catch(Exception e){
			return new JsonResult(e.getMessage());
		}
	}
	
	@RequestMapping("updateListProduct")
	@ResponseBody
	public JsonResult updateListProduct(ListProduct listProduct,Integer id){
		try{
			listService.updateListProduct(listProduct, id);
			return new JsonResult("修改成功");
		}catch(Exception e){
			return new JsonResult(e.getMessage());
		}
	}
}
