package com.lrmz.action.user;

import org.apache.struts2.ServletActionContext;
import com.lrmz.action.BaseAction;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.User;

public class ToUpdateUserAction extends BaseAction {
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

	public String execute() {
		
		user = (User) ServletActionContext.getRequest().getSession().getAttribute("user"); 
		id = user.getUserID();
		return "ok";
	}
}
