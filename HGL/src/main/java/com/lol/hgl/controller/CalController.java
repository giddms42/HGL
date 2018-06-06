package com.lol.hgl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.CalBizz;
import com.lol.hgl.dao.Util;
import com.lol.hgl.dto.calDto;


@Controller
public class CalController {
	
	@Autowired
	private CalBizz bizz;
	
	@RequestMapping(value = "CalListForm.do")
	   public String CalListForm(Model model, String memberId, int year, int month) {
		String month2 = "";
		if(month < 10) {
			month2 = month2 + "0" + month;
		} else {
			month2 = month2 + month;
		}
		
		String yyyyMM = ""+year+month2;
		List<calDto> cList= bizz.selectAll(memberId, yyyyMM);
		model.addAttribute("year", year);
		model.addAttribute("month", month2);
		model.addAttribute("memberId", memberId);
		model.addAttribute("cList", cList);
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
		
	@RequestMapping(value="CalInsertForm.do")
	public String CalInsertForm(Model model, String year, String month, String date, String lastday, String memberId) {
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("date", date);
		model.addAttribute("lastday", lastday);
		model.addAttribute("memberId", memberId);
		return "CalInsert";
	}
	
	@RequestMapping(value="CalInsert.do")
	public String CalInsert(Model model, String year, String month, String date, String memberId, String hour, String min, String calTitle, String calMemo) {
		int Cyear = Integer.parseInt(year);
		int Cmonth = Integer.parseInt(month);
		
		model.addAttribute("year", Cyear);
		model.addAttribute("month", Cmonth);
		model.addAttribute("memberId", memberId);
		
		String calSch=year+Util.isTwo(month)
			+Util.isTwo(date)
			+Util.isTwo(hour)
			+Util.isTwo(min);
		
		int res = bizz.insert(new calDto(memberId,calTitle,calSch,calMemo,"Y"));

		if(res > 0) {
			return "redirect:CalListForm.do";		
		}else {
			return "redirect:CalListForm.do";
		}
	}
	
	@RequestMapping(value="calDetail.do")
	public String calDetail(Model model, int calNo) {
		calDto dto = bizz.getCalBoard(calNo);
		model.addAttribute("dto", dto);
		return "CalDetail";
	}

}
