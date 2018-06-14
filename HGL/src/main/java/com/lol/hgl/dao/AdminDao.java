package com.lol.hgl.dao;

import java.util.Date;
import java.util.List;

import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.memberDto;

public interface AdminDao {
	
	public int memberAllListCount();
	public List<memberDto> memberAllList(int startPost, int endPost);
	public memberDto memberSelectOne(String memberNickName);
	public int ggCount(String memberNickName);
	public int fwlbCount(String memberNickName);
	public List<ggDto> memberGGList(int startPost, int endPost, String memberNickName);
	public List<fwlbDto> memberFwlbList(int startPost, int endPost, String memberNickName);
	public int ggDelete(int ggNo);
	public int fwlbDelete(int fwlbNo);
	public int prohibitCount(String memberNickName);
	public int prohibitChk(String memberNickName);
	public int prohibitMangeTime(memberDto dto);

}
