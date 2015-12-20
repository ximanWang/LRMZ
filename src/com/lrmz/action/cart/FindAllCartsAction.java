package com.lrmz.action.cart;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.cart.ICartDAO;
import com.lrmz.entity.Cart;
import com.lrmz.entity.User;

public class FindAllCartsAction {
	private List<Cart> listCart;
	private double total = 0.0;
	public List<Cart> getListCart() {
		return listCart;
	}
	
	public void setListCart(List<Cart> listCart) {
		this.listCart = listCart;
	}
	public double getTotal() {
		for(Cart c : listCart){
			total += c.getSubtotal();
		}
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	private User user;
	
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
		return "success";
		
	}
	
}
