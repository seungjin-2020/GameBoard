package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.MemberService.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/member/test")
	public String showtest() {
		return "member/test";
	}
	@RequestMapping("/member/signup")
	String showlogin() {
		return "member/signup";
	}
	@RequestMapping("/member/main")
	String showmain() {
		return "member/main";
	}
	@RequestMapping("/member/login")
	String showLogin() {
		return "member/login";
	}
	@RequestMapping("/member/dojoin")
	@ResponseBody
	String dojoin(@RequestParam Map<String, Object> param){
		
		Map<String, Object> joinRs = memberService.join(param);
		String resultCode = (String)joinRs.get("resultCode");
		if( resultCode.startsWith("S-")) {
			log.info("회원가입 성공");
			
		}else {
			log.info("회원가입 실패");
			
		}
		return (String)joinRs.get("msg");
	}
	@RequestMapping("/member/dologin")
	String dologin(@RequestParam Map<String, Object> param){
		return "member/main";
	}

	
}
