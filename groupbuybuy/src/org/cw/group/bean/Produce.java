package org.cw.group.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Produce {
	private int proId;
	private String proCity;
	private String proType;
	private String proTitle;
	private double proMprice;
	private double proTprice;
	private int proLowAmount;
	private int proHighAmount;
	private Date proStartTime;
	private Date proEndTime;
	private Date proCloseTime;
	private String proIntroduce;
	private String proPrompt;
	private String proProducer;
	private String proName;
	private String proImg1;
	private String proImg2;
	private String proImg3;
	private String proIndent;
	private int proBuyAmount;
	
	private List<OrderItem> list = new  ArrayList<OrderItem>();
	
	
	public List<OrderItem> getList() {
		return list;
	}
	public void setList(List<OrderItem> list) {
		this.list = list;
	}
	public int getProBuyAmount() {
		return proBuyAmount;
	}
	public void setProBuyAmount(int proBuyAmount) {
		this.proBuyAmount = proBuyAmount;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProCity() {
		return proCity;
	}
	public void setProCity(String proCity) {
		this.proCity = proCity;
	}
	public String getProType() {
		return proType;
	}
	public void setProType(String proType) {
		this.proType = proType;
	}
	public String getProTitle() {
		return proTitle;
	}
	public void setProTitle(String proTitle) {
		this.proTitle = proTitle;
	}
	public double getProMprice() {
		return proMprice;
	}
	public void setProMprice(double proMprice) {
		this.proMprice = proMprice;
	}
	public double getProTprice() {
		return proTprice;
	}
	public void setProTprice(double proTprice) {
		this.proTprice = proTprice;
	}
	public int getProLowAmount() {
		return proLowAmount;
	}
	public void setProLowAmount(int proLowAmount) {
		this.proLowAmount = proLowAmount;
	}
	public int getProHighAmount() {
		return proHighAmount;
	}
	public void setProHighAmount(int proHighAmount) {
		this.proHighAmount = proHighAmount;
	}
	public Date getProStartTime() {
		return proStartTime;
	}
	public void setProStartTime(Date proStartTime) {
		this.proStartTime = proStartTime;
	}
	public Date getProEndTime() {
		return proEndTime;
	}
	public void setProEndTime(Date proEndTime) {
		this.proEndTime = proEndTime;
	}
	public Date getProCloseTime() {
		return proCloseTime;
	}
	public void setProCloseTime(Date proCloseTime) {
		this.proCloseTime = proCloseTime;
	}
	public String getProIntroduce() {
		return proIntroduce;
	}
	public void setProIntroduce(String proIntroduce) {
		this.proIntroduce = proIntroduce;
	}
	public String getProPrompt() {
		return proPrompt;
	}
	public void setProPrompt(String proPrompt) {
		this.proPrompt = proPrompt;
	}
	public String getProProducer() {
		return proProducer;
	}
	public void setProProducer(String proProducer) {
		this.proProducer = proProducer;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProImg1() {
		return proImg1;
	}
	public void setProImg1(String proImg1) {
		this.proImg1 = proImg1;
	}
	public String getProImg2() {
		return proImg2;
	}
	public void setProImg2(String proImg2) {
		this.proImg2 = proImg2;
	}
	public String getProImg3() {
		return proImg3;
	}
	public void setProImg3(String proImg3) {
		this.proImg3 = proImg3;
	}
	public String getProIndent() {
		return proIndent;
	}
	public void setProIndent(String proIndent) {
		this.proIndent = proIndent;
	}
}
