package com.meet.together.list.dao;

import com.meet.together.list.dto.ListInfo;
import com.meet.together.list.dto.Place;

public interface ListDao {
	int insertListInfo(ListInfo li);

	int insertPlace(Place pi);
}
