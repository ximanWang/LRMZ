package com.lrmz.action.collection;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import com.lrmz.action.BaseAction;
import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.collection.ICollectionDAO;
import com.lrmz.entity.Collection;
import com.lrmz.entity.User;

public class AddCollectionAction extends BaseAction {
	
	private int gid;
	private boolean pass = false;

	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getGid() {
		return gid;
	}
	
	public String execute(){
		ICollectionDAO dao = DAOFactory.getCollectionDAO();
		try {
			User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user"); 
			System.out.println(user);
			int uid = user.getUserID();
			System.out.println(uid);
			System.out.println(gid);
			List<Collection> list = dao.findGoodsIDByUserID(uid);
			for(int i=0;i<list.size();i++){
				if(list.get(i).getGid() == gid){
					pass = true;
				}
			}
			if(pass == false){
			Collection collection = new Collection();
			collection.setGid(gid);
			collection.setUid(uid);
			System.out.println(collection);
			dao.addCollection(collection);
			}
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
	public boolean isPass() {
		return pass;
	}
	public void setPass(boolean pass) {
		this.pass = pass;
	}
}
