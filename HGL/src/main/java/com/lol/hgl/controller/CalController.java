package com.lol.hgl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	   public String CalListForm(Model model, String memberNickname, String memberId, int year, int month) {
		
		String month2 = String.valueOf(month);
		String yyyyMM = ""+year+Util.isTwo(month2);
		List<calDto> cList= bizz.selectAll(memberId, yyyyMM);
		System.out.println("칼리스트폼.두 - cList : " + cList);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("memberId", memberId);
		model.addAttribute("cList", cList);
		model.addAttribute("memberNickname", memberNickname);
	      return "CalList";
	   }
	
	@RequestMapping(value="CalListCountAjax.do")
	@ResponseBody
	public String CalListCountAjax(Model model, String memberId, String yyyyMMdd) {
		int r = bizz.getCalViewCount(memberId, yyyyMMdd);
		String res = String.valueOf(r);
		return res;
	}
		
	@RequestMapping(value="CalInsertForm.do")
	public String CalInsertForm(Model model, String year, String month, String date, String lastDay, String memberId, String memberNickname) {
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("date", date);
		model.addAttribute("lastDay", lastDay);
		model.addAttribute("memberId", memberId);
		model.addAttribute("memberNickname", memberNickname);
		System.out.println(year + " , " +month + " , " +date + " , " +lastDay + " , " +memberId + " , " +memberNickname);
		return "CalInsert";
	}
	
	@RequestMapping(value="CalInsert.do")
	@ResponseBody
	public String CalInsert(Model model, String year, String month, String date, String lastDay, String memberId, String hour, String min, String calTitle, String calMemo, String calSMS, String memberNickname) {
		System.out.println("칼인서트 컨트롤러 시작");
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("date", date);
		model.addAttribute("lastDay", lastDay);
		model.addAttribute("memberId", memberId);
		model.addAttribute("memberNickname", memberNickname);
		System.out.println("칼인서트컨트롤러 어트리뷰트끝"+lastDay);
		String calSch=year+Util.isTwo(month)
			+Util.isTwo(date)
			+Util.isTwo(hour)
			+Util.isTwo(min);
		System.out.println("칼인서트컨트롤러 calSch완성");
		int res = bizz.insert(new calDto(memberId,calTitle,calSch,calMemo,calSMS,memberNickname));
		System.out.println("칼인서트컨트롤러 비즈.인서트 결과값 : " + res);
		if(res > 0) {
			System.out.println("인서트 성공");
			String yyyyMM = ""+year+Util.isTwo(month);
			System.out.println("칼인서트컨트롤러 yyyyMM : " + yyyyMM);
			List<calDto> cList= bizz.selectAll(memberId, yyyyMM);
			System.out.println("칼인서트컨트롤러 비즈.셀렉트올 cList : " + cList);
			model.addAttribute("cList", cList);
			return "Y";		
		}else {
			System.out.println("실패");
			return "N";
		}
	}
	
	@RequestMapping(value="calDetail.do")
	public String calDetail(Model model, int calNo) {
		calDto dto = bizz.getCalBoard(calNo);
		model.addAttribute("dto", dto);
		return "CalDetail";
	}
	
	@RequestMapping(value="CalDelete.do")
	public String CalDelete(Model model, int calNo, String year, String month, String memberId) {
		
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("memberId", memberId);
		
		int res =bizz.delete(calNo);
		
		if(res > 0){
			return "redirect:CalListForm.do";
		}else {
			return "redirect:CalListForm.do";
		}
	}
	
	@RequestMapping(value="CalUpdate.do")
	public String CalUpdate(Model model, int calNo, String year, String month, String date, String hour, String min, String memberId, String calTitle, String calMemo, String calSMS, String memberNickname) {
		
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("memberId", memberId);
		
		String calSch=year+Util.isTwo(month)
		+Util.isTwo(date)
		+Util.isTwo(hour)
		+Util.isTwo(min);
		
		int res =bizz.update(new calDto(calNo,memberId,calTitle,calSch,calMemo,calSMS,memberNickname));
		
		if(res > 0){
			return "redirect:CalListForm.do";
		}else {
			return "redirect:CalListForm.do";
		}
	}	
}
