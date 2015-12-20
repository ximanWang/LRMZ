package com.lrmz.action.user;

import com.lrmz.action.BaseAction;
import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.User;

public class UserRegistAction extends BaseAction {
	private User user;
	private String imageCode;//用户输入的验证码
//	private String repasswd;
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	public String getImageCode() {
		return imageCode;
	}
	public void setImageCode(String imageCode) {
		this.imageCode = imageCode;
	}
	
	@Override
	public String toString() {
		return "UserRegistAction [user=" + user + ", imageCode=" + imageCode
				+ "]";
	}

	public String execute(){
		String code = (String) session.get("imageCode");
		
		if(code == null || !code.equalsIgnoreCase(imageCode)){
		//setMessage("验证码不正确，请重新输入！");
			System.out.println("不正确");
			return "fail"; 
		}
		
		IUserDAO dao = DAOFactory.getUserDAO();
		try {
			dao.addUser(user);
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "input";
		}
		return "success";
	}
}
