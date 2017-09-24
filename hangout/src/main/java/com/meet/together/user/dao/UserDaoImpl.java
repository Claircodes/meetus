package com.meet.together.user.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.meet.together.user.dto.UserInfo;

@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Override
	public int signupUser(UserInfo ui) {
		return this.getSqlSession().insert("user.USER_SIGIN", ui);
	}



}