package com.lol.hgl.bizz;

import java.util.List;

import com.lol.hgl.dto.fwlDto;

public interface FWLBizz {
	
	public List<fwlDto> fwlList(int memberNo);
	public int fwlInsert(String fwlItem, int memberNo);
	public int FWLSuccess(int fwlNo);
	public int FWLDelete(int fwlNo);
	public int FWLShare(String memberNickName);

}
