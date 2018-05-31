package com.lol.hgl.bizz;

import com.lol.hgl.dto.memberDto;

public interface MemberBizz {
	
	public String IDChk(String id);
	public String nickNameChk(String nickName);
	public String emailChk(String email);
	public String pwChk(String pw);
	public int signUp(memberDto dto);
	public String IDSearch(String email);
	public String memberCertification(String email, String id);
	public memberDto Login(String id);
	public String LoginChk(String id, String pw);
	public int pwChange(memberDto dto);
	public int updateMemberInfo(memberDto dto);
	public int getOut(int memberNo);
}
