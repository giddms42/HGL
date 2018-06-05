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
	public fwlbDto FWLBDetail(String memberNickName);
	public List<fwlbcmDto> fwlbcmList(int fwlbNO);
	public int FWLBListCount();
	public List<fwlbDto> FwlbList(int startPost, int endPost);

}
