package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.fwlDto;


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

}
