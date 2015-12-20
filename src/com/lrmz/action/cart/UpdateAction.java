package com.lrmz.action.cart;

import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.cart.ICartDAO;
import com.lrmz.entity.Cart;

public class UpdateAction {
	
	private int id;
	private int num;

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String execute(){
		ICartDAO cartDAO = DAOFactory.getCartDAO();
		Cart cart = cartDAO.findById(id);
		cart.setNum(num);
		cartDAO.updateCart(cart);
		return "success";
	}
}
