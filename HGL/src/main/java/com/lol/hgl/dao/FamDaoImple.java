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

	@Override
	public int insertFam(famDto famDto) {
		int res = 0;
			try {
				res = sqlSession.insert(nameSpace+"insertFam", famDto);
				}catch(Exception e ) {
					e.printStackTrace();
				}		
		return res;
	}

	@Override
	public famDto famDetail(int famNo) {
		famDto res = new famDto();
		try {
			res = sqlSession.selectOne(nameSpace+"famDetail", famNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}		
	return res;
	}

	@Override
	public int famDelete(int famNo) {
		int res = 0;
		try {
			res = sqlSession.delete(nameSpace+"famDelete", famNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}		
	return res;
	}



}
