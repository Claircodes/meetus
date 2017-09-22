package com.meet.together.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.meet.together.user.dao.UserDao;
import com.meet.together.user.dto.UserInfo;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public List<UserInfo> siginUser(UserInfo ui) {
		return userDao.signupUser(ui);
	}

}
