package com.meet.together.houser.dao;

import java.util.List;

import com.meet.together.houser.dto.UserInfo;

public interface UserDao {

	public int signupUser(UserInfo ui);
	public int updateUser(UserInfo ui);
	public List<UserInfo> selectUser(UserInfo ui);
	public UserInfo login(UserInfo ui);
	public List<UserInfo> overlapId(UserInfo ui);
	public List<UserInfo> overlapPwd(UserInfo ui);
	public UserInfo getUserProfile(UserInfo ui);
}