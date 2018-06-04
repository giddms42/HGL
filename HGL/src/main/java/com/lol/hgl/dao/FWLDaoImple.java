package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.fwlDto;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.fwlbcmDto;


@Repository
public class FWLDaoImple implements FWLDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String nameSpace = "fwl.";

	public List<fwlDto> fwlList(int memberNo) {
		List<fwlDto> list = new ArrayList<fwlDto>();
		try {
			list = sqlSession.selectList(nameSpace+"fwlList", memberNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return list;
	}


	@Override
	public int fwlInsert(fwlDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"fwlInsert", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}


	@Override
	public int FWLSuccess(int fwlNo) {
		int res = 0;;
		try {
			res = sqlSession.update(nameSpace+"fwlFWLSuccess", fwlNo);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public int FWLDelete(int fwlNo) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"FWLDelete", fwlNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}


	@Override
	public int FWLBInsert(fwlbDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"FWLBInsert", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}


	@Override
	public fwlbDto FWLBDetail(String memberNickName) {
		fwlbDto dto = new fwlbDto();
		try {
			dto = sqlSession.selectOne(nameSpace+"FWLBDetail", memberNickName);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return dto;
	}


	@Override
	public List<fwlbcmDto> fwlbcmList(int fwlbNO) {
		List<fwlbcmDto> list = new ArrayList<fwlbcmDto>();
		try {
			list = sqlSession.selectList(nameSpace+"fwlbcmList", fwlbNO);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return list;
	}

}
