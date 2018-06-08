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
	public int ggListCount() {
		return dao.ggListCount();
	}
	
	@Override
	public List<ggDto> selectAll(int startPost, int endPost) {
		List<ggDto> res = dao.selectAll(startPost, endPost);
		List<Integer> rowNum = dao.ggListRowNum(startPost, endPost);
		for(int i=0; i<rowNum.size(); i++) {
			res.get(i).setGgRowNum(rowNum.get(i));
		}
		return res;
	}
	
	@Override
	public int ggListSerchCount(String topic, String keyword) {
		return dao.ggListSerchCount(topic, keyword);
	}

	@Override
	public List<ggDto> selectSearchAll(int startPost, int endPost, String topic, String keyword) {
		List<ggDto> list = dao.selectSearchAll(startPost, endPost, topic, keyword);
		List<Integer> rowNum = dao.ggListSearchRowNum(startPost, endPost, topic, keyword);
		for(int i=0; i<list.size(); i++) {
			list.get(i).setGgRowNum(rowNum.get(i));
		}
		return list;
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
	public int updateReadCount(int ggNo) {
		return dao.updateReadCount(ggNo);
	}

	

}
