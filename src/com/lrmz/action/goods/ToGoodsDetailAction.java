package com.lrmz.action.goods;

import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.evaluation.IEvaluateDAO;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.entity.Evaluate;
import com.lrmz.entity.Goods;

public class ToGoodsDetailAction {
	private int gid;
	private String cname;
	private List<Goods> list;
	private List<Goods> goodsList;
	private int id;
	private int uid;
	private Evaluate evaluate;
	private String evaluation;
	private int skin;
	private String star;
	private List<Evaluate> evaluateList;
	private int totalPage;
	//当前页
	private int page=1;
	private int pageSize=8;
	private Goods goods;
	public String execute(){
		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		IEvaluateDAO dao1 = DAOFactory.getEvaluateDAO();
		try {
			goods = dao.findById(gid);
			System.out.println(goods);
			cname = goods.getCateName();
			list = dao.findByCname(cname);
			goodsList = dao.findByCondition(null, null, null, 1, page, pageSize);
			evaluateList = dao1.findAll(gid);
			System.out.println(list);
			
			//总页数
			totalPage = dao1.findTotalPage(gid, uid,evaluation,skin,star,pageSize);
			
		} catch (DAOException e) { 
			e.printStackTrace();
		}
		return "success";
	}
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	
	public List<Goods> getList() {
		return list;
	}
	public void setList(List<Goods> list) {
		this.list = list;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public Evaluate getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(Evaluate evaluate) {
		this.evaluate = evaluate;
	}
	public String getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
	public int getSkin() {
		return skin;
	}
	public void setSkin(int skin) {
		this.skin = skin;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public List<Evaluate> getEvaluateList() {
		return evaluateList;
	}
	public void setEvaluateList(List<Evaluate> evaluateList) {
		this.evaluateList = evaluateList;
	}
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
	
}
