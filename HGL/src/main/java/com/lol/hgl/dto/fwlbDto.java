package com.lol.hgl.dto;

import java.util.Date;

public class fwlbDto {
	
	private int fwlbNo;
	private String fwlbWriter;
	private String fwlbTitle;
	private String fwlbCont;
	private int fwlbReadcnt;
	private Date fwlbDate;
	
	public fwlbDto() {
		
	}
	
	public fwlbDto(int fwlbNo, String fwlbWriter, String fwlbTitle, String fwlbCont, int fwlbReadcnt, Date fwlbDate) {
		this.fwlbNo = fwlbNo;
		this.fwlbWriter = fwlbWriter;
		this.fwlbTitle = fwlbTitle;
		this.fwlbCont = fwlbCont;
		this.fwlbReadcnt = fwlbReadcnt;
		this.fwlbDate = fwlbDate;
	}

	public int getFwlbNo() {
		return fwlbNo;
	}

	public void setFwlbNo(int fwlbNo) {
		this.fwlbNo = fwlbNo;
	}

	public String getFwlbWriter() {
		return fwlbWriter;
	}

	public void setFwlbWriter(String fwlbWriter) {
		this.fwlbWriter = fwlbWriter;
	}

	public String getFwlbTitle() {
		return fwlbTitle;
	}

	public void setFwlbTitle(String fwlbTitle) {
		this.fwlbTitle = fwlbTitle;
	}

	public String getFwlbCont() {
		return fwlbCont;
	}

	public void setFwlbCont(String fwlbCont) {
		this.fwlbCont = fwlbCont;
	}

	public int getFwlbReadcnt() {
		return fwlbReadcnt;
	}

	public void setFwlbReadcnt(int fwlbReadcnt) {
		this.fwlbReadcnt = fwlbReadcnt;
	}

	public Date getFwlbDate() {
		return fwlbDate;
	}

	public void setFwlbDate(Date fwlbDate) {
		this.fwlbDate = fwlbDate;
	}
	
	
	
	

}
