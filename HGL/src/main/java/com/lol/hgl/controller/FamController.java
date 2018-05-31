package com.lol.hgl.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FamController {
	
	  @RequestMapping(value="FamInsertForm.do")
	  public String FamInsertForm() {
	     return "FamInsert";
	  }
	  
	  @RequestMapping(value="FamDetailForm.do")
	  public String FamDetailForm() {
	     return "FamDetail";
	  }
	  
	  @RequestMapping(value="FamHealthInsertForm.do")
	  public String FamHealthInsertForm() {
	     return "FamHealthInsert";
	  }	  
	  
}
