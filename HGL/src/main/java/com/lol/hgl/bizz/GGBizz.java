package com.lol.hgl.bizz;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggcmDto;

public interface GGBizz {
	
	public int ggListCount();
	public List<ggDto> selectAll(int startPost, int endPost);
	
	public int ggListSerchCount(String topic, String keyword);
	public List<ggDto> selectSearchAll(int startPost, int endPost, String topic, String keyword);
	
	public ggDto selectOne(int seq);
	public int insert(ggDto dto,  HttpServletRequest request) throws Exception;
	public int delete(int seq);
	public int update(ggDto dto);
	public int updateReadCount(int ggNo);
	
	public List<ggcmDto> repleySelectOne(int seq);
	public int repleyInsert(ggcmDto dto);
	public int repleyDelete(int seq);
	public int repleyUpdate(ggcmDto dto);

}
