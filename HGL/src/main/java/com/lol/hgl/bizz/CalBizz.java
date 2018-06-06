package com.lol.hgl.bizz;

import java.util.List;

import com.lol.hgl.dto.calDto;


public interface CalBizz {
	
	public List<calDto> selectAll(String id, String yyyyMM);
	public calDto selectOne(int seq);
	public int insert(calDto dto);
	public int delete(int seq);
	public int update(calDto dto);
	public int getCalViewCount(String memberId, String yyyyMMdd);
	public calDto getCalBoard(int seq);

}
