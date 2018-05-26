package com.lol.hgl.dto;

import java.util.Date;

public class fwlbcmDto {
	
	private int fwlbNo;
	private int fwlbcmNo;
	private String fwlbcmWriter;
	private String fwlbcmCont;
	private Date fwlbcmDate;
	
	public fwlbcmDto() {
		
	}
	
	public fwlbcmDto(int fwlbNo, int fwlbcmNo, String fwlbcmWriter, String fwlbcmCont, Date fwlbcmDate) {
		this.fwlbNo = fwlbNo;
		this.fwlbcmNo = fwlbcmNo;
		this.fwlbcmWriter = fwlbcmWriter;
		this.fwlbcmCont = fwlbcmCont;
		this.fwlbcmDate = fwlbcmDate;
	}

	public int getFwlbNo() {
		return fwlbNo;
	}

	public void setFwlbNo(int fwlbNo) {
		this.fwlbNo = fwlbNo;
	}

	public int getFwlbcmNo() {
		return fwlbcmNo;
	}

	public void setFwlbcmNo(int fwlbcmNo) {
		this.fwlbcmNo = fwlbcmNo;
	}

	public String getFwlbcmWriter() {
		return fwlbcmWriter;
	}

	public void setFwlbcmWriter(String fwlbcmWriter) {
		this.fwlbcmWriter = fwlbcmWriter;
	}

	public String getFwlbcmCont() {
		return fwlbcmCont;
	}

	public void setFwlbcmCont(String fwlbcmCont) {
		this.fwlbcmCont = fwlbcmCont;
	}

	public Date getFwlbcmDate() {
		return fwlbcmDate;
	}

	public void setFwlbcmDate(Date fwlbcmDate) {
		this.fwlbcmDate = fwlbcmDate;
	}
	
	
	

}
