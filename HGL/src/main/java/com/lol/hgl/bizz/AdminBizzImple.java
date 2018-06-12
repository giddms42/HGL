package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.AdminDao;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.ggDto;
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
	public List<memberDto> memberAllList(int startPost, int endPost) {
		return dao.memberAllList(startPost, endPost);
	}

	@Override
	public memberDto memberSelectOne(String memberNickName) {
		return dao.memberSelectOne(memberNickName);
	}

	@Override
	public int ggCount(String memberNickName) {
		return dao.ggCount(memberNickName);
	}

	@Override
	public int fwlbCount(String memberNickName) {
		return dao.fwlbCount(memberNickName);
	}

	@Override
	public List<ggDto> memberGGList(int startPost, int endPost, String memberNickName) {
		return dao.memberGGList(startPost, endPost, memberNickName);
	}

	@Override
	public List<fwlbDto> memberFwlbList(int startPost, int endPost, String memberNickName) {
		return dao.memberFwlbList(startPost, endPost, memberNickName);
	}

	@Override
	public int ggDelete(int ggNo) {
		return dao.ggDelete(ggNo);
	}

	@Override
	public int fwlbDelete(int fwlbNo) {
		return dao.fwlbDelete(fwlbNo);
	}




}
