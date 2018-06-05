package com.lol.hgl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.CalBizz;


@Controller
public class CalController {
	
	@Autowired
	private CalBizz bizz;
	
	@RequestMapping(value = "CalListForm.do")
	   public String CalListForm(Model model, String memberId, String year, String month) {
		model.addAttribute("year", year);
		model.addAttribute("month", month);
	      return "CalList";
	   }
	
	@RequestMapping(value="CalListCountAjax.do")
	@ResponseBody
	public String CalListCountAjax(Model model, String memberId, String yyyyMMdd) {
		System.out.println("컨트롤러"+yyyyMMdd);
		System.out.println("컨트롤러"+memberId);
		int r = bizz.getCalViewCount(memberId, yyyyMMdd);
		System.out.println("일정 횟수"+r);
		String res = String.valueOf(r);
		return res;
	}

}
