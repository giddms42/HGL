package com.lol.hgl.dto;

public class fwlDto {
	
	private int memberNo;
	private int fwlNo;
	private String fwlItem;
	private String fwlChk;
	
	public fwlDto() {
		
	}
	
	public fwlDto(int memberNo, int fwlNo, String fwlItem, String fwlChk) {
		super();
		this.memberNo = memberNo;
		this.fwlNo = fwlNo;
		this.fwlItem = fwlItem;
		this.fwlChk = fwlChk;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getFwlNo() {
		return fwlNo;
	}

	public void setFwlNo(int fwlNo) {
		this.fwlNo = fwlNo;
	}

	public String getFwlItem() {
		return fwlItem;
	}

	public void setFwlItem(String fwlItem) {
		this.fwlItem = fwlItem;
	}

	public String getFwlChk() {
		return fwlChk;
	}

	public void setFwlChk(String fwlChk) {
		this.fwlChk = fwlChk;
	}

	

}
