package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.memberDto;

public interface AdminDao {
	
	public int memberAllListCount();
	public List<memberDto> memberAllList();

}
