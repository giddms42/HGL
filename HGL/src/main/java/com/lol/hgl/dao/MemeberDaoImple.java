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
	public String PWSearch(String email, String id) {
		String res = "";
		HashMap<String, String>map = new HashMap<String, String>();
		map.put("email", email);
		map.put("id",id);
		try {
			res = sqlSession.selectOne(nameSpace+"PWSearch", map);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public memberDto Login(String memberId, String meberPw) {
		memberDto res = new memberDto();
		HashMap<String, String>map = new HashMap<String, String>();
		map.put("pw", memberId);
		map.put("id", meberPw);
		try {
			res = sqlSession.selectOne(nameSpace+"Login", map);
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

}
