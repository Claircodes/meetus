package com.meet.together.user.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.meet.together.user.dto.UserInfo;

@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Override
	public int signupUser(UserInfo ui) {
		return this.getSqlSession().insert("user.USER_SIGNUP", ui);
	}

	@Override
	public UserInfo login(UserInfo ui) 
	{
		return this.getSqlSession().selectOne("user.USER_LOGIN", ui);
	}

	@Override
	public List<UserInfo> overlapId(UserInfo ui) 
	{
		return this.getSqlSession().selectList("user.USER_OVERLAP_ID", ui);
	}
	
	@Override
	public List<UserInfo> overlapPwd(UserInfo ui) 
	{
		return this.getSqlSession().selectList("user.USER_OVERLAP_PWD", ui);
	}

	@Override
	public UserInfo getUserProfile(UserInfo ui) {
		return this.getSqlSession().selectOne("user.GET_USER_PROFILE", ui);
	}

	@Override
	public int updateUser(UserInfo ui) {
		return this.getSqlSession().update("user.USER_UPDATE", ui);
	}
}