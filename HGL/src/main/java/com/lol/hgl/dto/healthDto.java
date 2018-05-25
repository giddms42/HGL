package com.lol.hgl.dto;

import java.util.Date;

public class healthDto {
	
	private int famNo;
	private int healthWeight;
	private int healthShrbp;
	private int healthRelbp;
	private Date healthDate;
	
	public healthDto() {
		
	}
	
	public healthDto(int famNo, int healthWeight, int healthShrbp, int healthRelbp, Date healthDate) {
		this.famNo = famNo;
		this.healthWeight = healthWeight;
		this.healthShrbp = healthShrbp;
		this.healthRelbp = healthRelbp;
		this.healthDate = healthDate;
	}

	public int getFamNo() {
		return famNo;
	}

	public void setFamNo(int famNo) {
		this.famNo = famNo;
	}

	public int getHealthWeight() {
		return healthWeight;
	}

	public void setHealthWeight(int healthWeight) {
		this.healthWeight = healthWeight;
	}

	public int getHealthShrbp() {
		return healthShrbp;
	}

	public void setHealthShrbp(int healthShrbp) {
		this.healthShrbp = healthShrbp;
	}

	public int getHealthRelbp() {
		return healthRelbp;
	}

	public void setHealthRelbp(int healthRelbp) {
		this.healthRelbp = healthRelbp;
	}

	public Date getHealthDate() {
		return healthDate;
	}

	public void setHealthDate(Date healthDate) {
		this.healthDate = healthDate;
	}
	
	
	
	
	
	

}
