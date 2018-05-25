package com.lol.hgl.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.MemberBizz;

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
	  System.out.println(id);
      String res ="";
      res = bizz.IDChk(id);
      return res;
   }
   
   @RequestMapping(value="nickNameChk.do")
   public String nickNameChk(String nickName) {
      String res ="";
      res = bizz.nickNameChk(nickName);
      return res;
   }
   
   
   @RequestMapping(value="emailChk.do")
   public String emailChk(String email) {
      String res ="";
      res = bizz.emailChk(email);
      return res;
   }
   
   
   
   @RequestMapping(value = "MemberSignUp.do")
   public String memberSingUp() {
      return "Main";
   }
   
   @RequestMapping(value="MemberLoginForm.do")
   public String MemberLogin(Model model) {
      return "MemberLogin";
   }
   
   @RequestMapping(value = "MemberLogin.do")
   public String memberLogin() {
      return "Main";
   }
   
   @RequestMapping(value="MemberSearch.do")
   public String MemberSearch(Model model) {
      return "MemberSearch";
   }


}