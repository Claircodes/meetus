package com.meet.together.holist.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.HangoutInfo;
import com.meet.together.holist.dto.ImageFile;
import com.meet.together.holist.dto.LikeInfo;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;
import com.meet.together.holist.dto.TakeUserInfo;
import com.meet.together.houser.dto.UserInfo;

public interface HoService {
	
	List<ListInfo> selectListInfo(ListInfo li);
	int insertListInfo(ListInfo li);
	int insertPlace(Place pi);
	int TakeUserCount(TakeUserInfo tu);
	HangoutInfo selectListContent(ListInfo li);
	List<CategoryInfo> selectCategoryInfo();
	TakeUserInfo selectTakeUserList(TakeUserInfo tu);
	List<ListInfo> selectCategory(ListInfo li);
	List<UserInfo> selectHangoutUserList(TakeUserInfo tu);
	List<ListInfo> selectParticipateUserList(TakeUserInfo tu);
	ImageFile imageSave(MultipartFile imageFile);
	int updateContent(ListInfo li);
	HangoutInfo selectUpdate(ListInfo li);
	List<ListInfo> selectLikeList(LikeInfo ki);
	int likeCount(LikeInfo ki);
}