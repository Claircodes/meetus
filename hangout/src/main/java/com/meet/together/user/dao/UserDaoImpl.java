package com.meet.together.user.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.meet.together.user.dto.UserInfo;

@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Override
	//회원가입 userinfo형식으로 받고 int로 반환
	public int signupUser(UserInfo ui) {
		return this.getSqlSession().insert("user.USER_SIGUP", ui);
	}



}