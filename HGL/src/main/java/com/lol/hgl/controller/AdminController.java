package com.lol.hgl.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping(value="AdminMange.do")
	public String AdminMange(Locale locale, Model model) {
		return "AdminMange";
	}
}
