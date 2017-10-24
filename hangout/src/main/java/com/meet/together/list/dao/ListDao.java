package com.meet.together.list.dao;

import java.util.List;

import com.meet.together.list.dto.CategoryInfo;
import com.meet.together.list.dto.ListInfo;
import com.meet.together.list.dto.Place;

public interface ListDao {
	int insertListInfo(ListInfo li);

	int insertPlace(Place pi);

	List<ListInfo> selectListInfo(ListInfo li);

	ListInfo selectListContent(ListInfo li);

	List<CategoryInfo> selectCategoryInfo();

	List<ListInfo> selectCategory(ListInfo li);
}
