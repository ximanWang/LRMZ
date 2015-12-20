package com.lrmz.action.order;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.cart.ICartDAO;
import com.lrmz.dao.order.IOrderDAO;
import com.lrmz.entity.Cart;
import com.lrmz.entity.Orders;
import com.lrmz.entity.User;

public class AddOrderAction {
	private List<Cart> listCart;
	private double total ;
	private int id;
	private User user;
	private String oid;
	public List<Cart> getListCart() {
		return listCart;
	}
	public void setListCart(List<Cart> listCart) {
		this.listCart = listCart;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String execute(){
		user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		ICartDAO cartDAO = DAOFactory.getCartDAO();
		listCart = cartDAO.getAllCart(user);
		IOrderDAO orderDAO = DAOFactory.getOrderDAO();
		Orders order = orderDAO.getOrder(user);
		java.sql.Date date = new java.sql.Date(new java.util.Date().getTime());
		for(Cart c : listCart){
			total += c.getSubtotal();
		}
		oid= Long.toString(System.currentTimeMillis());
		System.out.println(oid);
		order.setOid(oid);
		order.setTotalprice(total);
		order.setUser(user);
		order.setOrder_time(date);
		order.setStatus(0);
		orderDAO.addOrder(order);
		return "success";
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
}
