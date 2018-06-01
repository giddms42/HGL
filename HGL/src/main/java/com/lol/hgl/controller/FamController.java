package com.lol.hgl.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lol.hgl.bizz.FamBizz;
import com.lol.hgl.dto.famDto;
import com.lol.hgl.dto.healthDto;



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
		 model.addAttribute("famDto", famDto);
	     return "FamDetail";
	  }
	  
	  @RequestMapping(value="FamHealthInsertForm.do")
	  public String FamHealthInsertForm() {
	     return "FamHealthInsert";
	  }
	  
	  @RequestMapping(value="FamDiseaseUpdateForm.do")
	  public String FamDiseaseUpdateForm() {
	     return "FamDiseaseUpdate";
	  }
	  
	  @RequestMapping(value="FamInsert.do")
	  public String FamInsert(@ModelAttribute famDto famdto, String disease, Model model) {
		 System.out.println(disease);
		 int r =  bizz.insertFam(famdto, disease);
		  if(r>0) {
			  System.out.println("가족 구성원 추가 성공! ");
		  }		  
		  model.addAttribute("memberNo", famdto.getMemberNo());	  
	     return "redirect:MemberInfoForm.do";
	  }  
	  
	 
      @RequestMapping(value=" FamDelete.do")
	  public String FamDelete(int famNo, int memberNo, Model model) {
		  bizz.famDelete(famNo);
		  model.addAttribute("memberNo",memberNo);	  
	     return "redirect:MemberInfoForm.do";
	  } 
	  
}
