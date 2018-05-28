package com.lol.hgl.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping(value="AdminMangeForm.do")
	public String AdminMangeForm(Locale locale, Model model) {
		return "AdminMange";
	}
	
	@RequestMapping(value="AdminUserInfoForm.do")
	public String AdminUserInfoForm(Locale locale, Model model) {
		return "AdminUserInfo";
	}
	
	@RequestMapping(value="AdminSearchUserForm.do")
	public String AdminSearchUserForm(Locale locale, Model model) {
		return "AdminSearchUser";
	}
}
