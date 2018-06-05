package com.lol.hgl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.FWLBizz;
import com.lol.hgl.bizz.MemberBizz;
import com.lol.hgl.dto.fwlDto;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.fwlbcmDto;
import com.lol.hgl.dto.memberDto;

@Controller
public class FWLController {
	
	@Autowired
	private FWLBizz fwlBizz;
	
	@Autowired
	private MemberBizz memberBizz;
	
	   @RequestMapping(value="FWLList.do")
	   public String FWLList(int memberNo, Model model) {
		 List<fwlDto> list = fwlBizz.fwlList(memberNo);
		 model.addAttribute("FWLList", list);
		 model.addAttribute("memberNo", memberNo);
	      return "FWLList";
	   }
	   
	   
	   @RequestMapping(value="FWLInsertForm.do")
	   public String FWLInsertForm(int memberNo, Model model) {
		  model.addAttribute("memberNo", memberNo);
	      return "FWLInsert";
	   }
	   
	   @RequestMapping(value="FWLInsert.do")
	   @ResponseBody
	   public String FWLInsert(String fwlItem, int memberNo, Model model) {
		  fwlBizz.fwlInsert(fwlItem, memberNo); 
	      return "FWLInsert";
	   }

	   @RequestMapping(value="FWLSuccess.do", method= RequestMethod.POST)
	   @ResponseBody
	   public String FWLSuccess(String checkValue) {
		   System.out.println(checkValue);
		   int fwlNo = Integer.parseInt(checkValue);
		   fwlBizz.FWLSuccess(fwlNo);
		   return "redirect:FWLList.do";
	   }
	   
	   @RequestMapping(value="FWLSuccessCancel.do", method= RequestMethod.POST)
	   @ResponseBody
	   public String FWLSuccessCancel(String checkValue) {
		   System.out.println(checkValue);
		   int fwlNo = Integer.parseInt(checkValue);
		   fwlBizz.FWLSuccessCancel(fwlNo);
		   return "redirect:FWLList.do";
	   }
	   
	   
	   
	   @RequestMapping(value="FWLDelete.do")
	   public String FwlDelete(int fwlNo) {
		   fwlBizz.FWLDelete(fwlNo);
		   return "redirect:FWLList.do";
	   }
	   
	   @RequestMapping(value="FWLShare.do")
	   public String FWLShare(String memberNickName, int memberNo, Model model) {
		   fwlBizz.FWLShare(memberNickName); 
		   model.addAttribute("memberNo", memberNo);
		   model.addAttribute("memberNickName", memberNickName);
		   return "redirect:FWLBDetail.do";
	   }
	   
	   
		
	   @RequestMapping(value="FWLBList.do")
	   public String FWLBList(String nowpage, Model model) {
			//전체 글 갯수 구하기
			int postCount = fwlBizz.FWLBListCount();
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
			List<fwlbDto> list = fwlBizz.FwlbList(startPost, endPost);	
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("nowPage", nowPage);
			model.addAttribute("pageCount", pageCount);
			model.addAttribute("FWLBList", list);
	      return "FWLBList";
	   }
	   
	   @RequestMapping(value="FWLBListSearch.do")
	   public String FWLBListSearch(String searchNickName, String nowpage, Model model) {
			//전체 글 갯수 구하기
			int postCount = fwlBizz.FWLBListSearchCount(searchNickName);
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
			List<fwlbDto> list = fwlBizz.FwlbListSearch(startPost, endPost, searchNickName);
			
			model.addAttribute("keyword", searchNickName);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("nowPage", nowPage);
			model.addAttribute("pageCount", pageCount);
			model.addAttribute("FWLBList", list);
		   
		   return "FWLBListSearch";
	   }
	   
	   
	   @RequestMapping(value="FWLBDetail.do")
	   public String FWLBDetail(String memberNickName, Model model) {
		   fwlbDto fwldto = fwlBizz.FWLBDetail(memberNickName);
		   memberDto memberdto = memberBizz.searchMember(memberNickName);
		   List<fwlDto> fwlList = fwlBizz.fwlList(memberdto.getMemberNo());
		   List<fwlbcmDto> fwlbcmList = fwlBizz.fwlbcmList(fwldto.getFwlbNo());
		   model.addAttribute("dto",fwldto);
		   model.addAttribute("fwlList",fwlList);
		   model.addAttribute("fwlbcmList",fwlbcmList);   
	      return "FWLBDetail";
	   }
	   
	   @RequestMapping(value="FWLBCMInsert.do")
	   public String FWLBCMInsert(@ModelAttribute fwlbcmDto dto, Model model) {
		   return null;
	   }
	   
}
