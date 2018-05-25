package com.lol.hgl.dto;

public class menuDto {
	
	private String menuDisease;
	private String menuImg;
	
	public menuDto() {
		
	}
	
	public menuDto(String menuDisease, String menuImg) {
		this.menuDisease = menuDisease;
		this.menuImg = menuImg;
	}

	public String getMenuDisease() {
		return menuDisease;
	}

	public void setMenuDisease(String menuDisease) {
		this.menuDisease = menuDisease;
	}

	public String getMenuImg() {
		return menuImg;
	}

	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}
	
	
	
	

}
