package com.lol.hgl.controller;

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

}
