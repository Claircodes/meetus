package com.meet.together.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.meet.together.user.dao.UserDAO;
import com.meet.together.user.dto.UserInfo;

public class UserServiceImpl implements UserService
{
	@Autowired
	private UserDAO userDao;
	
	@Override
	public List<UserInfo> siginUser(UserInfo ui)
	{
		return userDao.signupUser(ui);
	}

}
