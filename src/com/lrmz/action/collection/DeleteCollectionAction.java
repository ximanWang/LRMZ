package com.lrmz.action.collection;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.collection.ICollectionDAO;
import com.lrmz.entity.User;

public class DeleteCollectionAction {
	private int gid;

	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getGid() {
		return gid;
	}
	
	public String execute(){
		ICollectionDAO dao = DAOFactory.getCollectionDAO();
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user"); 
		int uid = user.getUserID();
		try {
			dao.deleteCollection(gid, uid);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
		
	}
}
