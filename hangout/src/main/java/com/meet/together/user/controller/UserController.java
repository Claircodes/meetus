package com.meet.together.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	
	@RequestMapping(value = "overlapId", method = RequestMethod.POST)
	public @ResponseBody List<UserInfo> overlapId(@RequestBody UserInfo ui)
	{
		List<UserInfo> rUser = us.overlapId(ui);
		return rUser;
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String sigupsite(UserInfo ui) {
		return "user/signup";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginsite(UserInfo ui) {
		return "user/login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutsite(UserInfo ui,HttpSession hs) {
		hs.invalidate();
		return "main";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listsite(UserInfo ui) {
		return "hangout/list";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String createsite(UserInfo ui) {
		return "hangout/create";
	}
	
	@RequestMapping(value = "/hangout", method = RequestMethod.GET)
	public String hangoutesite(UserInfo ui) {
		return "hangout/hangout";
	}

	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
	public @ResponseBody ModelMap login(HttpSession hs, @RequestBody UserInfo user, ModelMap hm) {
		UserInfo rUser = us.login(user);
		if (rUser != null) {
			hs.setAttribute("user", rUser);
			hm.put("msg", "로그인 성공하셨습니다.");
			hm.put("url", "main");
		} else {
			hm.put("msg", "아이디와 비밀번호를 확인해주세요.");
			hm.put("url", "user/login");
		}
		return hm;
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainsite(UserInfo ui) {
		return "main";
	}

	@RequestMapping(value = "/signup/insert", method = RequestMethod.POST)
	public @ResponseBody ModelMap siginUser(@RequestBody UserInfo ui, ModelMap hm) {

		int result = us.signinUser(ui);
		if (result == 1) {
			hm.put("msg", "회원가입이 완료되었습니다.");
			hm.put("url", "main");
		} else {
			hm.put("msg", "회원가입 실패, 정보를 확인하세요");
			hm.put("url", "signup");
		}
		return hm;
	}
}