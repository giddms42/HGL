package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.AdminDao;
import com.lol.hgl.dto.memberDto;

@Service
public class AdminBizzImple implements AdminBizz {

	@Autowired
	private AdminDao dao;
	
	
	@Override
	public int memberAllListCount() {
		return dao.memberAllListCount();
	}
	
	@Override
	public List<memberDto> memberAllList() {
		return dao.memberAllList();
	}



}
