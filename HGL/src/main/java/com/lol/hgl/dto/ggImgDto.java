package com.lol.hgl.dto;

import java.util.Date;

public class ggImgDto {
	
	private int ggImgNo;
	private int ggNo;
	private String ggImgOrginalName;
	private String ggImgStoreName;
	private long ggImgSize;
	private Date ggImgDate;
	private String ggImgCreatUser;
	private String ggImgDel;
	
	public ggImgDto() {
		
	}
	
	public ggImgDto(int ggImgNo, int ggNo, String ggImgOrginalName, String ggImgStoreName, long ggImgSize,
			Date ggImgDate, String ggImgCreatUser, String ggImgDel) {
		this.ggImgNo = ggImgNo;
		this.ggNo = ggNo;
		this.ggImgOrginalName = ggImgOrginalName;
		this.ggImgStoreName = ggImgStoreName;
		this.ggImgSize = ggImgSize;
		this.ggImgDate = ggImgDate;
		this.ggImgCreatUser = ggImgCreatUser;
		this.ggImgDel = ggImgDel;
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

	public String getGgImgOrginalName() {
		return ggImgOrginalName;
	}

	public void setGgImgOrginalName(String ggImgOrginalName) {
		this.ggImgOrginalName = ggImgOrginalName;
	}

	public String getGgImgStoreName() {
		return ggImgStoreName;
	}

	public void setGgImgStoreName(String ggImgStoreName) {
		this.ggImgStoreName = ggImgStoreName;
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

	public String getGgImgCreatUser() {
		return ggImgCreatUser;
	}

	public void setGgImgCreatUser(String ggImgCreatUser) {
		this.ggImgCreatUser = ggImgCreatUser;
	}

	public String getGgImgDel() {
		return ggImgDel;
	}

	public void setGgImgDel(String ggImgDel) {
		this.ggImgDel = ggImgDel;
	}
	
	
	
	
}
