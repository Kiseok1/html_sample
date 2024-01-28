package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FController {
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("sidebar")
	public String sidebar() {
		return "sidebar";
	}
	
	@RequestMapping("main")
	public String profile() {
		return "/profile/main";
	}
	
	@RequestMapping("content")
	public String content() {
		return "/profile/content";
	}
	
	@RequestMapping("media")
	public String media() {
		return "/profile/media";
	}
	
	@RequestMapping("reply")
	public String reply() {
		return "/profile/reply";
	}
	
	@RequestMapping("like")
	public String like() {
		return "/profile/like";
	}
	
	
	
	
	@RequestMapping("content2")
	public String content2() {
		return "/profile/content2";
	}
	
	@RequestMapping("media2")
	public String media2() {
		return "/profile/media2";
	}
	
	@RequestMapping("reply2")
	public String reply2() {
		return "/profile/reply2";
	}
	
	@RequestMapping("like2")
	public String like2() {
		return "/profile/like2";
	}
	
	@RequestMapping("mypage")
	public String mypage() {
		return "/profile/mypage";
	}
	@RequestMapping("mypage_account")
	public String mypage_account() {
		return "/profile/mypage_account";
	}
	@RequestMapping("mypage_pw_modify")
	public String mypage_pw_modify() {
		return "/profile/mypage_pw_modify";
	}
	@RequestMapping("profile_modify")
	public String profile_modify() {
		return "/profile/profile_modify";
	}
	
}
