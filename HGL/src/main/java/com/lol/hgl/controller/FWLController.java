package com.lol.hgl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FWLController {
	
	   @RequestMapping(value="FWLList.do")
	   public String FWLList() {   
	      return "FWLList";
	   }
	   
	   
	   @RequestMapping(value="FWLInsertForm.do")
	   public String FWLInsertForm() {   
	      return "FWLInsert";
	   }
	   
	   @RequestMapping(value="FWLInsert.do")
	   @ResponseBody
	   public String FWLInsert(String wishContent) {
		   System.out.println(wishContent);
	      return "FWLInsert";
	   }
	   
}
