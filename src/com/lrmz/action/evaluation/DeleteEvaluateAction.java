package com.lrmz.action.evaluation;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.evaluation.IEvaluateDAO;;

public class DeleteEvaluateAction {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String execute(){
		IEvaluateDAO dao = DAOFactory.getEvaluateDAO();
		try {
			dao.deleteEvaluate(id);
			System.out.println("删除成功！");
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
	
}
