package com.lol.hgl.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.memberDto;

@Repository
public class MemeberDaoImple implements MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String nameSpace = "member.";

	@Override
	public String IDChk(String id) {
		String res = "";
		try {
			res = sqlSession.selectOne(nameSpace+"idChk", id);
			}catch(Exception e ) {
				e.printStackTrace();
			}
		return res;
	}

	@Override
	public String nickNameChk(String nickName) {
		String res = "";
		try {
			res = sqlSession.selectOne(nameSpace+"nickNameChk", nickName);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public String emailChk(String email) {
		String res = "";
		try {
			res = sqlSession.selectOne(nameSpace+"emailChk", email);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int signUp(memberDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"singUp", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public String IDSearch(String email) {
		String res = "";
		try {
			res = sqlSession.selectOne(nameSpace+"IDSearch", email);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public String memberCertification(String email, String id) {
		String res = "";
		HashMap<String, String>map = new HashMap<String, String>();
		map.put("email", email);
		map.put("id",id);
		try {
			res = sqlSession.selectOne(nameSpace+"memberCertification", map);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}
	
	@Override
	public memberDto Login(String memberId) {
		memberDto res = new memberDto();
		try {
			res = sqlSession.selectOne(nameSpace+"Login", memberId);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}
	

	@Override
	public memberDto detailLogin(int memberNo) {
		memberDto res = new memberDto();
		try {
			res = sqlSession.selectOne(nameSpace+"detailLogin", memberNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public String LoginChk(String id) {
		String res = "";
		try {
			res = sqlSession.selectOne(nameSpace+"LoginChk", id);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int pwChange(memberDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"pwChange", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int updateMemberInfo(memberDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"updateMemberInfo", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int getOut(int memberNo) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"getOut", memberNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public memberDto searchMember(String memberNickName) {
		memberDto dto = new memberDto();
		try {
			dto = sqlSession.selectOne(nameSpace+"searchMember", memberNickName);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return dto;
	}



}
