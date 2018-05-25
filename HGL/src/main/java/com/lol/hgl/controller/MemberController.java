package com.lol.hgl.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping(value = "MemberSignUpForm.do")
	public String memberSignUpform() {	
		return "MemberSignUp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "MemberSignUp.do")
	public String memberSingUp() {
		return "MemberLogin";
	}
	
	@RequestMapping(value="MemberLogin.do")
	public String MemberLogin(Locale locale, Model model) {
		return "MemberLogin";
	}
	
	@RequestMapping(value="MemberSearch.do")
	public String MemberSearch(Locale locale, Model model) {
		return "MemberSearch";
	}

}
