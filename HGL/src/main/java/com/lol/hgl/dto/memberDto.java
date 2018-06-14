package com.lol.hgl.dto;

import java.util.Date;

public class memberDto {
	
	private int memberNo;
	private String memberId;
	private String memberPw;
	private String memberNickname;
	private String memberEmail;
	private String memberPhone;
	private String memberDo;
	private String memberCity;
	private String memberAddr;
	private String memberRole;
	private int memberProhibitCount;
	private Date memberProhibitTime;
	private String memberProhibitChk;
	private String memberJoin;
	private String memberSMS;
	private Date memberLogoutTime;
	
	public memberDto() {
		
	}
	
	public memberDto(String memberId, String memberPw) {
		this.memberId = memberId;
		this.memberPw = memberPw;
	}
	
	public memberDto(String memberNickname, Date memberProhibitTime) {
		this.memberNickname = memberNickname;
		this.memberProhibitTime = memberProhibitTime;
	}

	public memberDto(int memberNo, String memberId, String memberPw, String memberNickname, String memberEmail,
			String memberPhone, String memberDo, String memberCity, String memberAddr, String memberRole,
			int memberProhibitCount, Date memberProhibitTime, String memberProhibitChk, String memberJoin,
			String memberSMS, Date memberLogoutTime) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberNickname = memberNickname;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
		this.memberDo = memberDo;
		this.memberCity = memberCity;
		this.memberAddr = memberAddr;
		this.memberRole = memberRole;
		this.memberProhibitCount = memberProhibitCount;
		this.memberProhibitTime = memberProhibitTime;
		this.memberProhibitChk = memberProhibitChk;
		this.memberJoin = memberJoin;
		this.memberSMS = memberSMS;
		this.memberLogoutTime = memberLogoutTime;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberDo() {
		return memberDo;
	}

	public void setMemberDo(String memberDo) {
		this.memberDo = memberDo;
	}

	public String getMemberCity() {
		return memberCity;
	}

	public void setMemberCity(String memberCity) {
		this.memberCity = memberCity;
	}

	public String getMemberAddr() {
		return memberAddr;
	}

	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}

	public String getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}

	public int getMemberProhibitCount() {
		return memberProhibitCount;
	}

	public void setMemberProhibitCount(int memberProhibitCount) {
		this.memberProhibitCount = memberProhibitCount;
	}

	public Date getMemberProhibitTime() {
		return memberProhibitTime;
	}

	public void setMemberProhibitTime(Date memberProhibitTime) {
		this.memberProhibitTime = memberProhibitTime;
	}

	public String getMemberProhibitChk() {
		return memberProhibitChk;
	}

	public void setMemberProhibitChk(String memberProhibitChk) {
		this.memberProhibitChk = memberProhibitChk;
	}

	public String getMemberJoin() {
		return memberJoin;
	}

	public void setMemberJoin(String memberJoin) {
		this.memberJoin = memberJoin;
	}

	public String getMemberSMS() {
		return memberSMS;
	}

	public void setMemberSMS(String memberSMS) {
		this.memberSMS = memberSMS;
	}

	public Date getMemberLogoutTime() {
		return memberLogoutTime;
	}

	public void setMemberLogoutTime(Date memberLogoutTime) {
		this.memberLogoutTime = memberLogoutTime;
	}
	
	

	
	
 
}
