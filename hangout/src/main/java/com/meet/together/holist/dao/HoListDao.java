package com.meet.together.holist.dao;

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
 
public interface HoListDao {
	int insertListInfo(ListInfo li);

	int insertPlace(Place pi);
	
	int TakeUserCount(TakeUserInfo tu);

	List<ListInfo> selectListInfo(ListInfo li);
	
	TakeUserInfo selectTakeUserList(TakeUserInfo tu);
	
	List<UserInfo> selectHangoutUserList(TakeUserInfo tu);
	
	HangoutInfo selectListContent(ListInfo li);
	
	List<ListInfo> selectParticipateUserList(TakeUserInfo tu);
	
	List<CategoryInfo> selectCategoryInfo();

	List<ListInfo> selectCategory(ListInfo li);

	ImageFile insertImageFile(MultipartFile multipartFile);

	int updateContent(ListInfo li);

	HangoutInfo selectUpdate(ListInfo li);
	
	List<ListInfo> selectLikeList(LikeInfo ki);
	
	int likeCount(LikeInfo ki);
	
	int deleteHangout(HangoutInfo hi);
	
	int deleteTakeUser(TakeUserInfo tui);
}