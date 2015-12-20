package com.lrmz.action.cart;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.cart.ICartDAO;
import com.lrmz.entity.User;

public class DeleteOne {
	private int goodsId;

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String execute(){
		ICartDAO cartDAO = DAOFactory.getCartDAO();
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		cartDAO.deleteByGoods(goodsId, user);
		return "success";
		
	}
}	
