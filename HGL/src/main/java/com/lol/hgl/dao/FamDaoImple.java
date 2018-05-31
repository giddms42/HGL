package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.famDto;


@Repository
public class FamDaoImple implements FamDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String nameSpace="fam.";

	@Override
	public List<famDto> allFamList(int memberNo) {
		List<famDto> list= new ArrayList<famDto>();
		try {
			list = sqlSession.selectList(nameSpace+"allFamList", memberNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		
		return list;
	}

}
