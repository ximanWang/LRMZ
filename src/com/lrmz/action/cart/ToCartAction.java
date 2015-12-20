package com.lrmz.action.cart;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.cart.ICartDAO;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.entity.Cart;
import com.lrmz.entity.Goods;
import com.lrmz.entity.User;

public class ToCartAction {
	private String num;//要购买的商品数量
	private String cartId;
	private String goodsId;
	
//	private List<Cart> listCart;
//	private double total = 0.0;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public String getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
//	public List<Cart> getListCart() {
//		return listCart;
//	}
//	public void setListCart(List<Cart> listCart) {
//		this.listCart = listCart;
//	}
//	//计算总额
//	public double getTotal() {
//		for(Cart c : listCart){
//			total += c.getSubtotal();
//		}
//		return total;
//	}
//	public void setTotal(double total) {
//		this.total = total;
//	}
	public String execute(){
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		System.out.println(user.getUserID()+user.getUserName());
		ICartDAO cartDAO = DAOFactory.getCartDAO();
		IGoodsDAO goodsDAO = DAOFactory.getGoodsDAO();
		System.out.println(cartDAO);
		Cart exist = cartDAO.getCart(Integer.valueOf(goodsId), user);
		System.out.println(exist);
		//购物车不存在该项
		if(exist == null){
			try {
				Goods goods = goodsDAO.findById(Integer.valueOf(goodsId));
				//创建购物项
				Cart cart = new Cart();
				cart.setGoods(goods);
				cart.setUser(user);
				cart.setNum(1);
				cart.setSubtotal(1*goods.getPrice());
				//保存到购物车
				cartDAO.addCart(cart);
			} catch (DAOException e) {
				e.printStackTrace();
			}
		}
		//购物车已经存在该购物项
		else{
			exist.setNum(exist.getNum()+1);
			exist.setSubtotal(exist.getNum()*exist.getGoods().getPrice());
			//更新操作
			cartDAO.updateNum(exist);
		}
//		listCart = cartDAO.getAllCart(user);
//		for(Cart c: listCart){
//			System.out.println(c.getGoods().getGoodsName()+c.getGoods().getPrice());
//		}
		return "success";
	}
	
	public static void main(String[] args) {
		ToCartAction action = new ToCartAction();
		action.execute();
	}
	
}
