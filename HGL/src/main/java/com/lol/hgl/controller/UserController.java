package com.lol.hgl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping(value = "UserSignUp.do")
	public String map(Model model) {
		
		return "UserSignUp";
	}

}
