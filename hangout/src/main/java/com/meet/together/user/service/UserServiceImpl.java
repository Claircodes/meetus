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
	//회원가입 userinfo형식으로 받고 int로 반환
	public int siginUser(UserInfo ui) {
		return userDao.signupUser(ui);
	}

}
