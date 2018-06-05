package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.CalDao;
import com.lol.hgl.dto.calDto;

@Service
public class CalBizzImple implements CalBizz {
	
	@Autowired
	private CalDao dao;

	@Override
	public List<calDto> selectAll(String id, String yyyyMM) {
		return dao.selectAll(id, yyyyMM);
	}

	@Override
	public calDto selectOne(int seq) {
		return dao.selectOne(seq);
	}

	@Override
	public int insert(calDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(int seq) {
		return dao.delete(seq);
	}

	@Override
	public int update(calDto dto) {
		return dao.update(dto);
	}

	@Override
	public int getCalViewCount(String memberId, String yyyyMMdd) {
		return dao.getCalViewCount(memberId, yyyyMMdd);
	}

	@Override
	public calDto getCalBoard(int seq) {
		return dao.getCalBoard(seq);
	}

	

}
