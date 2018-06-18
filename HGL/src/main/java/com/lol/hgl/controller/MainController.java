package com.lol.hgl.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lol.hgl.bizz.kindstoreBizz;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.kindstoreDto;
import com.lol.hgl.util.SMSFormOne;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	@Autowired
	private kindstoreBizz kindBizz;

	@RequestMapping(value="MainForm.do")
	public String MainForm(Locale locale, Model model) {
		return "Main";
	}
	
	@RequestMapping(value="gsYS.do")
	public String gsYS() {
		return "gsYS";
	}
	
	@RequestMapping(value="MapHW.do")
	public String MapHW() {
		return "MapHW";
	}
	@RequestMapping(value="MapK.do")
	public String MapK() {
		return "MapK";
	}
	@RequestMapping(value = "kindListSearch.do")
	public String kindListSearch(String nowpage, String kinddo, String kindcity,  Model model) {
		//전체 글 갯수 구하기
		int postCount = kindBizz.kindstoreListSerchCount(kinddo, kindcity);
		System.out.println(postCount);
		//내가 한페이지에 출력하고자 하는 글 갯수 정하기
		int wantPost = 5;
		//전페 페이지 갯수 구하기
		int pageCount = (int)(Math.ceil((double)postCount/wantPost));
		//시작페이지
		int nowPage = Integer.parseInt(nowpage);
		//block 시작 페이지 숫자
		int startPage = (int)(Math.ceil((double)nowPage/10))*10-9;
		//block 마지막 페이지 숫자
		int endPage = (int)(Math.ceil((double)nowPage/10))*10;
		System.out.println(endPage);
		if(pageCount<endPage) {
			endPage=pageCount;
		}
		//한 페이지 내에서 시작하는 글번호
		int startPost = (nowPage*5)-4;
		//한 페이지 내에서 끝나는 글번호
		int endPost = (nowPage*5);
		//시작 글번호와 끝나는 글번호를 가지고 해당하는 글을 가져오기
		List<kindstoreDto> list = kindBizz.selectSearchAll(startPost, endPost, kinddo, kindcity);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("kinddo", kinddo);
		model.addAttribute("kindcity", kindcity);
		model.addAttribute("kindlist", list);
		return "MapK";
	}
	
	/*
	@RequestMapping(value = "sms.do")
	public void sms() {
		String rphone = "010-5852-0572";
		String msg = "수고하세요 ";		
		try {
			SMSFormOne.sms(rphone, msg);
		} catch (NoSuchAlgorithmException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	*/
	
}
