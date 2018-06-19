package com.lol.hgl.dto;

public class famDto {
	
	private int memberNo;
	private int famNo;
	private String famName;
	private int famHeight;
	private String famDisease1;
	private String famDisease2;
	private String famDisease3 ;
	private String famBirth;	
	
	public famDto() {
		
	}
	
	public famDto(int memberNo, int famNo, String famName, int famHeight, String famDisease1, String famDisease2,
			String famDisease3, String famBirth) {
		this.memberNo = memberNo;
		this.famNo = famNo;
		this.famName = famName;
		this.famHeight = famHeight;
		this.famDisease1 = famDisease1;
		this.famDisease2 = famDisease2;
		this.famDisease3 = famDisease3;
		this.famBirth = famBirth;
	
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getFamNo() {
		return famNo;
	}

	public void setFamNo(int famNo) {
		this.famNo = famNo;
	}

	public String getFamName() {
		return famName;
	}

	public void setFamName(String famName) {
		this.famName = famName;
	}

	public int getFamHeight() {
		return famHeight;
	}

	public void setFamHeight(int famHeight) {
		this.famHeight = famHeight;
	}

	public String getFamDisease1() {
		return famDisease1;
	}

	public void setFamDisease1(String famDisease1) {
		this.famDisease1 = famDisease1;
	}

	public String getFamDisease2() {
		return famDisease2;
	}

	public void setFamDisease2(String famDisease2) {
		this.famDisease2 = famDisease2;
	}

	public String getFamDisease3() {
		return famDisease3;
	}

	public void setFamDisease3(String famDisease3) {
		this.famDisease3 = famDisease3;
	}

	public String getFamBirth() {
		return famBirth;
	}

	public void setFamBirth(String famBirth) {
		this.famBirth = famBirth;
	}


	
	
	
	

}
