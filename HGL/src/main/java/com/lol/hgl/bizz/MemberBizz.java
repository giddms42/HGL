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
	public memberDto detailLogin(int memberNo);
	public memberDto Login(String memberId);
	public String LoginChk(String id, String pw);
	public int pwChange(memberDto dto);
	public int updateMemberInfo(memberDto dto);
	public int getOut(int memberNo);
	public memberDto searchMember(String memberNickName);
	public int logOutTime(String memberId);
	public void mangeCancel();
}
