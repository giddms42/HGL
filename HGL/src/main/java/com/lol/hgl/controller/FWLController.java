package com.lol.hgl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FWLController {
	
	   @RequestMapping(value="FWLList.do")
	   public String FWLList() {   
	      return "FWLList";
	   }
	   
}
