package com.lrmz.action.user;


import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.User;

public class FindUserByIdAction {
	private User user;
	private int id;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String execute(){
		IUserDAO dao = DAOFactory.getUserDAO();
		try {
//			System.out.println(id);
			user = dao.findUserById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
	
//	public static void main(String[] args)throws Exception {
//		IUserDAO dao = DAOFactory.getUdao();
//		System.out.println(dao.findByName("���̶���è").getUserName());
//	}
}

