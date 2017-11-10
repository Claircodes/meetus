package com.meet.together.holist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.meet.together.holist.dto.HangoutInfo;
import com.meet.together.holist.dto.ImageFile;
import com.meet.together.holist.dto.LikeInfo;
import com.meet.together.holist.dto.ListInfo;
import com.meet.together.holist.dto.Place;
import com.meet.together.holist.dto.TakeUserInfo;
import com.meet.together.holist.service.HoService;
import com.meet.together.houser.dto.UserInfo;

@Controller
public class HoController {
	@Autowired
	HoService ls;
 
	//메인화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainsite() {
		return "main";
	}
	//이미지 
	@RequestMapping(value="/image1", method=RequestMethod.POST)
	public String hangoutImage(@RequestParam MultipartFile imageFile, ModelMap modelMap) {
		ImageFile fileInfo = ls.imageSave(imageFile);
		
		modelMap.put("imageFile", fileInfo);
		
		return "uploadComplete";
	}

	@RequestMapping(value="/image", method=RequestMethod.POST)
    public @ResponseBody ModelMap handleFileUpload(@RequestParam("file") MultipartFile file,ModelMap modelMap) {
        try {
    		ImageFile fileInfo = ls.imageSave(file);
    		modelMap.put("fileName", fileInfo.getFileName());
        } catch (Exception e) {
            e.printStackTrace();
            modelMap.put("error",e);
            //return ResponseEntity.badRequest().build();
        }
		return modelMap;
    }
	@RequestMapping(value = "/hangout/insert", method = RequestMethod.POST)
	public @ResponseBody ModelMap insertListInfo(@RequestBody ListInfo li, ModelMap hm) {
		int result = ls.insertListInfo(li);
		if (result == 1) {
			hm.put("msg", "모임생성이 완료되었습니다.");
			hm.put("url", "");
		} else {
			hm.put("msg", "모임생성 실패, 정보를 확인하세요");
			hm.put("url", "hangout/create");
		}
		return hm;
	}
	
//모임 업데이트시 
	@RequestMapping(value = "/hangout/updateContent", method = RequestMethod.POST)
	public @ResponseBody ModelMap updateContent(@RequestBody ListInfo li, ModelMap hm)	{
		int result = ls.updateContent(li);
		if (result == 1) {
			hm.put("msg", "모임수정 완료되었습니다.");
			hm.put("url", "hangout?hangoutNum="+li.getHangoutNum());
		} else {
			hm.put("msg", "모임수정 실패, 정보를 확인하세요");
			hm.put("url", "hangout/update");
		}
		return hm;
	}
//	@RequestMapping(value = "/hangout/updateSetting", method = RequestMethod.POST)
//	public @ResponseBody ModelMap updateSetting(@RequestBody ListInfo li, ModelMap hm)	{
//		 ListInfo ho = ls.selectUpdate(li);
//		 hm.put("hoUpdateSet", ho);
//		return hm;
//	}	
	
	@RequestMapping(value = "/hangout/create", method = RequestMethod.GET)
	public String createsite(UserInfo ui) {
		return "hangout/create";
	}

	@RequestMapping(value = "/hangout/update", method = RequestMethod.POST)
	public ModelMap updatesite(@ModelAttribute("hangoutinfo") ListInfo li,ModelMap hm) {
		 HangoutInfo ho = ls.selectUpdate(li);
		 hm.put("HangoutInfo", ho);
		return hm;
	}

	@RequestMapping(value = "/hangout/list", method = RequestMethod.POST)
	public @ResponseBody ModelMap selectList(@RequestBody ListInfo li, ModelMap hm) {
		List<ListInfo> list = ls.selectListInfo(li);
		hm.put("list", list);
		return hm;
	}
	@RequestMapping(value = "/place", method = RequestMethod.POST)
	public @ResponseBody Place place(@RequestBody Place pi) {
		int result = ls.insertPlace(pi);
		if(result==1){
			return pi;
		}
		return null;
	}
	@RequestMapping(value = "/hangout/takeuser/check", method = RequestMethod.POST)
	public @ResponseBody ModelMap selectTakeUserList(@RequestBody TakeUserInfo tu, ModelMap hm) {
		TakeUserInfo list = ls.selectTakeUserList(tu);
		hm.put("list", list);
		return hm;
	}
	
	@RequestMapping(value = "/hangout/takeuser/list", method = RequestMethod.POST)
	public @ResponseBody ModelMap selectHangoutUserList(@RequestBody TakeUserInfo tu, ModelMap hm) {
		List<UserInfo> list = ls.selectHangoutUserList(tu);
		hm.put("list", list);
		return hm;
	}

	@RequestMapping(value = "/hangout/golist", method = RequestMethod.GET)
	public String listsite() {
		return "hangout/list";
	}
	
	@RequestMapping(value = "/hangout/drop", method = RequestMethod.GET)
	public String dropzonetest() {
		return "test/dropzonetest";
	}
	@RequestMapping(value = "/hangout/airmode", method = RequestMethod.GET)
	public String airmodetest() {
		return "test/airmode";
	}
	@RequestMapping(value = "/hangout/mylist", method = RequestMethod.GET)
	public String myListSite(UserInfo ui) {
		return "hangout/myholist";
	}
	
	@RequestMapping(value = "/hangout/partimylist", method = RequestMethod.GET)
	public String myParticipateSite(UserInfo ui) {
		return "hangout/myparlist";
	}
	
	@RequestMapping(value = "/hangout/mylikelist", method = RequestMethod.GET)
	public String mylikeSite(UserInfo ui) {
		return "hangout/mylikelist";
	}
	@RequestMapping(value = "/test/fire", method = RequestMethod.GET)
	public String firebasetest(UserInfo ui) {
		return "test/firebase";
	} 
	   @RequestMapping(value = "/hangout", method = RequestMethod.GET)
	   public String listsiteinfo(ListInfo li,ModelMap model) {
		  HangoutInfo hi = ls.selectListContent(li);
	      model.addAttribute("ListInfo", hi );
	      return "hangout/hangout";
	   }
	   
		@RequestMapping(value = "/hangout/takeuser/insert", method = RequestMethod.POST)
		public @ResponseBody ModelMap TakeUserCount(@RequestBody TakeUserInfo tu, ModelMap hm) {
			int result = ls.TakeUserCount(tu);
			if (result == 1) {
				hm.put("msg", "참가신청이 완료되었습니다.");
				hm.put("url", "hangout");
			} else {
				hm.put("msg", "참가신청 실패, 정보를 확인하세요");
				hm.put("url", "hangout");
			}
			return hm;
		}
		
		@RequestMapping(value = "/hangout/like/insert", method = RequestMethod.POST)
		public @ResponseBody ModelMap likeCount(@RequestBody LikeInfo ki, ModelMap hm) {
			int result = ls.likeCount(ki);
			if (result == 1) {
				hm.put("msg", "찜하기 완료!");
				hm.put("url", "hangout/golist");
			} else {
				hm.put("msg", "찜하기 실패, 정보를 확인하세요");
				hm.put("url", "hangout/golist");
			}
			return hm;
		}
		
		@RequestMapping(value = "/hangout/takeuser/participate", method = RequestMethod.POST)
		public @ResponseBody ModelMap selectParticipateUserList(@RequestBody TakeUserInfo tu, ModelMap hm) {
			List<ListInfo> list = ls.selectParticipateUserList(tu);
			hm.put("list", list);
			return hm;
		}
		
		@RequestMapping(value = "/hangout/like/list", method = RequestMethod.POST)
		public @ResponseBody ModelMap selectLikeList(@RequestBody LikeInfo ki, ModelMap hm) {
			List<ListInfo> list = ls.selectLikeList(ki);
			hm.put("list", list);
			return hm;
		}
		
		@RequestMapping(value = "/hangout/delete", method = RequestMethod.POST)
		public @ResponseBody ModelMap deleteHangout(@RequestBody HangoutInfo hi, ModelMap hm)
		{
			int result = ls.deleteHangout(hi);
			if(result == 1)
			{
				hm.put("msg", "게시글 삭제가 완료되었습니다.");
				hm.put("url", "hangout/mylist");
			}
			else
			{
				hm.put("msg", "게시글 삭제에 실패했습니다 다시 시도해주세요");
			}
			return hm;
		}
		
		@RequestMapping(value = "/hangout/takeuser/cancellation", method = RequestMethod.POST)
		public @ResponseBody ModelMap cancellation(@RequestBody TakeUserInfo tui, ModelMap hm) {
			int result = ls.deleteTakeUser(tui);
			if(result == 1)
			{
				hm.put("msg", "참가를 취소하셨습니다.");
				hm.put("url", "hangout/mylist");
			}
			else
			{
				hm.put("msg", "에러");
			}
			return hm;
		}
}