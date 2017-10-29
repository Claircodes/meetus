package com.meet.together;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.meet.together.houser.dto.UserInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//메인화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainsite(UserInfo ui) {
		return "main";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 *                       home(Locale locale, Model model) {
	 *                       logger.info("Welcome home! The client locale is
	 *                       {}.", locale);
	 * 
	 *                       Date date = new Date(); DateFormat dateFormat =
	 *                       DateFormat.getDateTimeInstance(DateFormat.LONG,
	 *                       DateFormat.LONG, locale);
	 * 
	 *                       String formattedDate = dateFormat.format(date);
	 * 
	 *                       model.addAttribute("serverTime", formattedDate );
	 * 
	 *                       return "home"; }
	 */
	// 정규 css 테스트용
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String testsite(UserInfo ui) {
		return "test/test";
	}

	// 정규 css 테스트용
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2site(UserInfo ui) {
		return "test/test2";
	}

	// datepicker 테스트용
	@RequestMapping(value = "/test/date", method = RequestMethod.GET)
	public String testdate(UserInfo ui) {
		return "test/datepick";
	}

	// create Collapsible 테스트용
	@RequestMapping(value = "/test/create", method = RequestMethod.GET)
	public String testcreate(UserInfo ui) {
		return "test/createTest";
	}

	// googlemap 테스트용
	@RequestMapping(value = "/test/map", method = RequestMethod.GET)
	public String testmap(UserInfo ui) {
		return "test/googlemap2";
	}

	// googleplace 테스트용
	@RequestMapping(value = "/test/place", method = RequestMethod.GET)
	public String testplace(UserInfo ui) {
		return "test/googleplace";
	}

	// googlesearch 테스트용
	@RequestMapping(value = "/test/search", method = RequestMethod.GET)
	public String testsearch(UserInfo ui) {
		return "test/googlesearch";
	}

	// 자동완성 테스트용
	@RequestMapping(value = "/test/auto", method = RequestMethod.GET)
	public String testauto(UserInfo ui) {
		return "test/autocomplete";
	}

	// tag 테스트용
	@RequestMapping(value = "/test/new", method = RequestMethod.GET)
	public String testtag(UserInfo ui) {
		return "test/googlemap";
	}
}
