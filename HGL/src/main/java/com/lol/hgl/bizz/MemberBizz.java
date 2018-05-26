package com.lol.hgl.bizz;

import com.lol.hgl.dto.memberDto;

public interface MemberBizz {
	
	public String IDChk(String id);
	public String nickNameChk(String nickName);
	public String emailChk(String email);
	public String pwChk(String pw);
	public int signUp(memberDto dto);

}
