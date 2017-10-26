package com.meet.together.holist.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;

@Repository
public class HoListDaoImpl extends SqlSessionDaoSupport implements HoListDao {
	@Override
	public int insertListInfo(ListInfo li) {
		return this.getSqlSession().insert("listInfo.INSERT_LIST", li);
	}
 
	@Override
	public int insertPlace(Place pi) {
		return this.getSqlSession().insert("place.INSERT_PLACE", pi);
	}

	@Override
	public List<ListInfo> selectListInfo(ListInfo li) {
		return this.getSqlSession().selectList("listInfo.SELECT_LIST", li);
	}

	@Override
	public HashMap<String,Object> selectListContent(ListInfo li) {
		return this.getSqlSession().selectOne("listInfo.SELECT_LIST_ONE", li);
	}

	@Override
	public List<CategoryInfo> selectCategoryInfo() {
		return this.getSqlSession().selectList("category.SELECT_CATEGORY_INFO");
	}

	@Override
	public List<ListInfo> selectCategory(ListInfo li) {
		return this.getSqlSession().selectList("listInfo.SELECT_CATEGORY_LIST", li);
	}
}
