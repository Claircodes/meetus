package com.meet.together.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
