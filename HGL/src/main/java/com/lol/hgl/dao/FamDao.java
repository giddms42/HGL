package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.famDto;

public interface FamDao {
	
	public List<famDto> allFamList(int memberNo);
	public int insertFam(famDto famDto);
	public famDto famDetail(int famNo);
	public int famDelete(int famNo);

}
