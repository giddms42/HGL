package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.GGDao;
import com.lol.hgl.dao.GGDaoImple;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggcmDto;

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
		return dao.update(dto);
	}

	@Override
	public int repleyInsert(ggcmDto dto) {
		return dao.repleyInsert(dto);
	}

	@Override
	public int repleyDelete(int seq) {
		return dao.repleyDelete(seq);
	}

	@Override
	public int repleyUpdate(ggcmDto dto) {
		return dao.repleyUpdate(dto);
	}

	@Override
	public List<ggcmDto> repleySelectOne(int seq) {
		return dao.repleySelectOne(seq);
	}

	@Override
	public int updateReadCount(int seq) {
		return dao.updateReadCount(seq);
	}

}
