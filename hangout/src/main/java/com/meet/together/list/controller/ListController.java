package com.meet.together.list.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.meet.together.list.dto.ListInfo;
import com.meet.together.list.service.ListService;

@Controller
public class ListController 
{
	@Autowired
	ListService ls;
	
	@RequestMapping(value = "insert/list", method=RequestMethod.POST)
	public @ResponseBody int insertListInfo(@RequestBody ListInfo li)
	{
		return ls.insertListInfo(li);
	}
}
