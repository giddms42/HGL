package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.famDto;

public interface FamDao {
	
	public List<famDto> allFamList(int memberNo);

}
