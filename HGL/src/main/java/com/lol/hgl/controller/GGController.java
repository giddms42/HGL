package com.lol.hgl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GGController {
	
	@RequestMapping(value = "GGListForm.do")
	   public String GGListForm() {   
	      return "GGList";
	   }
	
	@RequestMapping(value = "GGInsertForm.do")
	   public String GGInsertForm() {   
	      return "GGInsert";
	   }

}
