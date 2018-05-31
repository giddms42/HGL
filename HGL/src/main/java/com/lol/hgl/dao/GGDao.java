package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.ggDto;

public interface GGDao {
	
String namespace = "gg";
	
	public List<ggDto> selectAll();
	public ggDto selectOne(int seq);
	public int insert(ggDto dto);
	public int delete(int seq);
	public int update(ggDto dto);

}
