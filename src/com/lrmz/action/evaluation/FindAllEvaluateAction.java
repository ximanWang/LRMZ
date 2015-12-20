package com.lrmz.action.evaluation;

import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.evaluation.IEvaluateDAO;
import com.lrmz.entity.Evaluate;

public class FindAllEvaluateAction {
	private int id;
	private int gid;
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


	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getGid() {
		return gid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getUid() {
		return uid;
	}
	public void setEvaluate(Evaluate evaluate) {
		this.evaluate = evaluate;
	}
	public Evaluate getEvaluate() {
		return evaluate;
	}
	public void setEvaluateList(List<Evaluate> evaluateList) {
		this.evaluateList = evaluateList;
	}
	public List<Evaluate> getEvaluateList() {
		return evaluateList;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPage() {
		return page;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageSize() {
		return pageSize;
	}

	public String execute(){
		IEvaluateDAO dao = DAOFactory.getEvaluateDAO();
		try {
			//			goodsList = dao.findAll();
			//当前页数据
			//			goodsList = dao.findByPage(page, pageSize);
			//			goods = (Goods) dao.findByCname(cname);

			evaluateList = dao.findAll(gid);
			//总页数
	//		totalPage = dao.findTotalPage(gid,uid,evaluation,skin,star,pageSize);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
}
/*public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getGbrand() {
		return gbrand;
	}

	public void setGbrand(String gbrand) {
		this.gbrand = gbrand;
	}
	private int isShow;


	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getIsShow() {
		return isShow;
	}

	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}
	//查询到当前页的数据
	private List<Goods> evaluateList;
	private int totalPage;
	//当前页
	private int page=1;
	private int pageSize=8;

	public List<Goods> getevaluateList() {
		return evaluateList;
	}

	public void setevaluateList(List<Goods> evaluateList) {
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

	public List<Goods> getList() {
		return evaluateList;
	}

	public void setList(List<Goods> evaluateList) {
		this.evaluateList = evaluateList;
	}

	public String execute(){
		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		try {
//			evaluateList = dao.findAll();
			//当前页数据
//			evaluateList = dao.findByPage(page, pageSize);
//			goods = (Goods) dao.findByCname(cname);
			evaluateList = dao.findByCondition(goodsName, cname,gbrand, isShow, page, pageSize);
			//总页数
			totalPage = dao.findTotalPage(goodsName, cname, gbrand, isShow, pageSize);

		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
	public static void main(String[] args) {
		FindAllEvaluateAction find = new FindAllEvaluateAction();
		find.execute();
		System.out.println(find.evaluateList);
	}*/
