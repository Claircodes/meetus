package com.meet.together.user.dao;

import java.util.List;

import com.meet.together.user.dto.UserInfo;

public interface UserDao {

	public int signupUser(UserInfo ui);
	public UserInfo login(UserInfo ui);
	public List<UserInfo> overlapId(UserInfo ui);
}