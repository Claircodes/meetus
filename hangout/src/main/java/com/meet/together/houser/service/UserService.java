package com.meet.together.houser.service;

import java.util.List;

import com.meet.together.houser.dto.UserInfo;

public interface UserService {
	public int signinUser(UserInfo ui);
	
	public UserInfo login(UserInfo ui);
	
	public List<UserInfo> overlapId(UserInfo ui);
	
	public UserInfo getUserProfile(UserInfo ui);
}
