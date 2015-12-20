package com.lrmz.dao.cart;

import java.util.List;

import com.lrmz.entity.Cart;
import com.lrmz.entity.User;

public interface ICartDAO {
	//添加一个购物项
	public void addCart(Cart cart);
	//显示某用户的购物项
	public List<Cart> getAllCart(User user);
	//判断是否存在此购物项
	public Cart getCart(int gid, User user);
	//修改数量
	public void updateNum(Cart cart);
	//清空购物车
	public void clearCarts(User user);
	//删除一项
	public void deleteByGoods(int gid, User user);
	//通过id查找
	public Cart findById(int id);
	//更新购物车
	public void updateCart(Cart cart);
}
