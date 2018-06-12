package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.lol.hgl.dto.memberDto;

public class AdminDaoImple implements AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String nameSpace = "member.";

	@Override
	public int memberAllListCount() {
		int res = 0;
		try {
			res = sqlSession.selectOne(nameSpace+"memberAllListCount");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public List<memberDto> memberAllList() {
		List<memberDto> list = new ArrayList<memberDto>();
		try {
			list = sqlSession.selectList(nameSpace+"memberAllList");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	

}
