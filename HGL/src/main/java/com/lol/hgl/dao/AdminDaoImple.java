package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.memberDto;

@Repository
public class AdminDaoImple implements AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String nameSpace = "admin.";

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
	public List<memberDto> memberAllList(int startPost, int endPost) {
		List<memberDto> list = new ArrayList<memberDto>();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startPost", startPost);
		map.put("endPost", endPost);
		try {
			list = sqlSession.selectList(nameSpace+"memberAllList", map);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	

}
