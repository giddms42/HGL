package com.lol.hgl.bizz;

import java.util.List;

import com.lol.hgl.dto.fwlDto;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.fwlbcmDto;

public interface FWLBizz {
	
	public List<fwlDto> fwlList(int memberNo);
	public int fwlInsert(String fwlItem, int memberNo);
	public int FWLSuccess(int fwlNo);
	public int FWLSuccessCancel(int fwlNo);
	public int FWLDelete(int fwlNo);
	public int FWLShare(String memberNickName);
	
	public fwlbDto FWLBDetail(String memberNickName, int fwlbNo);
	public int FWLBUpdateReadCount(int fwlbNo);
	public List<fwlbcmDto> fwlbcmList(int fwlbNO);
	
	public int FWLBListCount();
	public void insertFWLBRowNum();
	public List<fwlbDto> FwlbList(int startPost, int endPost);
	
	
	public int FWLBListSearchCount(String searchNickName);
	public void insertFWLBSearchRowNum(String searchNickName);
	public List<fwlbDto> FwlbListSearch(int startPost, int endPost, String searchNickName);
	
	
	public int FWLBCMInsert(fwlbcmDto dto);
	public int FWLBCMDelete(int fwlbcmNo);
	public int FWLBDelete(int fwlbNo);


}
