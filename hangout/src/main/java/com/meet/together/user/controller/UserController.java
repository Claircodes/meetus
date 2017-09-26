package com.meet.together.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.meet.together.user.dto.UserInfo;
import com.meet.together.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService us;
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String sigupsite(UserInfo ui) {
		return "signup";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginsite(UserInfo ui) {
		return "user/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody ModelMap login(@RequestBody UserInfo ui, ModelMap hm) {
		UserInfo rUser = us.login(ui);
		if(rUser != null)
		{
			hm.put("msg", "로그인성공");
			hm.put("url", "main");
		}
		else
		{
			hm.put("msg", "로그인 실패");
			hm.put("url", "login");
		}
		return hm;
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainsite(UserInfo ui) {
		return "main";
	}
	
	
	@RequestMapping(value = "/signup/insert", method = RequestMethod.POST)
	public @ResponseBody UserInfo siginUser(@RequestBody UserInfo ui) {
    
		int result = us.signinUser(ui);
		System.out.println(result);
		return ui;
		
	}
}
