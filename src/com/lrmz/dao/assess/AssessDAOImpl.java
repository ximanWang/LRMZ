package com.lrmz.dao.assess;

import java.util.List;

import com.lrmz.entity.Assess;
import com.lrmz.entity.Goods;
import com.lrmz.util.DBUtil;

public class AssessDAOImpl implements IAssessDAO {

	public void addAssess(Assess assess) {
		DBUtil.getConnection();
		String sql = "insert into assess values () ";
		
	}

	public List<Assess> findAllAssess(Goods goods) {
		
		return null;
	}

}
