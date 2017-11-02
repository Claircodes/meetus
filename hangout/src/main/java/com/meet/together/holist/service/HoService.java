package com.meet.together.holist.service;

import java.util.HashMap;
import java.util.List;

import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;
import com.meet.together.holist.dto.TakeUserInfo;
import com.meet.together.houser.dto.UserInfo;

public interface HoService {
	
	List<ListInfo> selectListInfo(ListInfo li);
	int insertListInfo(ListInfo li);
	int insertPlace(Place pi);
	int TakeUserCount(TakeUserInfo tu);
	HashMap<String,Object> selectListContent(ListInfo li);
	List<CategoryInfo> selectCategoryInfo();
	List<ListInfo> selectCategory(ListInfo li);
	List<UserInfo> selectHangoutUserList(TakeUserInfo tu);
}
 