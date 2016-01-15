package org.cw.group.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Order {
	private int orderId;
	private int orderTopic;
	private int orderAmount;
	private Date orderCreateTime;
	private String orderStatus;
	private double allMoney;
	private User user;
    private List<OrderItem> list;
    private String sessionId;
    
    
	public int getOrderTopic() {
		return orderTopic;
	}

	public void setOrderTopic(int orderTopic) {
		this.orderTopic = orderTopic;
	}

	public int getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}

	public void setList(List<OrderItem> list) {
		this.list = list;
	}

	public List<OrderItem> getList() {
		return list;
	}

	public void setList(ArrayList<OrderItem> list) {
		this.list = list;
	}

	

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public Date getOrderCreateTime() {
		return orderCreateTime;
	}

	public void setOrderCreateTime(Date orderCreateTime) {
		this.orderCreateTime = orderCreateTime;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public double getAllMoney() {
		return allMoney;
	}

	public void setAllMoney(double allMoney) {
		this.allMoney = allMoney;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
