package com.lol.hgl.dto;

import java.util.Date;

public class fwlbDto {

	private int fwlbNo;
	private int fwlbRowNum;
	private String fwlbWriter;
	private String fwlbTitle;
	private int fwlbReadcnt;
	private Date fwlbDate;

	public fwlbDto() {

	}

	public fwlbDto(String fwlbWriter, int fwlbNo) {
		this.fwlbWriter = fwlbWriter;
		this.fwlbNo = fwlbNo;
	}
	
	public fwlbDto(String fwlbWriter, String fwlbTitle) {
		this.fwlbWriter = fwlbWriter;
		this.fwlbTitle = fwlbTitle;
	}

	public fwlbDto(int fwlbNo, int fwlbRowNum, String fwlbWriter, String fwlbTitle, int fwlbReadcnt, Date fwlbDate) {
		this.fwlbNo = fwlbNo;
		this.fwlbRowNum = fwlbRowNum;
		this.fwlbWriter = fwlbWriter;
		this.fwlbTitle = fwlbTitle;
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

	public int getFwlbRowNum() {
		return fwlbRowNum;
	}

	public void setFwlbRowNum(int fwlbRowNum) {
		this.fwlbRowNum = fwlbRowNum;
	}

}
