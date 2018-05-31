package com.lol.hgl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FWLBController {
	
	   @RequestMapping(value="FWLBList.do")
	   public String FWLList() {   
	      return "FWLBList";
	   }
	   
	   @RequestMapping(value="FWLBDetail.do")
	   public String FWLBDetail() {   
	      return "FWLBDetail";
	   }
}
