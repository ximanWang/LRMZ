package com.lrmz.dao.cart;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.Cart;
import com.lrmz.entity.Goods;
import com.lrmz.entity.User;
import com.lrmz.util.HibernateUtil;

public class CartDAOImpl implements ICartDAO {

	public void addCart(Cart cart) {
		if(cart == null){
			return;
		}
		Session session = HibernateUtil.getSession();//开启session
		Transaction ts = session.beginTransaction();//开启Transaction
		session.save(cart);//把数据放入一级缓存session中
		ts.commit();//与数据库交汇的语句
		session.close();
	}

	public List<Cart> getAllCart(User user) {
		Session session = HibernateUtil.getSession();
		String hql = "from Cart c where c.user.userID=? order by c.id asc";
		Query query = session.createQuery(hql);
		query.setInteger(0, user.getUserID());
		List<Cart> list = query.list();
		session.close();
		return list;
		
	}

	public Cart getCart(int gid, User user) {
		Session session = HibernateUtil.getSession();
		String hql = "from Cart c where c.goods.goodsID=?" +
				"and c.user.userID=?";
		Query query = session.createQuery(hql); 
		query.setInteger(0, gid);
		query.setInteger(1, user.getUserID());
		List<Cart> list = query.list();
		if(list.size()>0){
			return (Cart) list.get(0);
		}else{
			return null;
		}
		
	}

	public void updateNum(Cart cart) {
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		session.merge(cart);
		ts.commit();
		session.close();
	}
	public static void main(String[] args) throws DAOException {
		ICartDAO dao2 = DAOFactory.getCartDAO();
		IGoodsDAO dao  = DAOFactory.getGoodsDAO();
		Goods goods = dao.findById(2);
		IUserDAO dao1 = DAOFactory.getUserDAO();
		User user = dao1.findUserById(1);
//		Cart cart = new Cart();
//		cart.setId(1000);
//		cart.setGoods(goods);
//		cart.setNum(2);
//		cart.setUser(user);
//		cart.setSubtotal(20.0);
//		dao2.addCart(cart);
//		List list = dao2.getAllCart(user);
//		System.out.println(list);
//		List list = dao2.getAllCart(user);
//		System.out.println(list);
//		Cart cart = dao2.getCart(100, user);
//		System.out.println(cart.getId()+","+cart.getNum());
//		dao2.clearCarts(user);
		dao2.deleteByGoods(1, user);
		
	}

	public void clearCarts(User user) {
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		String hql = "delete Cart c where c.user.userID = :uid ";
		session.createQuery(hql).setInteger("uid", user.getUserID()).executeUpdate();
		ts.commit();
		session.close();
	}

	public void deleteByGoods(int gid, User user) {
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		String hql = "delete Cart c where c.goods.goodsID = :gid" +
				" and c.user.userID = :uid";
		session.createQuery(hql)
			.setInteger("gid", gid)
			.setInteger("uid", user.getUserID())
			.executeUpdate();
		ts.commit();
		session.close();
	}

	public void updateCart(Cart cart) {
		if(cart == null){
			return;
		}
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		session.update(cart);
		ts.commit();
		session.close();
	}

	public Cart findById(int id) {
		Session session = HibernateUtil.getSession();
		Cart cart = (Cart) session.get(Cart.class, id);
		return cart;
	}

}
