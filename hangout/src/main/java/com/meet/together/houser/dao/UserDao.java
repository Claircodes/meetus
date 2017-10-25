package com.meet.together.houser.dao;

import java.util.List;

import com.meet.together.houser.dto.UserInfo;

public interface UserDao {

	public int signupUser(UserInfo ui);
	public UserInfo login(UserInfo ui);
	public List<UserInfo> overlapId(UserInfo ui);
	public UserInfo getUserProfile(UserInfo ui);
}