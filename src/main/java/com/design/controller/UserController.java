package com.design.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.commom.exception.ServiceException;
import com.commom.tool.Tools;
import com.commom.web.JsonResult;
import com.design.entity.ShopProduct;
import com.design.entity.User;
import com.design.service.UserService;

@Controller
@RequestMapping
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("toLogin")
	public String toLogin(){
		return "login";
	}
	
	@RequestMapping("toRegister")
	public String toRegister(){
		return "register";
	}
	
	@RequestMapping("toSearch")
	public String toSearch(HttpSession session){
		return "search";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "login";
	}
	
	@RequestMapping("toIndex")
	public String toIndex(){
		return "index";
	}
	
	@RequestMapping("toManager")
	public String toManager(){
		return "manager";
	}
	
	@RequestMapping("toList")
	public String toList(){
		return "list";
	}
	
	@RequestMapping("toOrderInfo")
	public String toOrderInfo(){
		return "orderInfo";
	}

	@RequestMapping("toSuccess")
	public String toSuccess(){
		return "success";
	}

	@RequestMapping("addItem")
	@ResponseBody
	public JsonResult addItem(HttpSession session,ShopProduct shopProduct){
		if(session.getAttribute("shop_list")==null){
			List<ShopProduct> shop_list = new LinkedList<ShopProduct>();
			shop_list.add(shopProduct);
			session.setAttribute("shop_list", shop_list);
		}else{
			List<ShopProduct> shop_list = (List<ShopProduct>) session.getAttribute("shop_list");
			for(ShopProduct emp:shop_list){
				if(emp.equals(shopProduct) ){
					shopProduct.setCount(Integer.parseInt(emp.getCount()) + Integer.parseInt(shopProduct.getCount()) + "");
					shop_list.remove(emp);
				}
			}
			shop_list.add(shopProduct);
			session.removeAttribute("shop_list");
			session.setAttribute("shop_list", shop_list);
		}
		return new JsonResult();
	}
	
	@RequestMapping("toItem")
	public String toItem(String number,HttpSession session){
		if(session.getAttribute("number")!=null){
			session.removeAttribute("number");
		}
		session.setAttribute("number", number);
		return "item";
	}
	
	@RequestMapping("removeShop")
	@ResponseBody
	public JsonResult removeShop(HttpSession session,int id){
		LinkedList<ShopProduct> list = (LinkedList<ShopProduct>) session.getAttribute("shop_list");
		list.remove(id);
		session.removeAttribute("shop_list");
		session.setAttribute("shop_list", list);
		return new JsonResult("删除成功!");
	}
	
	/**登录*/
	@RequestMapping("/login")
	@ResponseBody
	public JsonResult findUser(User user,HttpSession session){
		System.out.println(user.getAccount() + "," + user.getPassword());
		if(Tools.checkAccountPassword(user.getAccount(), user.getPassword())){
			String power = userService.findUser(user);
			if(power != null){
				if(session.getAttribute("user") != null){
					session.removeAttribute("user");
				}
				session.setAttribute("user", user.getAccount());
				System.out.println(session.getAttribute("user"));
				Map<String,String> map = new HashMap<String,String>();
				map.put("power", power);
				return new JsonResult("登录成功",map);
			}else{
				return new JsonResult(new RuntimeException("帐号或密码错误"));
			}
		}else{
			return new JsonResult(new RuntimeException("帐号或密码不能为空"));
		}
	}
	
	/**注册*/
	@RequestMapping("/register")
	@ResponseBody
	public JsonResult registerUser(User user,HttpSession session){
		//System.out.println(user.getAccount() + "," + user.getPassword() + "," + user.getUsername());
		try {
			Integer row = userService.registerUser(user);
		} catch (ServiceException e) {
			return new JsonResult(e.getMessage());
		}
		if(session.getAttribute("user") != null){
			session.removeAttribute("user");
		}
		session.setAttribute("user", user.getAccount());
		return new JsonResult();
	}
}
