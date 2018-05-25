package com.lol.hgl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lol.hgl.bizz.MemberBizz;

@Controller
public class MemberController {
	
	@Autowired
	private MemberBizz bizz;
	
	@RequestMapping(value = "MemberSignUpForm.do")
	public String memberSignUpform() {	
		return "MemberSignUp";
	}
	
	@RequestMapping(value="IDChk.do")
	public String IDChk(String id) {
		String res ="";
		return res;
	}
	
	@RequestMapping(value = "MemberSignUp.do")
	public String memberSingUp() {
		return "MemberLogin";
	}

}
