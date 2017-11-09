package com.meet.together.holist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.meet.together.holist.dao.HoListDao;
import com.meet.together.holist.dto.CategoryInfo;
import com.meet.together.holist.dto.HangoutInfo;
import com.meet.together.holist.dto.ImageFile;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;
import com.meet.together.holist.dto.TakeUserInfo;
import com.meet.together.houser.dto.UserInfo;

@Service
public class HoServiceImpl implements HoService {
	@Autowired
	HoListDao listDao;

	@Override
	public int insertListInfo(ListInfo li) {
		return listDao.insertListInfo(li);
	}
	@Override
	public int updateContent(ListInfo li) {
		return listDao.updateContent(li);
	}
	@Override
	public int insertPlace(Place pi) {
		return listDao.insertPlace(pi);
	}

	@Override
	public List<ListInfo> selectListInfo(ListInfo li) {
		return listDao.selectListInfo(li);
	}

	@Override
	public HangoutInfo selectListContent(ListInfo li) {
		return listDao.selectListContent(li);
	}

	@Override
	public List<CategoryInfo> selectCategoryInfo() {
		return listDao.selectCategoryInfo();
	}

	@Override
	public List<ListInfo> selectCategory(ListInfo li) {
		return listDao.selectCategory(li);
	}

	@Override
	public int TakeUserCount(TakeUserInfo tu) {
		return listDao.TakeUserCount(tu);
	}

	@Override
	public List<UserInfo> selectHangoutUserList(TakeUserInfo tu){
		return listDao.selectHangoutUserList(tu);
	}

	@Override
	public TakeUserInfo selectTakeUserList(TakeUserInfo tu) {
		return listDao.selectTakeUserList(tu);
	}

	@Override
	public List<ListInfo> selectParticipateUserList(TakeUserInfo tu) {
		return listDao.selectParticipateUserList(tu);
	}
	
	public ImageFile imageSave(MultipartFile multipartFile) {
		return listDao.insertImageFile(multipartFile);
	}
	@Override
	public HangoutInfo selectUpdate(ListInfo li) {
		return listDao.selectUpdate(li);
	}
	
	/**
	 * Multipart File의 내용을 파일로 저장, 저장 후 저장된 파일 이름을 반환
	 */
//	private String saveToFile(MultipartFile src, String id) throws IOException {
//		String fileName = src.getOriginalFilename();
//		byte[] bytes = src.getBytes();
//		String saveFileName = id + "." + getExtension(fileName);
//		String savePath = ImageFile.IMAGE_DIR + saveFileName;
////		String savePath = ImageFile.IMAGE_DIR + fileName;
//		/* 파일 쓰기 */
//		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(savePath));
//		bos.write(bytes);
//		bos.flush();
//		bos.close();
//		
//		return saveFileName;
//	}
//
//	private String getExtension(String fileName) {
//		int dotPosition = fileName.lastIndexOf('.');
//		
//		if (-1 != dotPosition && fileName.length() - 1 > dotPosition) {
//			return fileName.substring(dotPosition + 1);
//		} else {
//			return "";
//		}
//	}

}