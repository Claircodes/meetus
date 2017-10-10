package com.meet.together.list.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.meet.together.list.dto.ListInfo;
import com.meet.together.list.dto.Place;

@Repository
public class ListDaoImpl extends SqlSessionDaoSupport implements ListDao {
	@Override
	public int insertListInfo(ListInfo li) {
		return this.getSqlSession().insert("listInfo.INSERT_LIST", li);
	}

	@Override
	public int insertPlace(Place pi) {
		return this.getSqlSession().insert("place.INSERT_PLACE", pi);
	}

}
