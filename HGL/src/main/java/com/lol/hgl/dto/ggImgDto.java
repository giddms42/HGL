package com.lol.hgl.dto;

import java.util.Date;

public class ggImgDto {
	
	private int ggImgNo;
	private int ggNo;
	private String ggOriginalName;
	private String ggStoreName;
	private long ggImgSize;
	private Date ggImgDate;
	private String ggCreatUser;
	
	public ggImgDto() {
		
	}
	
	public ggImgDto(int ggImgNo, int ggNo, String ggOriginalName, String ggStoreName, long ggImgSize, Date ggImgDate,
			String ggCreatUser) {
		super();
		this.ggImgNo = ggImgNo;
		this.ggNo = ggNo;
		this.ggOriginalName = ggOriginalName;
		this.ggStoreName = ggStoreName;
		this.ggImgSize = ggImgSize;
		this.ggImgDate = ggImgDate;
		this.ggCreatUser = ggCreatUser;
	}

	public int getGgImgNo() {
		return ggImgNo;
	}

	public void setGgImgNo(int ggImgNo) {
		this.ggImgNo = ggImgNo;
	}

	public int getGgNo() {
		return ggNo;
	}

	public void setGgNo(int ggNo) {
		this.ggNo = ggNo;
	}

	public String getGgOriginalName() {
		return ggOriginalName;
	}

	public void setGgOriginalName(String ggOriginalName) {
		this.ggOriginalName = ggOriginalName;
	}

	public String getGgStoreName() {
		return ggStoreName;
	}

	public void setGgStoreName(String ggStoreName) {
		this.ggStoreName = ggStoreName;
	}

	public long getGgImgSize() {
		return ggImgSize;
	}

	public void setGgImgSize(long ggImgSize) {
		this.ggImgSize = ggImgSize;
	}

	public Date getGgImgDate() {
		return ggImgDate;
	}

	public void setGgImgDate(Date ggImgDate) {
		this.ggImgDate = ggImgDate;
	}

	public String getGgCreatUser() {
		return ggCreatUser;
	}

	public void setGgCreatUser(String ggCreatUser) {
		this.ggCreatUser = ggCreatUser;
	}

	
	
}
