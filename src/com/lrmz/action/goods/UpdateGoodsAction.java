package com.lrmz.action.goods;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.entity.Goods;

public class UpdateGoodsAction {
	private Goods goods;

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String execute(){
		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		try {
			System.out.println(goods.getGoodsName()+goods.getGoodsNum()+goods.getGoodsID());
			dao.update(goods);
			System.out.println(goods.getGoodsName()+goods.getGoodsNum());
			System.out.println("更新成功！");
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		
		return "ok";
	}
}
