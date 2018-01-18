package com.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.commom.web.JsonResult;
import com.system.service.EchartService;

@Controller
@RequestMapping("/echart/")
public class EchartController {
	@Autowired
	private EchartService echartService;
	
	@RequestMapping("listUI")
	public String listUI(){
		return "echart/list_echart";
	}
	
	@RequestMapping("getAllData")
	@ResponseBody
	public JsonResult getAllData(){
		return new JsonResult(echartService.getAllData());
	}
	
}
