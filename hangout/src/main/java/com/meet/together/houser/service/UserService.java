package com.meet.together.houser.service;

import java.util.List;

import com.meet.together.houser.dto.UserInfo;

public interface UserService {
	public List<UserInfo> selectUser(UserInfo ui);
	
	public int signinUser(UserInfo ui);
	
	public int updateUser(UserInfo ui);
	
	public int deleteUser(UserInfo ui);
	
	public UserInfo login(UserInfo ui);
	
	public List<UserInfo> overlapId(UserInfo ui);
	
	public List<UserInfo> overlapPwd(UserInfo ui);
	
	public UserInfo getUserProfile(UserInfo ui);
}