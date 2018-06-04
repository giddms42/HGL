package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.fwlDto;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.fwlbcmDto;

public interface FWLDao {
	
	public List<fwlDto> fwlList(int memberNo);
	public int fwlInsert(fwlDto dto);
	public int FWLSuccess(int fwlNo);
	public int FWLDelete(int fwlNo);
	public int FWLBInsert(fwlbDto dto);
	public fwlbDto FWLBDetail(String memberNickName);
	public List<fwlbcmDto> fwlbcmList(int fwlbNO);

}
