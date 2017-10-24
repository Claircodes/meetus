package com.meet.together.user.service;

import java.util.List;

import com.meet.together.user.dto.UserInfo;

public interface UserService {
	public int signinUser(UserInfo ui);
	
	public int updateUser(UserInfo ui);
	
	public UserInfo login(UserInfo ui);
	
	public List<UserInfo> overlapId(UserInfo ui);
	
	public List<UserInfo> overlapPwd(UserInfo ui);
	
	public UserInfo getUserProfile(UserInfo ui);
}
