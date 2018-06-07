package com.lol.hgl.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ggimgDto {
	
	private int ggNo;
	private int ggimgNo;
	private String ggimgUser;
	private String ggimgName;
	private Date ggimgDate;
	private MultipartFile file;
	
	public ggimgDto() {
		
	}
	
	public ggimgDto(int ggNo, int ggimgNo, String ggimgUser, String ggimgName, Date ggimgDate) {
		this.ggNo = ggNo;
		this.ggimgNo = ggimgNo;
		this.ggimgUser = ggimgUser;
		this.ggimgName = ggimgName;
		this.ggimgDate = ggimgDate;
	}

	public int getGgNo() {
		return ggNo;
	}

	public void setGgNo(int ggNo) {
		this.ggNo = ggNo;
	}

	public int getGgimgNo() {
		return ggimgNo;
	}

	public void setGgimgNo(int ggimgNo) {
		this.ggimgNo = ggimgNo;
	}

	public String getGgimgUser() {
		return ggimgUser;
	}

	public void setGgimgUser(String ggimgUser) {
		this.ggimgUser = ggimgUser;
	}

	public String getGgimgName() {
		return ggimgName;
	}

	public void setGgimgName(String ggimgName) {
		this.ggimgName = ggimgName;
	}

	public Date getGgimgDate() {
		return ggimgDate;
	}

	public void setGgimgDate(Date ggimgDate) {
		this.ggimgDate = ggimgDate;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	
	
}
