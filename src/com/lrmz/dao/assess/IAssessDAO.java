package com.lrmz.dao.assess;

import java.util.List;

import com.lrmz.entity.Assess;
import com.lrmz.entity.Goods;

public interface IAssessDAO {
	//添加评论
	public void addAssess(Assess assess);
	//查找评论
	public List<Assess> findAllAssess(Goods goods);
}
