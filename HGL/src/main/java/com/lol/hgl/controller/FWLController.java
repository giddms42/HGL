package com.lol.hgl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.FWLBizz;
import com.lol.hgl.dto.fwlDto;

@Controller
public class FWLController {
	
	@Autowired
	private FWLBizz bizz;
	
	   @RequestMapping(value="FWLList.do")
	   public String FWLList(int memberNo, Model model) {
		 List<fwlDto> list = bizz.fwlList(memberNo);
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
	   public String FWLInsert(String fwlItem, int memberNo) {
		   //int memberno = Integer.parseInt(memberNo);
		  bizz.fwlInsert(fwlItem, memberNo); 
	      return "FWLInsert";
	   }
	   
	   @RequestMapping(value="FWLSuccess.do", method= RequestMethod.POST)
	   @ResponseBody
	   public String FWLSuccess(String checkValue) {
		   System.out.println(checkValue);
		   int fwlNo = Integer.parseInt(checkValue);
		   bizz.FWLSuccess(fwlNo);
		   return "redirect:FWLList.do";
	   }
	   
	   @RequestMapping(value="FWLDelete.do")
	   public String FwlDelete(int fwlNo) {
		   return "redirect:FWLList.do";
	   }
	   
	   @RequestMapping(value="FWLShare.do")
	   public String FWLShare(String memberNickName) {
		   bizz.FWLShare(memberNickName); 
		   
		   return null;
	   }
	   
	   
		
	   @RequestMapping(value="FWLBList.do")
	   public String FWLBList() {
/*			//전체 글 갯수 구하기
			int postCount = ownBizz.RecipeBoardPostCount();
			//내가 한페이지에 출력하고자 하는 글 갯수 정하기
			int wantPost = 10;
			//전체 페이지 갯수 구하기
			int pageCount = (int)(Math.ceil((double)postCount/wantPost));
			//시작 페이지
			int nowPage = 1;
			if(request.getParameter("nowPage")!=null){
				nowPage = Integer.parseInt(request.getParameter("nowPage"));
				}
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
			List<OwnRecipeDto> list = ownBizz.RecipeBoardAllList(startPost, endPost);			
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("nowPage", nowPage);
			request.setAttribute("pageCount", pageCount);
			request.setAttribute("AllList", list);
			
			List<OwnRecipeDto> bestList = ownBizz.RecipeBoardBestList();
			request.setAttribute("BestList", bestList);		
			
			dispatch("OwnRecipeBoardList.jsp", request, response);*/
			
	      return "FWLBList";
	   }
	   
	   @RequestMapping(value="FWLBDetail.do")
	   public String FWLBDetail() {   
	      return "FWLBDetail";
	   }
	   
}
