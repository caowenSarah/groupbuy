package org.cw.group.bean;

import java.util.Date;

public class Trader {
	private int trId;
	private String trName;
	private String trPassword;
	private String customerName;
	private String interAddress;
	private String conTel;
	private String khBank;
	private String khName;
	private String bankAccount;
	private Date trTime;
	public int getTrId() {
		return trId;
	}
	public void setTrId(int trId) {
		this.trId = trId;
	}
	public String getTrName() {
		return trName;
	}
	public void setTrName(String trName) {
		this.trName = trName;
	}
	public String getTrPassword() {
		return trPassword;
	}
	public void setTrPassword(String trPassword) {
		this.trPassword = trPassword;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getInterAddress() {
		return interAddress;
	}
	public void setInterAddress(String interAddress) {
		this.interAddress = interAddress;
	}
	public String getConTel() {
		return conTel;
	}
	public void setConTel(String conTel) {
		this.conTel = conTel;
	}
	public String getKhBank() {
		return khBank;
	}
	public void setKhBank(String khBank) {
		this.khBank = khBank;
	}
	public String getKhName() {
		return khName;
	}
	public void setKhName(String khName) {
		this.khName = khName;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	public Date getTrTime() {
		return trTime;
	}
	public void setTrTime(Date trTime) {
		this.trTime = trTime;
	}
	
}
