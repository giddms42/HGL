package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggcmDto;

public interface GGDao {
	
String namespace = "gg";
	
	public List<ggDto> selectAll();
	public ggDto selectOne(int seq);
	public int insert(ggDto dto);
	public int delete(int seq);
	public int update(ggDto dto);
	public int updateReadCount(int seq);
	
	public List<ggcmDto> repleySelectOne(int seq);
	public int repleyInsert(ggcmDto dto);
	public int repleyDelete(int seq);
	public int repleyUpdate(ggcmDto dto);

}
