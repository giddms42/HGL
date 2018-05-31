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
		if(famDto.getFamDisease1()==null) { //3개 null
			try {
				res = sqlSession.insert(nameSpace+"insertFam1", famDto);
				}catch(Exception e ) {
					e.printStackTrace();
				}	
			
		}else if(famDto.getFamDisease2()==null) {// 2개 null
			try {
				res = sqlSession.insert(nameSpace+"insertFam2", famDto);
				}catch(Exception e ) {
					e.printStackTrace();
				}	
		}else if(famDto.getFamDisease3()==null) {// 1개 null
			try {
				res = sqlSession.insert(nameSpace+"insertFam3", famDto);
				}catch(Exception e ) {
					e.printStackTrace();
				}	
			
		}else {
			try {
				res = sqlSession.insert(nameSpace+"insertFam4", famDto);
				}catch(Exception e ) {
					e.printStackTrace();
				}	
			
		}
		
		
		
		return res;
	}

}
