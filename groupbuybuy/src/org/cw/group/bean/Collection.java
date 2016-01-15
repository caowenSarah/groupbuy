package org.cw.group.bean;

import java.util.Date;

public class Collection {
	private int collId;
	private int collProId;
	private String collImg;
	private String collTitle;
	private double collPrice;
	private Date collProEndTime;
	public Date getCollProEndTime() {
		return collProEndTime;
	}
	public void setCollProEndTime(Date collProEndTime) {
		this.collProEndTime = collProEndTime;
	}
	private String collUser;
	
	public int getCollProId() {
		return collProId;
	}
	public void setCollProId(int collProId) {
		this.collProId = collProId;
	}
	public String getCollUser() {
		return collUser;
	}
	public void setCollUser(String collUser) {
		this.collUser = collUser;
	}
	private Date collTime;
	public int getCollId() {
		return collId;
	}
	public void setCollId(int collId) {
		this.collId = collId;
	}
	public String getCollImg() {
		return collImg;
	}
	public void setCollImg(String collImg) {
		this.collImg = collImg;
	}
	public String getCollTitle() {
		return collTitle;
	}
	public void setCollTitle(String collTitle) {
		this.collTitle = collTitle;
	}
	
	public double getCollPrice() {
		return collPrice;
	}
	public void setCollPrice(double collPrice) {
		this.collPrice = collPrice;
	}
	public Date getCollTime() {
		return collTime;
	}
	public void setCollTime(Date collTime) {
		this.collTime = collTime;
	}
	
	

}
