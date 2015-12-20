package com.lrmz.action.user;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;

public class DeleteUserAction {
	private int id;

	public void setId(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}
	
	public String execute() {
		IUserDAO dao = DAOFactory.getUserDAO();
		try {
			dao.deleteUserById(id);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
		
	}
}
