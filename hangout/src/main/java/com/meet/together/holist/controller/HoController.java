package com.meet.together.holist.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;
import com.meet.together.holist.service.HoService;
import com.meet.together.houser.dto.UserInfo;

@Controller
public class HoController {
	@Autowired
	HoService ls;

	@RequestMapping(value = "/hangout/insert", method = RequestMethod.POST)
	public @ResponseBody ModelMap insertListInfo(@RequestBody ListInfo li, ModelMap hm) {
		int result = ls.insertListInfo(li);
		if (result == 1) {
			hm.put("msg", "모임생성이 완료되었습니다.");
			hm.put("url", "");
		} else {
			hm.put("msg", "모임생성 실패, 정보를 확인하세요");
			hm.put("url", "hangout/create");
		}
		return hm;
	}

	@RequestMapping(value = "/hangout/create", method = RequestMethod.GET)
	public String createsite(UserInfo ui) {
		return "hangout/create";
	}

	@RequestMapping(value = "/hangout/list", method = RequestMethod.POST)
	public @ResponseBody ModelMap selectList(@RequestBody ListInfo li, ModelMap hm) {
		List<ListInfo> list = ls.selectListInfo(li);
		hm.put("list", list);
		return hm;
	}

	@RequestMapping(value = "/hangout/golist", method = RequestMethod.GET)
	public String listsite(UserInfo ui) {
		return "hangout/list";
	}
 
	   @RequestMapping(value = "/hangout", method = RequestMethod.GET)
	   public String listsiteinfo(ListInfo li,ModelMap model) {
		  HashMap<String, Object> hm = ls.selectListContent(li);
	      model.addAttribute("ListInfo", hm );
	      return "hangout/hangout";
	   }
 
	@RequestMapping(value = "/place", method = RequestMethod.POST)
	public @ResponseBody int insertPlace(@RequestBody Place pi) {
		return ls.insertPlace(pi);
	}
}