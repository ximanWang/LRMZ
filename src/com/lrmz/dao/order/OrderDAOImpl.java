package com.lrmz.dao.order;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.lrmz.entity.Cart;
import com.lrmz.entity.Orders;
import com.lrmz.entity.User;
import com.lrmz.util.HibernateUtil;

public class OrderDAOImpl implements IOrderDAO {
	
	public void addOrder(Orders order){
		if(order==null){
			return;
		}
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		session.save(order);
		ts.commit();
		session.close();
	}
	
	public List<Orders> getAllOrder(User user) {
		Session session = HibernateUtil.getSession();
		String hql = "from Orders o where o.user.userID=? order by o.id asc";
		Query query = session.createQuery(hql);
		query.setInteger(0, user.getUserID());
		List<Orders> list = query.list();
		session.close();
		return list;
	}
	
	public Orders getOrder(User user) {
		Session session = HibernateUtil.getSession();
		String hql = "from Orders o where o.user.userID=?";
		Query query = session.createQuery(hql); 
		query.setInteger(0, user.getUserID());
		List<Orders> list = query.list();
		if(list.size()>0){
			return (Orders) list.get(0);
		}else{
			return null;
		}
		
	}
	
	/*public void updateNum(Cart cart) {
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		session.merge(cart);
		ts.commit();
		session.close();
	}*/
	
	/*public void clearCarts(User user) {
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		String hql = "delete Cart c where c.user.userID = :uid ";
		session.createQuery(hql).setInteger("uid", user.getUserID()).executeUpdate();
		ts.commit();
		session.close();
	}*/

	/*public void deleteByGoods(int gid, User user) {
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
	}*/

	/*public void updateCart(Cart cart) {
		if(cart == null){
			return;
		}
		Session session = HibernateUtil.getSession();
		Transaction ts = session.beginTransaction();
		session.update(cart);
		ts.commit();
		session.close();
	}*/
	//管理员查找所有订单
	public Orders findById(int id) {
		Session session = HibernateUtil.getSession();
		Orders order = (Orders) session.get(Orders.class, id);
		return order;
	}
	//
	
	public static void main(String[] args) {
		
	}
}
