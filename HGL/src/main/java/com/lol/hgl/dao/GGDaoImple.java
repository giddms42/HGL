package com.lol.hgl.dao;

import java.util.ArrayList;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.ggDto;
@Repository
public class GGDaoImple implements GGDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "gg.";

	@Override
	public List<ggDto> selectAll() {
		List<ggDto> res = new ArrayList<ggDto>();
		   try {
			   res = sqlSession.selectList(namespace+"selectAll");
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      return res;
	}

	@Override
	public ggDto selectOne(int seq) {
		ggDto res = new ggDto();
		try {
			res = sqlSession.selectOne(namespace+"selectOne", seq);
			}catch(Exception e ) {
				e.printStackTrace();
			}		
		return res;
	}

	@Override
	public int insert(ggDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(namespace+"insert", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
		
	}

	@Override
	public int delete(int seq) {
		int res = 0;
		try {
			res = sqlSession.delete(namespace+"delete", seq);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int update(ggDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
