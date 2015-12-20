package com.lrmz.action.collection;

import java.util.List;
import org.apache.struts2.ServletActionContext;
import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.collection.ICollectionDAO;
import com.lrmz.entity.Goods;
import com.lrmz.entity.User;

public class FindAllCollectionAction {
	private List<Goods> glist;
	private int totalPage;
	private int page = 1;
	private int pageSize;
	
	public String execute(){
		ICollectionDAO dao = DAOFactory.getCollectionDAO();
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user"); 
		int uid = user.getUserID();
		System.out.println(uid);
		try {
			glist = dao.findAllCollection(uid, page, pageSize);
//			glist = dao.findAllCollection(uid);
			System.out.println(glist);
//			clist = dao.findByPage(page, pageSize);
			totalPage = dao.findTotalPage(uid,pageSize) ;
			System.out.println(pageSize);
			System.out.println(totalPage);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
		
	}
	public void setGlist(List<Goods> glist) {
		this.glist = glist;
	}
	public List<Goods> getGlist() {
		return glist;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageSize() {
		return pageSize;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	
}
