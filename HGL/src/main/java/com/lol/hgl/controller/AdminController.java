package com.lol.hgl.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lol.hgl.bizz.AdminBizz;
import com.lol.hgl.dto.memberDto;

@Controller
public class AdminController {
	
	@Autowired
	private AdminBizz bizz;

	@RequestMapping(value="AdminMangeForm.do")
	public String AdminMangeForm(Locale locale, Model model) {
		return "AdminMange";
	}
	
	@RequestMapping(value="AdminUserInfoForm.do")
	public String AdminUserInfoForm(Locale locale, Model model) {
		return "AdminUserInfo";
	}
	
	@RequestMapping(value="AdminSearchUserForm.do")
	public String AdminSearchUserForm(Model model, String nowpage) {
		//전체 글 갯수 구하기
		int postCount = bizz.memberAllListCount();
		//내가 한페이지에 출력하고자 하는 글 갯수 정하기
		int wantPost = 10;
		//전체 페이지 갯수 구하기
		int pageCount = (int)(Math.ceil((double)postCount/wantPost));
		//시작 페이지
		int nowPage = Integer.parseInt(nowpage);			
		//block 시작 페이지 숫자
		int startPage = (int)(Math.ceil((double)nowPage/5))*5-4;
		//block 마지막 페이지 숫자
		//int endPage = ((nowPage/5)+1)*5;
		int endPage = (int)(Math.ceil((double)nowPage/5))*5;
		if(pageCount<endPage){
			endPage=pageCount;
			}
		//한 페이지내에서 시작하는 글 번호
		int startPost = (nowPage*10)-9;
		//한 페이지내에서 끝나는 글 번호
		int endPost = (nowPage*10) ; 
		//시작 글번호와 끝나는 글번호를 가지고 해당하는 글을 가져오기
		List<memberDto> list = bizz.memberAllList();
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("list", list);
		return "AdminSearchUser";
	}
	
	@RequestMapping(value="AdminSearchGG.do")
	public String AdminSearchGG(Locale locale, Model model) {
		return "AdminSearchGG";
	}
	
	@RequestMapping(value="AdminSearchFWLB.do")
	public String AdminSearchFWLB(Locale locale, Model model) {
		return "AdminSearchFWLB";
	}
}
