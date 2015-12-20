package com.lrmz.action.evaluation;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.evaluation.IEvaluateDAO;
import com.lrmz.entity.Evaluate;


public class AddEvaluateAction {
	public void setEvaluate(Evaluate evaluate) {
		this.evaluate = evaluate;
	}

	public Evaluate getEvaluate() {
		return evaluate;
	}

	private Evaluate  evaluate;	
	public String execute(){
		IEvaluateDAO dao = DAOFactory.getEvaluateDAO();
		try {
			
			dao.addEvaluate(evaluate);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}

}
