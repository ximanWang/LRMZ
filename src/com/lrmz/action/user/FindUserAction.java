package com.lrmz.action.user;


import java.util.List;


import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.User;

public class FindUserAction {
	private List<User> ulist;

	public List<User> getList() {
		return ulist;
	}

	public void setList(List<User> ulist) {
		this.ulist = ulist;
	}
	
	private String userName;
	private int sex;
	private String address;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	//��ѯ��ǰҳ�����
	private int totalPage;
	private int page = 1;
	private int pageSize;
	
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	

	public String execute() {
		IUserDAO dao = DAOFactory.getUserDAO();
		try {
			ulist = dao.findByPage(page, pageSize);
			ulist = dao.findByCondition(userName, sex, address, page, pageSize);
			totalPage = dao.findTotalPage(userName, sex, address, pageSize);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
	public static void main(String[] args) {
		FindUserAction ac = new FindUserAction();
		try {
			ac.execute();
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(ac.ulist);
	}
}
