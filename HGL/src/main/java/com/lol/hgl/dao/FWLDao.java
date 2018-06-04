package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.fwlDto;

public interface FWLDao {
	
	public List<fwlDto> fwlList(int memberNo);
	public int fwlInsert(fwlDto dto);

}
