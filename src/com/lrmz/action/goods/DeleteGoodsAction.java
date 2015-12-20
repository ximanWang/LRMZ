package com.lrmz.action.goods;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.goods.IGoodsDAO;

public class DeleteGoodsAction {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String execute(){
		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		try {
			dao.deleteGoods(id);
			System.out.println("删除成功！");
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
	
}
