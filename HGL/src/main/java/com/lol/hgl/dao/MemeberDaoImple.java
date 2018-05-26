package com.lol.hgl.dao;

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
		// TODO Auto-generated method stub
		return 0;
	}

}
