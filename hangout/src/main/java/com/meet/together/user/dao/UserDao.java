package com.meet.together.user.dao;

import java.util.List;

import com.meet.together.user.dto.UserInfo;

public interface UserDao {

	public UserInfo signinUser(UserInfo ui);

	public List<UserInfo> signupUser(UserInfo ui);

}