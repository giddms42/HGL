package com.lol.hgl.bizz;

import java.util.List;

import com.lol.hgl.dto.famDto;

public interface FamBizz {
	
	public List<famDto> allFamList(int memberNo);
	public int insertFam(famDto famDto, String disease);
}
