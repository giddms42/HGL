package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.kindstoreDto;

public interface kindstoreDao {

	//paging
	public int kindstoreListSerchCount(String kinddo, String kindcity);
	public List<kindstoreDto> selectSearchAll(int startPost, int endPost, String kinddo, String kindcity);
	
	public kindstoreDto selectOne(int kindNum);
}
