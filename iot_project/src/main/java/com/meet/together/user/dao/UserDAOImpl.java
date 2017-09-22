package com.meet.together.user.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.meet.together.user.dto.UserInfo;


@Repository
public class UserDAOImpl extends SqlSessionDaoSupport implements UserDAO
{

	@Override
	public UserInfo signinUser(UserInfo ui)
	{
		return null;
	}

	@Override
	public List<UserInfo> signupUser(UserInfo ui) 
	{
		return this.getSqlSession().selectList("user.USER_SIGIN", ui);
	}
	
}
