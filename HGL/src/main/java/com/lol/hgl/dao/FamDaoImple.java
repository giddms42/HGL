package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.famDto;
import com.lol.hgl.dto.healthDto;


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

	@Override
	public int FamHealthInsert(healthDto healthdto) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"FamHealthInsert", healthdto);
			}catch(Exception e ) {
				e.printStackTrace();
			}		
		return res;
	}

	@Override
	public healthDto healthDetail(int famNo) {
		healthDto res = new healthDto();
		try {
			res = sqlSession.selectOne(nameSpace+"healthDetail", famNo);
		}catch(Exception e){
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<healthDto> heatlList(int famNo) {
		List<healthDto> res = new ArrayList<healthDto>();
		try {
			res = sqlSession.selectList(nameSpace+"heatlList", famNo);
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}



}
