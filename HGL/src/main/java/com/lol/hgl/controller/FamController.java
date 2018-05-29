package com.lol.hgl.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FamController {
	
	  @RequestMapping(value="FamHealthInsert.do")
	  public String FamHealthInsertForm() {
	     return "FamHealthInsert";
	  }
}
