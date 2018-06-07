package com.lol.hgl.bizz;

import java.util.List;

import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggcmDto;

public interface GGBizz {
	
	public int ggListCount();
	public List<ggDto> selectAll(int startPost, int endPost);
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
