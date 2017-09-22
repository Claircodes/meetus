package com.meet.user.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.meet.user.dto.UserInfo;

@Controller
public class UserController 
{
	@RequestMapping(value = "/user/signup", method=RequestMethod.POST)
	public List<UserInfo> siginUser(UserInfo ui)
	{
		return null;
	}
}
