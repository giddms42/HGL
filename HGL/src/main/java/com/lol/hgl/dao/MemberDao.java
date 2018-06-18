package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.memberDto;

public interface MemberDao {
	
	public String IDChk(String id);
	public String nickNameChk(String nickName);
	public String emailChk(String email);
	public int signUp(memberDto dto);
	public String IDSearch(String email);
	public String memberCertification(String email, String id);
	public memberDto detailLogin(int memberNo);
	public memberDto Login(String memberId);
	public String LoginChk(String id);
	public int pwChange(memberDto dto);
	public int updateMemberInfo(memberDto dto);
	public int getOut(int memberNo);
	public memberDto searchMember(String memberNickName);
	public int logOutTime(String memberId);
	public List<memberDto> MangeList();
	public int updateMangeChk(String memberNickName);
	public List<memberDto> smsList();
	 

}
