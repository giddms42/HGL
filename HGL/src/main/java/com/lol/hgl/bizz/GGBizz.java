package com.lol.hgl.bizz;

import java.util.List;

import com.lol.hgl.dto.ggDto;

public interface GGBizz {
	
	public List<ggDto> selectAll();
	public ggDto selectOne(int seq);
	public int insert(ggDto dto);
	public int delete(int seq);
	public int update(ggDto dto);

}
