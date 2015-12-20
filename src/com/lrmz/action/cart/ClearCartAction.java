package com.lrmz.action.cart;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.cart.ICartDAO;
import com.lrmz.entity.User;

public class ClearCartAction {
	
	public String execute(){
		ICartDAO cartDAO = DAOFactory.getCartDAO();
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		cartDAO.clearCarts(user);
		return "success";
	}
}
