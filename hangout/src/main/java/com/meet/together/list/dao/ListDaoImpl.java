package com.meet.together.list.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.meet.together.list.dto.ListInfo;

@Repository
public class ListDaoImpl extends SqlSessionDaoSupport implements ListDao
{
	@Override
	public int insertListInfo(ListInfo li) 
	{
		return this.getSqlSession().insert("list.INSERT_LIST", li);
	}
	
}
