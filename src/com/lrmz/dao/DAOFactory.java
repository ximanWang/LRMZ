package com.lrmz.dao;

import com.lrmz.dao.admin.AdminDAOImpl;
import com.lrmz.dao.admin.IAdminDAO;
import com.lrmz.dao.cart.CartDAOImpl;
import com.lrmz.dao.cart.ICartDAO;
import com.lrmz.dao.collection.CollectionDAOImpl;
import com.lrmz.dao.collection.ICollectionDAO;
import com.lrmz.dao.evaluation.EvaluateDAOImpl;
import com.lrmz.dao.evaluation.IEvaluateDAO;
import com.lrmz.dao.goods.GoodsDAOImpl;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.dao.order.IOrderDAO;
import com.lrmz.dao.order.OrderDAOImpl;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.dao.user.UserDAOImpl;

public class DAOFactory {
	private static IGoodsDAO goodsDAO = new GoodsDAOImpl();
	private static IUserDAO UserDAO = new UserDAOImpl();
	private static ICartDAO cartDAO = new CartDAOImpl();
	private static IAdminDAO adminDAO = new AdminDAOImpl();
	private static ICollectionDAO collectionDAO = new CollectionDAOImpl();
	private static IEvaluateDAO evaluateDAO = new EvaluateDAOImpl();
	private static IOrderDAO orderDAO = new OrderDAOImpl();
	
	public static IAdminDAO getAdminDAO() {
		return adminDAO;
	}

	public static void setAdminDAO(IAdminDAO adminDAO) {
		DAOFactory.adminDAO = adminDAO;
	}

	public static ICartDAO getCartDAO() {
		return cartDAO;
	}

	public static void setCartDAO(ICartDAO cartDAO) {
		DAOFactory.cartDAO = cartDAO;
	}

	public static IUserDAO getUserDAO() {
		return UserDAO;
	}

	public static void setUserDAO(IUserDAO userDAO) {
		UserDAO = userDAO;
	}

	public static IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public static void setGoodsDAO(IGoodsDAO goodsDAO) {
		DAOFactory.goodsDAO = goodsDAO;
	}

	public static void setCollectionDAO(ICollectionDAO collectionDAO) {
		DAOFactory.collectionDAO = collectionDAO;
	}

	public static ICollectionDAO getCollectionDAO() {
		return collectionDAO;
	}

	public static void setEvaluateDAO(IEvaluateDAO evaluateDAO) {
		DAOFactory.evaluateDAO = evaluateDAO;
	}

	public static IEvaluateDAO getEvaluateDAO() {
		return evaluateDAO;
	}

	public static IOrderDAO getOrderDAO() {
		return orderDAO;
	}

	public static void setOrderDAO(IOrderDAO orderDAO) {
		DAOFactory.orderDAO = orderDAO;
	}
	
	
}
