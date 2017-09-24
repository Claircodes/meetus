package com.meet.together.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	
	@RequestMapping(value = "/signup/insert", method = RequestMethod.POST)
	public List<UserInfo> siginUser(UserInfo ui) {
    
		int result = us.siginUser(ui);
		System.out.println(result);
		return null;
	}
}
