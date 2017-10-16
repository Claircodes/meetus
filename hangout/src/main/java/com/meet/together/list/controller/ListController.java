package com.meet.together.list.controller;

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

@Controller
public class ListController {
   @Autowired
   ListService ls;

   @RequestMapping(value = "/insert/list", method = RequestMethod.POST)
   public @ResponseBody ModelMap insertListInfo(@RequestBody ListInfo li, ModelMap hm) {
      int result = ls.insertListInfo(li);
      if (result == 1) {
         hm.put("msg", "모임생성이 완료되었습니다.");
         hm.put("url", "main");
      } else {
         hm.put("msg", "모임생성 실패, 정보를 확인하세요");
         hm.put("url", "hangout/create");
      }
      return hm;
   }

   
   @RequestMapping(value = "/place", method = RequestMethod.POST)
   public @ResponseBody int insertPlace(@RequestBody Place pi) {
      return ls.insertPlace(pi);
   }
}