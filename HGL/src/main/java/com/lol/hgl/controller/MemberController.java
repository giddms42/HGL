package com.lol.hgl.controller;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lol.hgl.bizz.FamBizz;
import com.lol.hgl.bizz.MemberBizz;
import com.lol.hgl.dto.famDto;
import com.lol.hgl.dto.memberDto;

@Controller
public class MemberController {
	
   @Autowired
   private MemberBizz memberBizz;
 
   @Autowired
   private FamBizz famBizz;
   
   int chk=1;
   
   //제일 처음 로그인 페이지 이동
   @RequestMapping(value="MemberLoginForm.do")
   public String MemberLoginForm() {
	   if(1>chk) {
		   memberBizz.mangeCancel();
		   memberBizz.safetySMS();
		   memberBizz.birthSMS();
		   memberBizz.calSMS();
		   chk++;
	   }
      return "MemberLogin";
   }
   
   //회원 가입 페이지로 이동 
   @RequestMapping(value = "MemberSignUpForm.do")
   public String memberSignUpForm() {   
      return "MemberSignUp";
   }
   
   //Id 중복 체크 및 정규식 검사 
   @RequestMapping(value="IDChk.do", method = RequestMethod.POST)
   @ResponseBody
   public String IDChk(HttpSession session, String id) {
      String res ="";
      res = memberBizz.IDChk(id);
      return res;
   }
   
   //비밀번호 정규식 확인
   @RequestMapping(value="pwChk.do")
   @ResponseBody
   public String pWChk(String pw) {
      String res ="";
      res = memberBizz.pwChk(pw);
      return res;
   }
   
   //닉네임 중복 검사
   @RequestMapping(value="nickNameChk.do")
   @ResponseBody
   public String nickNameChk(String nickName) {
      String res ="";
      res = memberBizz.nickNameChk(nickName);
      return res;
   }
   
   //이메일 중복 검사
   @RequestMapping(value="emailChk.do")
   @ResponseBody
   public String emailChk(String email) {
      String res ="";
      res = memberBizz.emailChk(email);
      return res;
   }
   
   //회원가입
   @RequestMapping(value = "MemberSignUp.do", method = RequestMethod.POST)
   public String memberSingUp(@ModelAttribute memberDto dto, String memberPhone1, String memberPhone2, String memberPhone3) {
	  dto.setMemberPhone(memberPhone1+"-"+memberPhone2+"-"+memberPhone3);
	  System.out.println(dto.getMemberPhone());
	  int res = memberBizz.signUp(dto);
	  if(res>0) {
		  return "MemberLogin";
	  }else {
		  return "MemberSignUp";
	  }
   }
   
   //로그인 
   @RequestMapping(value = "MemberLogin.do")
   public String memberLogin(String memberId, String memberPw, Model model, HttpSession session) throws IOException {  
	   if(1>chk) {
		   memberBizz.mangeCancel();
		   memberBizz.safetySMS();
		   memberBizz.birthSMS();
		   memberBizz.calSMS();
		   chk++;
	   }
	  String chkRes = memberBizz.LoginChk(memberId, memberPw);
	  String msg = "";
	 //1. 아이디 비밀번호 일치 호가인
	  if(chkRes == "f") {
		  msg =  "아이디와 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.";
		  model.addAttribute("msg1", msg);
	      return "MemberLogin";  
	  }else {
	//2. 제재중인 회원인지 확인
		  memberDto login = memberBizz.Login(memberId);
		  String mangeChk = login.getMemberProhibitChk();
		  if(mangeChk.equals("Y")) {
			  //제제시작 시간(최종 로그아웃부터)
			  Date time=login.getMemberLogoutTime();
			  SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			  String mangeTime = transFormat.format(time);
			  int count = login.getMemberProhibitCount();
			  String cnt = "";
			  switch (count) {
			  	case 1:
			  		cnt = "7일 ";
			  		break;
				case 2:
					cnt = "15일 ";
					break;
				case 3:
					cnt = "30일 ";
					break;
			  }
			  msg = mangeTime+"로부터 " + cnt + "이후 이용이 가능합니다.";
			  model.addAttribute("msg2", msg);
			  return "MemberLogin";  
		  }else {
			   session.setAttribute("login", login);
			   session.setMaxInactiveInterval(10*60*60);
		  }
	  }   
      return "Main";
   }
   
   //ID, 비밀번호 찾기 페이지 이동 
   @RequestMapping(value="MemberSearchForm.do")
   public String MemberSearchForm(Model model) {
      return "MemberSearch";
   }
  
   //아이디 찾기
   @RequestMapping(value="IDSearch.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String IDSearch(String email) {
	   String res ="";
	      res = memberBizz.IDSearch(email);
	      return res;
   }
   
   //회원 인증
   @RequestMapping(value="memberCertification.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String memberCertification(String email, String id) {
	   String res ="";
	      res = memberBizz.memberCertification(email, id);
	      return res;

   }
   
   //비밀번호 변경 페이지로 이동
   @RequestMapping(value="MemberPwFindForm.do")
   public String MemberPwFindForm(String email, String id, Model model) {
	   System.out.println(email +  " , " + id);
	   model.addAttribute("email", email);
	   model.addAttribute("id", id);
      return "MemberPwFind";
   }

   //비밀번호 변경
   @RequestMapping(value="pwChange.do", method = RequestMethod.POST)
   public String pwChange(@ModelAttribute memberDto dto, Model model) {
	   memberBizz.pwChange(dto);
	   String msg = "비밀번호 변경이 완료되었습니다. 다시 로그인 해주세요";
	   model.addAttribute("msg1", msg);      
	   return "MemberLogin";
   }

   //로그아웃
   @RequestMapping(value="memberLoginOut.do")
   public String memberLoginOut(HttpSession session, Model model) {
	   memberDto dto = (memberDto) session.getAttribute("login");
	   if(dto != null ) {
		   memberBizz.logOutTime(dto.getMemberId());
		   session.invalidate(); 		
		   String msg = "로그아웃 되었습니다. 다음에 또 와주세요!";
		   model.addAttribute("msg1", msg);
	   }
	    return "MemberLogin";
   }

   //유저 정보 및 가족 구성원 정보 페이지로 이동 
   @RequestMapping(value = "MemberInfoForm.do")
   public String MemberInfoForm(int memberNo, Model model) {   
	   memberDto dto = memberBizz.detailLogin(memberNo);
	   List<famDto> list = famBizz.allFamList(memberNo);	   
	   model.addAttribute("dto", dto);
	   model.addAttribute("list", list);
      return "MemberInfo";
   }
   
   //유저 정보 변경 페이지로 이동
   @RequestMapping(value = "MemberInfoUpdateForm.do")
   public String MemberInfoUpdateForm(Model model, String memberNo) {
	   memberDto dto = memberBizz.detailLogin(Integer.parseInt(memberNo));
	   String phone = dto.getMemberPhone(); //3,4,4   010-2731-3188
	   String phone1 = phone.substring(0, 3);
	   String phone2 = phone.substring(4,8);
	   String phone3 = phone.substring(9,13);
	   model.addAttribute("phone1", phone1);
	   model.addAttribute("phone2", phone2);
	   model.addAttribute("phone3", phone3);
	   model.addAttribute("dto", dto);
	   return "MemberInfoUpdate";
   } 

   //유저 정보 변경
   @RequestMapping(value = "MemberInfoUpdate.do")
   public String MemberInfoUpdate(@ModelAttribute memberDto dto, String memberPhone1, String memberPhone2, String memberPhone3, Model model) {   
	  dto.setMemberPhone(memberPhone1+"-"+memberPhone2+"-"+memberPhone3);
	  memberBizz.updateMemberInfo(dto);
	  model.addAttribute("memberNo", dto.getMemberNo());
      return "redirect:MemberInfoForm.do";
   } 
   
   
   //탈퇴
   @RequestMapping(value = "MemberGetOut.do")
   public String MemberGetOut(int memberNo, Model model) {
       memberBizz.getOut(memberNo);
	   String msg = "그동안 이용해주셔서 감사합니다.";
	   model.addAttribute("msg1", msg);
	   return "MemberLogin";
   }
   

   
}