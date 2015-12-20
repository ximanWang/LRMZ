package com.lrmz.action.admin;

import java.sql.SQLException;

import com.lrmz.action.BaseAction;
import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.admin.IAdminDAO;
import com.lrmz.entity.Admin;

public class AdminLoginAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//input
	private String adminname;
	private String passwd;
	private String imageCode;//管理员输入的验证码
	private String message;
	
	//output
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getImageCode() {
		return imageCode;
	}
	public void setImageCode(String imageCode) {
		this.imageCode = imageCode;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public String execute() throws SQLException, DAOException{
		String code = (String) session.get("imageCode");
		
		if(code == null || !code.equalsIgnoreCase(imageCode)){
			setMessage("验证码不正确，请重新输入！");
			return "fail"; 
		}
		
		IAdminDAO dao = DAOFactory.getAdminDAO();
		Admin admin = null;
		admin = dao.findByName(adminname);
		
		if(null == admin){
			//没有查到该管理员,失败
			setMessage("账号不存在，请重新输入");
			return "fail";
		}else if(!admin.getPassword().equals(passwd)){
			//查到管理员，密码不对，失败
			setMessage("密码不正确，请重新输入");
			return "fail";
		}else{
			//成功,将用户信息记录到session
			session.put("admin", admin);
			setMessage("success");
			return "ok";
		}
	}
}
