package com.meet.together.holist.dao;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.HangoutInfo;
import com.meet.together.holist.dto.ImageFile;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;
import com.meet.together.holist.dto.TakeUserInfo;
import com.meet.together.houser.dto.UserInfo;

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
	public HangoutInfo selectListContent(ListInfo li) {
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

	@Override
	public int TakeUserCount(TakeUserInfo tu) {
		return this.getSqlSession().insert("takeuser.INSERT_TAKEUSER", tu);
	}
	
	@Override
	public List<UserInfo> selectHangoutUserList(TakeUserInfo tu){
		return this.getSqlSession().selectList("takeuser.SELECT_HANGOUT_USER", tu);
	}

	@Override
	public TakeUserInfo selectTakeUserList(TakeUserInfo tu) {
		return this.getSqlSession().selectOne("takeuser.SELECT_TAKEUSER",tu);
	}
	
	@Override
	public List<ListInfo> selectParticipateUserList(TakeUserInfo tu){
		return this.getSqlSession().selectList("takeuser.SELECT_PARTICIPATE_USER", tu);
	}

	@Override
	public ImageFile insertImageFile(MultipartFile multipartFile) {
		String genId = UUID.randomUUID().toString();
		ImageFile imageFile = null;
		try {
			imageFile = new ImageFile(UUID.randomUUID().toString(), 
					multipartFile.getContentType(),
					(int)multipartFile.getSize(),
					saveToFile(multipartFile, genId));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return imageFile;
	}
	private String saveToFile(MultipartFile src, String id) throws IOException {
		String fileName = src.getOriginalFilename();
		byte[] bytes = src.getBytes();
		String savePath = ImageFile.IMAGE_DIR + fileName;
		/* 파일 쓰기 */
		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(savePath));
		bos.write(bytes);
		bos.flush();
		bos.close();
		
		return fileName;
	}

	@Override
	public int updateContent(ListInfo li) {
		return this.getSqlSession().update("listInfo.UPDATE_LIST", li);
	}

	@Override
	public HangoutInfo selectUpdate(ListInfo li) {
		return this.getSqlSession().selectOne("listInfo.SELECT_LIST_ONE",li);
	}
}