package com.meet.together.list.service;

import java.util.List;

import com.meet.together.list.dto.CategoryInfo;
import com.meet.together.list.dto.ListInfo;
import com.meet.together.list.dto.Place;

public interface ListService {
	
	List<ListInfo> selectListInfo(ListInfo li);
	int insertListInfo(ListInfo li);
	int insertPlace(Place pi);
	List<CategoryInfo> selectCategoryInfo();
	List<ListInfo> selectCategory(ListInfo li);
}
