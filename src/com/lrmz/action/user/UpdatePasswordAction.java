package com.lrmz.action.user;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.User;

public class UpdatePasswordAction {
	private String email;
	private String password;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute(){
		IUserDAO dao = DAOFactory.getUserDAO();
		try {
			User user = new User();
			user.setEmail(email);
			user.setPassword(password);
			dao.updatePasswd(user);
			System.out.println(user);	
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
}
