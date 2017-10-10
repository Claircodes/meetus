package com.meet.together.list.service;

import com.meet.together.list.dto.ListInfo;
import com.meet.together.list.dto.Place;

public interface ListService {
	int insertListInfo(ListInfo li);
	int insertPlace(Place pi);
}
