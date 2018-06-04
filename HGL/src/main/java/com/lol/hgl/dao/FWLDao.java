package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.fwlDto;

public interface FWLDao {
	
	public List<fwlDto> fwlList(int memberNo);
	public int fwlInsert(fwlDto dto);
	public int FWLSuccess(int fwlNo);
	public int FWLDelete(int fwlNo);
	public int FWLBInsert(String memberNickName);

}
