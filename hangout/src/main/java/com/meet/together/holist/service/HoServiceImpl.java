package com.meet.together.holist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.meet.together.holist.dao.HoListDao;
import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;

@Service
public class HoServiceImpl implements HoService {
	@Autowired
	HoListDao listDao;

	@Override
	public int insertListInfo(ListInfo li) {
		return listDao.insertListInfo(li);
	}

	@Override
	public int insertPlace(Place pi) {
		return listDao.insertPlace(pi);
	}

	@Override
	public List<ListInfo> selectListInfo(ListInfo li) {
		return listDao.selectListInfo(li);
	}

	@Override
	public ListInfo selectListContent(ListInfo li) {
		return listDao.selectListContent(li);
	}
	@Override
	public List<CategoryInfo> selectCategoryInfo() {
		return listDao.selectCategoryInfo();
	}

	@Override
	public List<ListInfo> selectCategory(ListInfo li) {
		return listDao.selectCategory(li);
	}

}
