package com.lol.hgl.dto;

import java.util.Date;

public class calDto {
	
	private String memberNickname;
	private String memberId;
	private int calNo;
	private String calTitle;
	private String calSch;
	private Date calDate;
	private String calMemo;
	private String calSMS;
	
	public calDto() {
		
	}
	
	
	public calDto(String memberId, int calNo, String calTitle, String calSch, Date calDate, String calMemo, String calSMS) {
		this.memberId = memberId;
		this.calNo = calNo;
		this.calTitle = calTitle;
		this.calSch = calSch;
		this.calDate = calDate;
		this.calMemo = calMemo;
		this.calSMS = calSMS;
	}
	
	public calDto(int calNo, String memberId, String calTitle, String calSch, String calMemo, String calSMS, String memberNickname) {
		this.calNo = calNo;
		this.memberId = memberId;
		this.calTitle = calTitle;
		this.calSch = calSch;
		this.calDate = calDate;
		this.calMemo = calMemo;
		this.calSMS = calSMS;
		this.memberNickname = memberNickname;
	}
	
	public calDto(String memberId, String calTitle, String calSch, String calMemo, String calSMS) {
		this.memberId = memberId;
		this.calTitle = calTitle;
		this.calSch = calSch;
		this.calMemo = calMemo;
		this.calSMS = calSMS;
	}
	
	public calDto(int calNo, String memberId, String calTitle, String calSch, String calMemo, String calSMS) {
		this.calNo = calNo;
		this.memberId = memberId;
		this.calTitle = calTitle;
		this.calSch = calSch;
		this.calMemo = calMemo;
		this.calSMS = calSMS;
	}
	


	public calDto(String memberId, String calTitle, String calSch, String calMemo, String calSMS, String memberNickname) {
		this.memberId = memberId;
		this.calTitle = calTitle;
		this.calSch = calSch;
		this.calMemo = calMemo;
		this.calSMS = calSMS;
		this.memberNickname = memberNickname;
	}

	public String getMemberNickname() {
		return memberNickname;
	}
	
	
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getCalNo() {
		return calNo;
	}

	public void setCalNo(int calNo) {
		this.calNo = calNo;
	}

	public String getCalTitle() {
		return calTitle;
	}

	public void setCalTitle(String calTitle) {
		this.calTitle = calTitle;
	}

	public String getCalSch() {
		return calSch;
	}

	public void setCalSch(String calSch) {
		this.calSch = calSch;
	}

	public Date getCalDate() {
		return calDate;
	}

	public void setCalDate(Date calDate) {
		this.calDate = calDate;
	}

	public String getCalMemo() {
		return calMemo;
	}

	public void setCalMemo(String calMemo) {
		this.calMemo = calMemo;
	}

	public String getCalSMS() {
		return calSMS;
	}

	public void setCalSMS(String calSMS) {
		this.calSMS = calSMS;
	}
	
	
	
	

}
