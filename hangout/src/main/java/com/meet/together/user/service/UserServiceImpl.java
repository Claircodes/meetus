package com.meet.together.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.meet.together.user.dao.UserDao;
import com.meet.together.user.dto.UserInfo;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public int signinUser(UserInfo ui) {
		return userDao.signupUser(ui);
	}

}
