package com.meet.together.houser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.meet.together.houser.dao.UserDao;
import com.meet.together.houser.dto.UserInfo;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public int signinUser(UserInfo ui) {
		return userDao.signupUser(ui);
	}

	@Override
	public UserInfo login(UserInfo ui) {
		UserInfo rUser = userDao.login(ui);
		if(rUser != null && rUser.getUserPwd().equals(ui.getUserPwd()))
		{
			return rUser;
		}
		return null;
	}

	@Override
	public List<UserInfo> overlapId(UserInfo ui) 
	{
		return userDao.overlapId(ui);
	}

	@Override
	public UserInfo getUserProfile(UserInfo ui) {
		return userDao.getUserProfile(ui);
	}
	
	@Override
	public int updateUser(UserInfo ui) {
		return userDao.updateUser(ui);
	}
	
	@Override
	public List<UserInfo> overlapPwd(UserInfo ui) 
	{
		return userDao.overlapPwd(ui);
	}



}
