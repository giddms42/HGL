package com.lol.hgl.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lol.hgl.bizz.FamBizz;
import com.lol.hgl.dto.famDto;
import com.lol.hgl.dto.healthDto;
import com.lol.hgl.dto.memberDto;

@Controller
public class FamController {
	
	@Autowired
	private FamBizz bizz;
	
	
	  @RequestMapping(value="FamInsertForm.do")
	  public String FamInsertForm() {
	     return "FamInsert";
	  }
	  
	  @RequestMapping(value="FamDetailForm.do")
	  public String FamDetailForm(int famNo, Model model) {
		 famDto famDto = bizz.famDetail(famNo);
		 healthDto healthDto = bizz.healthDetail(famNo);
		 List<healthDto> list = bizz.heatlList(famNo);
		 System.out.println(list.size());
		 model.addAttribute("list",list);	
		 model.addAttribute("healthDto",healthDto);	 
		 model.addAttribute("famDto", famDto);			
	     return "FamDetail";
	  }
	

	  @RequestMapping(value="FamHealthInsertForm.do")
	  public String FamHealthInsertForm(int famNo, Model model) {
		  famDto famDto = bizz.famDetail(famNo);
		  model.addAttribute("famDto", famDto);
	     return "FamHealthInsert";
	  }
	  
	  @RequestMapping(value="FamDiseaseUpdateForm.do")
	  public String FamDiseaseUpdateForm(String famNo, Model model) {
		  int famno = Integer.parseInt(famNo);
		  famDto famDto = bizz.famDetail(famno);
		  model.addAttribute("famDto", famDto);
		  return "FamDiseaseUpdate";
	  }
	  
	  @RequestMapping(value="FamDiseaseUpdate.do")
	  public String FamDiseaseUpdate(String famNo, String disease, Model model) {
		  int famN = Integer.parseInt(famNo);
		  famDto famDto = bizz.famDetail(famN);
		  System.out.println("가족구성원 번호" + famDto.getFamNo());
		  bizz.FamDiseaseUpdate(famDto, disease);
		  model.addAttribute("famNo", famNo);	  
		  return "redirect:FamDetailForm.do";
	  }
	  
	  @RequestMapping(value="FamInsert.do")
	  public String FamInsert(@ModelAttribute famDto famdto, String disease, Model model, HttpSession session) {
		 bizz.insertFam(famdto, disease);
		 memberDto member = (memberDto) session.getAttribute("login");
		 bizz.insertFamBirth(famdto, member.getMemberId(), member.getMemberNickname());
		 model.addAttribute("memberNo", famdto.getMemberNo());	  
	     return "redirect:MemberInfoForm.do";
	  }  
	  
      @RequestMapping(value=" FamDelete.do")
	  public String FamDelete(int famNo, int memberNo, Model model) {
		  bizz.famDelete(famNo);
		  model.addAttribute("memberNo",memberNo);	  
	     return "redirect:MemberInfoForm.do";
	  } 
      
      @RequestMapping(value="FamHealthInsert.do")
      public String FamHealthInsert(@ModelAttribute healthDto healthDto, String famNo, Model model) {
    	  bizz.FamHealthInsert(healthDto);
    	  model.addAttribute("famNo", famNo);
    	  return "redirect:FamDetailForm.do";
      }
      
      @RequestMapping(value="FamDiseaseMenu.do")
      public String FamDiseaseMenu(String disease, Model model) {
    	  model.addAttribute("disease", disease);
    	  return "FamDiseaseMenu";
      }
	  
}
