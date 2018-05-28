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
   public String memberSignUpform() {   
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
	  int res = bizz.signUp(dto);
	  if(res>0) {
		  return "Main";
	  }else {
		  return "MemberSignUp";
	  }
   }
   
   @RequestMapping(value="MemberLoginForm.do")
   public String MemberLoginForm() {
      return "MemberLogin";
   }
   
   @RequestMapping(value = "MemberLogin.do")
   public String memberLogin(String memberId, String memberPw) {
	  memberDto login = bizz.Login(memberId, memberPw);
      return "Main";
   }
   
   @RequestMapping(value = "memberLoginChk.do")
   @ResponseBody
   public String memberLoginChk(String id, String pw) {
	  String res = bizz.LoginChk(id, pw);
      return "Main";
   }
   
   
   @RequestMapping(value="MemberSearchForm.do")
   public String MemberSearchForm(Model model) {
      return "MemberSearch";
   }
   

   @RequestMapping(value="IDSearch.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String IDSearch(String email) {
	   String res ="";
	      res = bizz.IDSearch(email);
	      return res;
   }
   
   @RequestMapping(value="PWSearch.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String PWSearch(String email, String id) {
	   String res ="";
	      res = bizz.PWSearch(email, id);
	      return res;
   }

   protected void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
		String s = "<script type='text/javascript'>" + "alert('"+msg+"');" + 
				"location.href='"+url+"';" + "</script>";
		PrintWriter out = response.getWriter();
		out.println(s);	
	}

}