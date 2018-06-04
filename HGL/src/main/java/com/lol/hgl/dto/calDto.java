package com.lol.hgl.dto;

import java.util.Date;

public class calDto {
	
	private int memberNo;
	private int calNo;
	private String calTitle;
	private String calSch;
	private Date calDate;
	private String calMemo;
	private String calSMS;
	
	public calDto() {
		
	}
	
	public calDto(int memberNo, int calNo, String calTitle, String calSch, Date calDate, String calMemo, String calSMS) {
		this.memberNo = memberNo;
		this.calNo = calNo;
		this.calTitle = calTitle;
		this.calSch = calSch;
		this.calDate = calDate;
		this.calMemo = calMemo;
		this.calSMS = calSMS;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
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
