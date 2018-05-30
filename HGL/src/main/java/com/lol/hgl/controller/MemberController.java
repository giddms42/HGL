package com.lol.hgl.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.MemberBizz;
import com.lol.hgl.dto.memberDto;

@Controller
public class MemberController {


   @Autowired
   private MemberBizz bizz;
   
   @RequestMapping(value = "MemberSignUpForm.do")
   public String memberSignUpForm() {   
      return "MemberSignUp";
   }
   
   @RequestMapping(value="IDChk.do", method = RequestMethod.POST)
   @ResponseBody
   public String IDChk(HttpSession session, String id) {
      String res ="";
      res = bizz.IDChk(id);
      return res;
   }
   
   @RequestMapping(value="nickNameChk.do")
   @ResponseBody
   public String nickNameChk(String nickName) {
      String res ="";
      res = bizz.nickNameChk(nickName);
      return res;
   }
   
   
   @RequestMapping(value="emailChk.do")
   @ResponseBody
   public String emailChk(String email) {
      String res ="";
      res = bizz.emailChk(email);
      return res;
   }
   
   @RequestMapping(value="pwChk.do")
   @ResponseBody
   public String pWChk(String pw) {
      String res ="";
      res = bizz.pwChk(pw);
      return res;
   }
   
   
   @RequestMapping(value = "MemberSignUp.do", method = RequestMethod.POST)
   public String memberSingUp(@ModelAttribute memberDto dto) {
	  System.out.println(dto.getMemberCity());
	  int res = bizz.signUp(dto);
	  if(res>0) {
		  return "MemberLogin";
	  }else {
		  return "MemberSignUp";
	  }
   }
   
   @RequestMapping(value="MemberLoginForm.do")
   public String MemberLoginForm() {
      return "MemberLogin";
   }
   
   @RequestMapping(value = "MemberLogin.do")
   public String memberLogin(String memberId, String memberPw, Model model, HttpSession session) throws IOException {
	  String chkRes = bizz.LoginChk(memberId, memberPw);
	  if(chkRes == "f") {
		  String msg =  "아이디와 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.";
		  model.addAttribute("msg", msg);
	      return "MemberLogin";  
	  }else {

	   memberDto login = bizz.Login(memberId);
		  System.out.println(login.getMemberId());
		    session.setAttribute("login", login);
			session.setMaxInactiveInterval(10 * 60); 	
	  }   
      return "Main";
   }
   
   @RequestMapping(value="MemberSearchForm.do")
   public String MemberSearchForm(Model model) {
      return "MemberSearch";
   }
  
   @RequestMapping(value="MemberPwFindForm.do")
   public String MemberPwFindForm(String email, String id, Model model) {
	   System.out.println(email +  " , " + id);
	   model.addAttribute("email", email);
	   model.addAttribute("id", id);
      return "MemberPwFind";
   }
   

   @RequestMapping(value="IDSearch.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String IDSearch(String email) {
	   String res ="";
	      res = bizz.IDSearch(email);
	      return res;
   }
   
   @RequestMapping(value="memberCertification.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String memberCertification(String email, String id) {
	   String res ="";
	      res = bizz.memberCertification(email, id);
	      return res;

   }

   
   @RequestMapping(value="pwChange.do", method = RequestMethod.POST)
   public String pwChange(@ModelAttribute memberDto dto, Model model) {
	   System.out.println("도착");
	   int res = bizz.pwChange(dto);
	   if(res< 0) {
			  String msg = "올바른 비밀번호로 다시 작성해주세요";
			  model.addAttribute("msg", msg);
		  }else {
			  String msg = "비밀번호 변경이 완료되었습니다. 다시 로그인 해주세요";
			  model.addAttribute("msg", msg);
		  }	      
	      return "MemberLogin";
   }

   @RequestMapping(value="memberLoginOut.do")
   public String memberLoginOut(HttpSession session, Model model) {
		session.invalidate(); 
		
		 String msg = "로그아웃 되었습니다. 다음에 또 와주세요!";
		  model.addAttribute("msg", msg);
	    return "MemberLogin";
   }


   @RequestMapping(value = "MemberInfoForm.do")
   public String MemberInfoForm(String memberId, Model model) {   
	   memberDto dto = bizz.Login(memberId);
	   model.addAttribute("dto", dto);
      return "MemberInfo";
   }
   
   @RequestMapping(value = "MemberInfoUpdate.do")
   public String MemberInfoUpdate(@ModelAttribute memberDto dto, Model model) {   
	  bizz.updateMemberInfo(dto);
	  System.out.println(dto.getMemberId());
	  model.addAttribute("memberId", dto.getMemberId());
      return "redirect:MemberInfoForm.do";
   } 
   
   @RequestMapping(value = "MemberInfoUpdateForm.do")
   public String MemberInfoUpdateForm() {   
      return "MemberInfoUpdate";
   } 
   
   @RequestMapping(value = "MemberGetOut.do")
   public String MemberGetOut(int memberNo, Model model) {
       bizz.getOut(memberNo);
	   String msg = "그동안 이용해주셔서 감사합니다.";
	   model.addAttribute("msg", msg);
	   return "MemberLogin";
   }
   
}