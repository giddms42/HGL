package com.lol.hgl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lol.hgl.bizz.CalBizz;


@Controller
public class CalController {
	
	@Autowired
	private CalBizz bizz;
	
	@RequestMapping(value = "CalListForm.do")
	   public String CalListForm() {   
	      return "CalList";
	   }

}
