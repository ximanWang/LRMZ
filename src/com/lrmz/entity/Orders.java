package com.lrmz.entity;

import java.sql.Date;

public class Orders {
	private int id;//订单号
	private String oid;//生成订单号
	private Date order_time;//订单时间
	private double totalprice;//总价
	private int status;//状态
	private User user;//与用户多对一关联
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date date) {
		this.order_time = date;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
}
