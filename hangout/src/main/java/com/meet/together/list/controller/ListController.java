package com.meet.together.list.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.meet.together.list.dto.ListInfo;
import com.meet.together.list.dto.Place;
import com.meet.together.list.service.ListService;
import com.meet.together.user.dto.UserInfo;

@Controller
public class ListController {
	@Autowired
	ListService ls;

	@RequestMapping(value = "/insert/list", method = RequestMethod.POST)
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

	@RequestMapping(value = "/select/list", method = RequestMethod.POST)
	public @ResponseBody ModelMap selectList(@RequestBody ListInfo li, ModelMap hm) {
		List<ListInfo> list = ls.selectListInfo(li);
		hm.put("list", list);
		return hm;
	}

	@RequestMapping(value = "/listinfo", method = RequestMethod.GET)
	public String listsiteinfo(UserInfo ui) {
		return "hangout/listinfo";
	}

	@RequestMapping(value = "/select/listcontent", method = RequestMethod.POST)
	public @ResponseBody ModelMap selectListContent(@RequestBody ListInfo li, ModelMap hm) {
		 ListInfo li2 = ls.selectListContent(li);
			if (li2 != null) {
				hm.put("list", li2);
			} else {
				hm.put("msg", "존재하지않는 게시물입니다. ");
				hm.put("url", "user/list");
			}
		return hm;
	}

	@RequestMapping(value = "/place", method = RequestMethod.POST)
	public @ResponseBody int insertPlace(@RequestBody Place pi) {
		return ls.insertPlace(pi);
	}
}