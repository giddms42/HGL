package com.lol.hgl.dao;

import com.lol.hgl.dto.memberDto;

public interface MemberDao {
	
	public String IDChk(String id);
	public String nickNameChk(String nickName);
	public String emailChk(String email);
	public int signUp(memberDto dto);
	public String IDSearch(String email);
	public String memberCertification(String email, String id);
	public memberDto Login(String memberId, String memberPw);
	public String LoginChk(String id);
	public int pwChange(memberDto dto);
	

}
