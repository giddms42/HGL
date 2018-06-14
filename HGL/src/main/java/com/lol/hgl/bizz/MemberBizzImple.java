package com.lol.hgl.bizz;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.MemberDao;
import com.lol.hgl.dto.memberDto;

@Service
public class MemberBizzImple implements MemberBizz {
	
	@Autowired
	private MemberDao dao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Override
	public String IDChk(String id) {
		String res = dao.IDChk(id);
		String use = "f";
		if (res == null) {
			use = "t"; 
		}
		System.out.println("id 사용 가능 여부 : " + use);
		return use;
	}

	@Override
	public String nickNameChk(String nickName) {
		String res = dao.nickNameChk(nickName);
		String use = "f";
		if (res == null) {
			use = "t"; 
		}
		System.out.println("nickName 사용 가능 여부 : " + use);
		return use;
	}

	@Override
	public String emailChk(String email) {
		String res = dao.emailChk(email);
		String use = "f";
		if (res == null) {
			use = "t"; 
		}
		System.out.println("email 사용 가능 여부 : " + use);
		return use;
	}

	@Override
	public String pwChk(String pw) {
		String use = "f";
		boolean flag = Pattern.matches("[a-z]+[0-9]+{8,12}$", pw); 
		if(flag) {
			use = "t";
		}else {
			use="f";
		}
		return use;
	}

	@Override
	public int signUp(memberDto dto) {
		if(dto.getMemberSMS() == null) {
			dto.setMemberSMS("N");
		}
		String encryptPassword = passwordEncoder.encode(dto.getMemberPw());
		dto.setMemberPw(encryptPassword);
		int res = dao.signUp(dto);
		return res;
	}

	@Override
	public String IDSearch(String email) {
		String res = dao.IDSearch(email);      
	      if (res == null) {
	         res = "아이디가 존재하지 않습니다.";
	      }
	      System.out.println("ID 찾기 성공 여부 : " + res);
	      return res;
	}

	@Override
	public String memberCertification(String email, String id) {
		String res = dao.memberCertification(email, id);
		if (res == null) {
			res = "f";
		}else {
			res = "t";
		}
		System.out.println("pw 찾기 성공 여부 : " + res);
		return res;
		}

	@Override
	public memberDto Login(String memberId) {
		memberDto dto = dao.Login(memberId);	
		return dto;
	}
	
	
	@Override
	public memberDto detailLogin(int memberNo) {
		memberDto dto = dao.detailLogin(memberNo);	
		return dto;
	}

	@Override
	public String LoginChk(String id, String rawPassword) {
		String res = "";	
		//1.저장된 비밀번호 갖고오기.
		String encodedPassword = dao.LoginChk(id);
		if(encodedPassword == null) {
			return "f";
		}
		//2.입력한 비밀번호랑 비교하기
		if(passwordEncoder.matches(rawPassword, encodedPassword)){
			System.out.println("계정정보 일치");
			res = "t";
			}else{
			System.out.println("계정정보 불일치");
			res = "f";	
					}
		return res;
	}

	@Override
	public int pwChange(memberDto dto) {		
		int res = 0;
		String encryptPassword = passwordEncoder.encode(dto.getMemberPw());
		dto.setMemberPw(encryptPassword);
		res = dao.pwChange(dto);
		return res;
	}

	@Override
	public int updateMemberInfo(memberDto dto) {
		if(dto.getMemberSMS() == null) {
			dto.setMemberSMS("N");
		}
		int res = dao.updateMemberInfo(dto);
		
		return res;
	}

	@Override
	public int getOut(int memberNo) {
		int res = dao.getOut(memberNo);
		return res;
	}

	@Override
	public memberDto searchMember(String memberNickName) {
		return dao.searchMember(memberNickName);
	}

	@Override
	public int logOutTime(String memberId) {
		return dao.logOutTime(memberId);
	}



	
	
	
}
