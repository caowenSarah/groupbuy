package org.cw.group.bean;

import java.util.Date;

public class OrderItem {
	private int oitemId;
	private Produce pro;
	private int amount;
	private String oitemUser;
	private String oitemStatus;
	private Date oitemCreatetime;
	

	public Date getOitemCreatetime() {
		return oitemCreatetime;
	}

	public void setOitemCreatetime(Date oitemCreatetime) {
		this.oitemCreatetime = oitemCreatetime;
	}

	public String getOitemUser() {
		return oitemUser;
	}

	public void setOitemUser(String oitemUser) {
		this.oitemUser = oitemUser;
	}

	public String getOitemStatus() {
		return oitemStatus;
	}

	public void setOitemStatus(String oitemStatus) {
		this.oitemStatus = oitemStatus;
	}

	private String sessionId;

	public int getOitemId() {
		return oitemId;
	}

	public void setOitemId(int oitemId) {
		this.oitemId = oitemId;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public Produce getPro() {
		return pro;
	}

	public void setPro(Produce pro) {
		this.pro = pro;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Produce setPro() {
		// TODO Auto-generated method stub
		return null;
	}

}
