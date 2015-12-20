package com.lrmz.action.goods;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.entity.Goods;

public class ToUpdateGoodsAction {
	private int id;
	private Goods goods;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String execute(){
		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		try {
			goods = dao.findById(id);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
}
