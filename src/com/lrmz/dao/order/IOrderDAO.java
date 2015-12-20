package com.lrmz.dao.order;

import java.util.List;

import com.lrmz.entity.Orders;
import com.lrmz.entity.User;

public interface IOrderDAO {
	public void addOrder(Orders order);
	public List<Orders> getAllOrder(User user);
	public Orders getOrder(User user);
	public Orders findById(int id);
}
