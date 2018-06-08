package com.lol.hgl.bizz;

import java.util.List;

import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.kindstoreDto;

public interface kindstoreBizz {

	public int kindstoreListSerchCount(String kinddo, String kindcity);
	public List<kindstoreDto> selectSearchAll(int startPost, int endPost, String kinddo, String kindcity);
	
	public kindstoreDto selectOne(int seq);
	
}
