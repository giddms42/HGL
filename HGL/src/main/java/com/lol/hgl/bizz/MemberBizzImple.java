package com.lol.hgl.bizz;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.MemberDao;
import com.lol.hgl.dto.memberDto;

@Service
public class MemberBizzImple implements MemberBizz {
	
	@Autowired
	private MemberDao dao;

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
		int res = dao.signUp(dto);
		return res;
	}

	@Override
	public String IDSearch(String email) {
		String res = dao.IDSearch(email);
		String use = "f";
		if (res == null) {
			use = "t"; 
		}
		System.out.println("ID 찾기 성공 여부 : " + use);
		return use;
	}

	@Override
	public String PWSearch(String email, String id) {
		String res = dao.PWSearch(email, id);
		String use = "f";
		if (res == null) {
			use = "t"; 
		}
		System.out.println("pw 찾기 성공 여부 : " + use);
		return use;
	}

	
	
	
}
