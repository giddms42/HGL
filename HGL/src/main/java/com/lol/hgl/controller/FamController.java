package com.lol.hgl.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FamController {
	
	  @RequestMapping(value="FamInsert.do")
	  public String FamHealthInsertForm() {
	     return "FamInsert";
	  }
	  @RequestMapping(value="FamDetail.do")
	  public String FamDetailForm() {
	     return "FamDetail";
	  }
}
