package com.lol.hgl.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.AdminBizz;
import com.lol.hgl.bizz.MemberBizz;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.memberDto;

@Controller
public class AdminController {
	
	@Autowired
	private AdminBizz adminBizz;
	@Autowired
	private MemberBizz memberBizz;
	

	@RequestMapping(value="AdminMangeForm.do")
	public String AdminMangeForm(Locale locale, Model model) {
		return "AdminMange";
	}
	
	@RequestMapping(value="AdminUserInfoForm.do")
	public String AdminUserInfoForm(Model model, String memberNickName) {
		memberDto dto = adminBizz.memberSelectOne(memberNickName);
		int ggCount = adminBizz.ggCount(memberNickName);
		int fwlbCount = adminBizz.fwlbCount(memberNickName);
		model.addAttribute("dto", dto);
		model.addAttribute("ggCount", ggCount);
		model.addAttribute("fwlbCount", fwlbCount);
		return "AdminUserInfo";
	}
	
	@RequestMapping(value="AdminSearchUserForm.do")
	public String AdminSearchUserForm(Model model, String nowpage) {
		//전체 글 갯수 구하기
		int memberCount = adminBizz.memberAllListCount();
		//내가 한페이지에 출력하고자 하는 글 갯수 정하기
		int wantPost = 10;
		//전체 페이지 갯수 구하기
		int pageCount = (int)(Math.ceil((double)memberCount/wantPost));
		//시작 페이지
		int nowPage = Integer.parseInt(nowpage);			
		//block 시작 페이지 숫자
		int startPage = (int)(Math.ceil((double)nowPage/10))*10-9;
		//block 마지막 페이지 숫자
		//int endPage = ((nowPage/5)+1)*5;
		int endPage = (int)(Math.ceil((double)nowPage/10))*10;
		if(pageCount<endPage){
			endPage=pageCount;
			}
		//한 페이지내에서 시작하는 글 번호
		int startPost = (nowPage*10)-9;
		//한 페이지내에서 끝나는 글 번호
		int endPost = (nowPage*10) ; 
		//시작 글번호와 끝나는 글번호를 가지고 해당하는 글을 가져오기
		List<memberDto> list = adminBizz.memberAllList(startPost, endPost);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("memberCount", memberCount);
		model.addAttribute("list", list);
		return "AdminSearchUser";
	}
	
	@RequestMapping(value="AdminSearchGG.do")
	public String AdminSearchGG(Model model, String memberNickName, String nowpage) {
		//전체 글 갯수 구하기
		int memberGGCount = adminBizz.ggCount(memberNickName);
		//내가 한페이지에 출력하고자 하는 글 갯수 정하기
		int wantPost = 10;
		//전체 페이지 갯수 구하기
		int pageCount = (int)(Math.ceil((double)memberGGCount/wantPost));
		//시작 페이지
		int nowPage = Integer.parseInt(nowpage);			
		//block 시작 페이지 숫자
		int startPage = (int)(Math.ceil((double)nowPage/10))*10-9;
		//block 마지막 페이지 숫자
		//int endPage = ((nowPage/5)+1)*5;
		int endPage = (int)(Math.ceil((double)nowPage/10))*10;
		if(pageCount<endPage){
			endPage=pageCount;
			}
		//한 페이지내에서 시작하는 글 번호
		int startPost = (nowPage*10)-9;
		//한 페이지내에서 끝나는 글 번호
		int endPost = (nowPage*10) ; 
		//시작 글번호와 끝나는 글번호를 가지고 해당하는 글을 가져오기
		List<ggDto> list = adminBizz.memberGGList(startPost, endPost, memberNickName);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("memberGGCount", memberGGCount);
		model.addAttribute("memberNickName", memberNickName);
		model.addAttribute("list", list);
		return "AdminSearchGG";
	}
	
	@RequestMapping(value="AdminSearchFWLB.do")
	public String AdminSearchFWLB(Model model, String memberNickName, String nowpage) {
		//전체 글 갯수 구하기
		int memberfwlbCount = adminBizz.fwlbCount(memberNickName);
		//내가 한페이지에 출력하고자 하는 글 갯수 정하기
		int wantPost = 10;
		//전체 페이지 갯수 구하기
		int pageCount = (int)(Math.ceil((double)memberfwlbCount/wantPost));
		//시작 페이지
		int nowPage = Integer.parseInt(nowpage);			
		//block 시작 페이지 숫자
		int startPage = (int)(Math.ceil((double)nowPage/10))*10-9;
		//block 마지막 페이지 숫자
		//int endPage = ((nowPage/5)+1)*5;
		int endPage = (int)(Math.ceil((double)nowPage/10))*10;
		if(pageCount<endPage){
			endPage=pageCount;
			}
		//한 페이지내에서 시작하는 글 번호
		int startPost = (nowPage*10)-9;
		//한 페이지내에서 끝나는 글 번호
		int endPost = (nowPage*10) ; 
		//시작 글번호와 끝나는 글번호를 가지고 해당하는 글을 가져오기
		List<fwlbDto> list = adminBizz.memberFwlbList(startPost, endPost, memberNickName);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("memberfwlbCount", memberfwlbCount);
		model.addAttribute("memberNickName", memberNickName);
		model.addAttribute("list", list);
		return "AdminSearchFWLB";
	}
	
	@RequestMapping(value="AdminGGDelete.do")
	public String AdminGGDelete(int ggNo, Model model, String memberNickName) {
		adminBizz.ggDelete(ggNo);
		model.addAttribute("memberNickName", memberNickName);
		model.addAttribute("nowpage", "1");
		return "redirect:AdminSearchGG.do";
	}
	
	@RequestMapping(value="AdminFWLBDelete.do")
	public String AdminFWLBDelete(int fwlbNo, Model model, String memberNickName) {
		adminBizz.fwlbDelete(fwlbNo);
		model.addAttribute("memberNickName", memberNickName);
		model.addAttribute("nowpage", "1");
		return "redirect:AdminSearchFWLB.do";
	}
	
	@RequestMapping(value="AdminMange.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String ADminMange(String memberNickName, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println(memberNickName);
		String res = "";
		String idChk = memberBizz.nickNameChk(memberNickName);
		if(idChk == "t") { // null
			res = "존재하지 않는 아이디입니다. 다시 입력해주세요";
		}else {
			int count = adminBizz.memberProhibit(memberNickName);
			switch (count) {
			case 1:
				res="7일 제재 성공";
				break;
			case 2:
				res="15일 제재 성공";
				break;
			case 3:
				res="30일 제재 성공";
				break;
			}	
		}
		System.out.println(res);
		return res;
	}
}
