package org.cw.group.bean;

import java.util.Date;

public class talkwith {
	private int talkid;
	private String talkTopic;
	private String talkUser;
	private String talkAddress;
	private Date talkTime;
	private String talkInfo;

	public int getTalkid() {
		return talkid;
	}

	public void setTalkid(int talkid) {
		this.talkid = talkid;
	}

	public String getTalkTopic() {
		return talkTopic;
	}

	public void setTalkTopic(String talkTopic) {
		this.talkTopic = talkTopic;
	}

	public String getTalkUser() {
		return talkUser;
	}

	public void setTalkUser(String talkUser) {
		this.talkUser = talkUser;
	}

	public String getTalkAddress() {
		return talkAddress;
	}

	public void setTalkAddress(String talkAddress) {
		this.talkAddress = talkAddress;
	}



	public Date getTalkTime() {
		return talkTime;
	}

	public void setTalkTime(Date talkTime) {
		this.talkTime = talkTime;
	}

	public String getTalkInfo() {
		return talkInfo;
	}

	public void setTalkInfo(String talkInfo) {
		this.talkInfo = talkInfo;
	}

}
