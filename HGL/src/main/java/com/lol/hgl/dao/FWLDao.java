package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.fwlDto;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.fwlbcmDto;

public interface FWLDao {
	
	public List<fwlDto> fwlList(int memberNo);
	public int fwlInsert(fwlDto dto);
	public int FWLSuccess(int fwlNo);
	public int FWLSuccessCancel(int fwlNo);
	public int FWLDelete(int fwlNo);
	public int FWLBInsert(fwlbDto dto);

	public fwlbDto FWLBDetail(String memberNickName, int fwlbNo);
	public int FWLBUpdateReadCount(int fwlbNo);
	public List<fwlbcmDto> fwlbcmList(int fwlbNO);
	
	public int FWLBListCount();
	public List<fwlbDto> fwlbAllList();
	public int insertFWLBRowNum(int rowNum, int fwlbNo);
	public List<fwlbDto> FwlbList(int startPost, int endPost);

	public int FWLBListSearchCount(String searchNickName);
	public List<fwlbDto> fwlbSearchAllList(String searchNickName);
	public List<fwlbDto> FwlbListSearch(int startPost, int endPost, String searchNickName);
	
	
	public int FWLBCMInsert(fwlbcmDto dto);
	public int FWLBCMDelete(int fwlbcmNo);
	public int FWLBDelete(int fwlbNo);

}
