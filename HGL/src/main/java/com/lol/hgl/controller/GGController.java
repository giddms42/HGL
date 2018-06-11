package com.lol.hgl.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lol.hgl.bizz.GGBizz;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggImgDto;
import com.lol.hgl.dto.ggcmDto;

@Controller
public class GGController {
	
	@Autowired
	private GGBizz bizz;
	

	@RequestMapping(value = "ys.do")
	   public String ys() {   
	      return "ys";
	   }
	
	@RequestMapping(value = "GGInsertForm.do")
	   public String GGInsertForm() {   
	      return "GGInsert";
	   }
	
	@RequestMapping(value = "GGUpdateForm.do")
	   public String GGUpdateForm() {   
	      return "GGUpdate";
	   }
	
	@RequestMapping(value = "GGListForm.do")
	public String GGListForm(String nowpage, Model model) {
		//전체 글 갯수 구하기
		int postCount = bizz.ggListCount();
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
		List<ggDto> list = bizz.selectAll(startPost, endPost);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("list", list);
		return "GGList";
	}
	
	@RequestMapping(value = "GGListSearch.do")
	public String GGListSearch(String nowpage, String topic, String keyword, Model model) {
		//전체 글 갯수 구하기
		int postCount = bizz.ggListSerchCount(topic, keyword);
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
		List<ggDto> list = bizz.selectSearchAll(startPost, endPost, topic, keyword);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("topic", topic);
		model.addAttribute("keyword", keyword);
		model.addAttribute("list", list);
		return "GGSearchList";
	}
	
	@RequestMapping(value="GGDetailForm.do",method= {RequestMethod.GET,RequestMethod.POST})
	public String GGDetailForm(Model model, int ggNo, int count) {
		if(count == 1 ) {
			bizz.updateReadCount(ggNo);
		}
		ggDto dto = bizz.selectOne(ggNo);
		List<ggcmDto> dto2 = bizz.repleySelectOne(ggNo);
		List<ggImgDto> list = bizz.imgSelectOne(ggNo);
		model.addAttribute("dto",dto);
		model.addAttribute("dto2",dto2);
		model.addAttribute("imgList", list);
		return "GGDetail";
	}
	
	@RequestMapping(value="GGDelete.do",method= {RequestMethod.GET,RequestMethod.POST})
	public String GGDelete(Model model, int ggNo) {		
		bizz.delete(ggNo);
		model.addAttribute("nowpage", 1);
		return "redirect:GGListForm.do";
	}
	
	@RequestMapping(value="GGinsert.do",  method = {RequestMethod.GET,RequestMethod.POST})
	public String insert(Model model, ggDto dto,  HttpServletRequest request) throws Exception {
		int res = bizz.insert(dto, request);
		if (res > 0) {
			model.addAttribute("nowpage", 1);
			return "redirect:GGListForm.do";
		} else {
			model.addAttribute("nowpage", 1);
			return "redirect:GGInsertForm.do";
		}	
	}
	
	@RequestMapping(value = "GGUpdateForm.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String GGUpdateForm(Model model, int ggNo) {
		ggDto dto = bizz.selectOne(ggNo);
		List<ggImgDto> list = bizz.imgSelectOne(ggNo);
		model.addAttribute("dto", dto);
		model.addAttribute("list", list);
		return "GGUpdate";
	}
	
	@RequestMapping(value = "update.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String update(Model model, ggDto dto, HttpServletRequest request) throws Exception {		
		int res = bizz.update(dto, request);
		if (res > 0) {
			model.addAttribute("ggNo", dto.getGgNo());
			model.addAttribute("count", 0);
			return "redirect:GGDetailForm.do?";
		} else {
			model.addAttribute("ggNo", dto.getGgNo());
			return "redirect:updateForm.do?";
		}
	}
	
	@RequestMapping(value = "GGRepleyInsert.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String GGRepleyInsert(Model model, ggcmDto dto) {
		bizz.repleyInsert(dto);
		model.addAttribute("ggNo", dto.getGgNo());
		model.addAttribute("count", 0);
		
		return "redirect:GGDetailForm.do";
	}
	
	@RequestMapping(value = "GGRepleyDelete.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String GGRepleyDelete(Model model, ggcmDto dto) {
		int res = bizz.repleyDelete(dto.getGgcmNo());
		if (res > 0) {
			model.addAttribute("ggNo", dto.getGgNo());
			model.addAttribute("count", 0);
			return "redirect:GGDetailForm.do";
		} else {
			model.addAttribute("ggNo", dto.getGgNo());
			model.addAttribute("count", 0);
			return "redirect:GGDetailForm.do";
		}
	}

}
