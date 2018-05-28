package com.lol.hgl.dao;

import com.lol.hgl.dto.memberDto;

public interface MemberDao {
	
	public String IDChk(String id);
	public String nickNameChk(String nickName);
	public String emailChk(String email);
	public int signUp(memberDto dto);

}
