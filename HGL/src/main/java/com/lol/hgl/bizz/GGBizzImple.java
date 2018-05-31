package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.GGDao;
import com.lol.hgl.dao.GGDaoImple;
import com.lol.hgl.dto.ggDto;

@Service
public class GGBizzImple implements GGBizz {

	@Autowired
	private GGDao dao;
	
	@Override
	public List<ggDto> selectAll() {
		return dao.selectAll();
	}

	@Override
	public ggDto selectOne(int seq) {
		return dao.selectOne(seq);
	}

	@Override
	public int insert(ggDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(int seq) {
		return dao.delete(seq);
	}

	@Override
	public int update(ggDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
