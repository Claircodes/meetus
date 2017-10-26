package com.meet.together.holist.service;

import java.util.HashMap;
import java.util.List;

import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;

public interface HoService {
	
	List<ListInfo> selectListInfo(ListInfo li);
	int insertListInfo(ListInfo li);
	int insertPlace(Place pi);
	HashMap selectListContent(ListInfo li);
	List<CategoryInfo> selectCategoryInfo();
	List<ListInfo> selectCategory(ListInfo li);
}
