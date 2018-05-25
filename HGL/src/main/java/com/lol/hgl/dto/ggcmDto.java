package com.lol.hgl.dto;

import java.util.Date;

public class ggcmDto {

	private int ggNo;
	private int ggcmNo;
	private String ggcmWriter;
	private String ggcmCont;
	private Date ggcmDate;
	
	public ggcmDto() {
		
	}
	
	public ggcmDto(int ggNo, int ggcmNo, String ggcmWriter, String ggcmCont, Date ggcmDate) {
		this.ggNo = ggNo;
		this.ggcmNo = ggcmNo;
		this.ggcmWriter = ggcmWriter;
		this.ggcmCont = ggcmCont;
		this.ggcmDate = ggcmDate;
	}

	public int getGgNo() {
		return ggNo;
	}

	public void setGgNo(int ggNo) {
		this.ggNo = ggNo;
	}

	public int getGgcmNo() {
		return ggcmNo;
	}

	public void setGgcmNo(int ggcmNo) {
		this.ggcmNo = ggcmNo;
	}

	public String getGgcmWriter() {
		return ggcmWriter;
	}

	public void setGgcmWriter(String ggcmWriter) {
		this.ggcmWriter = ggcmWriter;
	}

	public String getGgcmCont() {
		return ggcmCont;
	}

	public void setGgcmCont(String ggcmCont) {
		this.ggcmCont = ggcmCont;
	}

	public Date getGgcmDate() {
		return ggcmDate;
	}

	public void setGgcmDate(Date ggcmDate) {
		this.ggcmDate = ggcmDate;
	}
	
	
	
}
