package com.lol.hgl.dto;

import java.util.Date;

public class ggDto {
	
	
	private int ggNo;
	private String ggWriter;
	private String ggTitle;
	private String ggCont;
	private int ggReadcnt;
	private Date ggDate;
	private String ggImgname;
	
	public ggDto() {
		
	}
	
	public ggDto(int ggNo, String ggWriter, String ggTitle, String ggCont, int ggReadcnt, Date ggDate,
			String ggImgname) {
		this.ggNo = ggNo;
		this.ggWriter = ggWriter;
		this.ggTitle = ggTitle;
		this.ggCont = ggCont;
		this.ggReadcnt = ggReadcnt;
		this.ggDate = ggDate;
		this.ggImgname = ggImgname;
	}

	public int getGgNo() {
		return ggNo;
	}

	public void setGgNo(int ggNo) {
		this.ggNo = ggNo;
	}

	public String getGgWriter() {
		return ggWriter;
	}

	public void setGgWriter(String ggWriter) {
		this.ggWriter = ggWriter;
	}

	public String getGgTitle() {
		return ggTitle;
	}

	public void setGgTitle(String ggTitle) {
		this.ggTitle = ggTitle;
	}

	public String getGgCont() {
		return ggCont;
	}

	public void setGgCont(String ggCont) {
		this.ggCont = ggCont;
	}

	public int getGgReadcnt() {
		return ggReadcnt;
	}

	public void setGgReadcnt(int ggReadcnt) {
		this.ggReadcnt = ggReadcnt;
	}

	public Date getGgDate() {
		return ggDate;
	}

	public void setGgDate(Date ggDate) {
		this.ggDate = ggDate;
	}

	public String getGgImgname() {
		return ggImgname;
	}

	public void setGgImgname(String ggImgname) {
		this.ggImgname = ggImgname;
	}
	

}
