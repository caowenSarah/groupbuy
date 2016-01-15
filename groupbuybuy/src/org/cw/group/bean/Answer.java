package org.cw.group.bean;

import java.util.Date;

public class Answer {
	private int aId;
	private String aUser;
	private String aContent;
	private Date aTime;
	private int talkId;
	public int getaId() {
		return aId;
	}
	public void setaId(int aId) {
		this.aId = aId;
	}
	public String getaUser() {
		return aUser;
	}
	public void setaUser(String aUser) {
		this.aUser = aUser;
	}
	public String getaContent() {
		return aContent;
	}
	public void setaContent(String aContent) {
		this.aContent = aContent;
	}
	public Date getaTime() {
		return aTime;
	}
	public void setaTime(Date aTime) {
		this.aTime = aTime;
	}
	public int getTalkId() {
		return talkId;
	}
	public void setTalkId(int talkId) {
		this.talkId = talkId;
	}
	


}
