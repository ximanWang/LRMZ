package com.lrmz.action.order;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.order.IOrderDAO;
import com.lrmz.entity.Orders;
import com.lrmz.entity.User;

public class FindAllOrderAction {
	private List<Orders> listOrder;
	private double totalprice = 0.0;
	private User user;
	
	public List<Orders> getListOrder() {
		return listOrder;
	}
	public void setListOrder(List<Orders> listOrder) {
		this.listOrder = listOrder;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute(){
		user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		IOrderDAO dao = DAOFactory.getOrderDAO();
		listOrder = dao.getAllOrder(user);
		return "success";
	}
}
