package com.meet.together.holist.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.meet.together.holist.dao.HoListDao;
import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;
import com.meet.together.holist.dto.TakeUserInfo;
import com.meet.together.houser.dto.UserInfo;

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
	public HashMap<String,Object> selectListContent(ListInfo li) {
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

	@Override
	public int TakeUserCount(TakeUserInfo tu) {
		return listDao.TakeUserCount(tu);
	}

	@Override
	public List<UserInfo> selectHangoutUserList(TakeUserInfo tu){
		return listDao.selectHangoutUserList(tu);
	}

	@Override
	public TakeUserInfo selectTakeUserList(TakeUserInfo tu) {
		return listDao.selectTakeUserList(tu);
	}

	@Override
	public List<ListInfo> selectParticipateUserList(TakeUserInfo tu) {
		return listDao.selectParticipateUserList(tu);
	}
}