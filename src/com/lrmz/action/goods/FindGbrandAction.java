package com.lrmz.action.goods;

import java.util.List;

import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.entity.Goods;

public class FindGbrandAction {
	private String goodsName;
	private String cname;
	private String gbrand;
	private Goods goods;
	public Goods getGoods() {
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
	public List<Goods> goodsList;
	private int totalPage;
	//当前页
	private int page=1;
	private int pageSize=8;

	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
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
		return goodsList;
	}

	public void setList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public String execute(){
		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		try {
			gbrand =new String(gbrand.getBytes("iso-8859-1"),"UTF-8");
			System.out.println(gbrand);
			goodsList = dao.findByCondition(goodsName,cname,gbrand,isShow, page,pageSize);
			//总页数
			totalPage = dao.findTotalPage(goodsName,cname,gbrand,isShow,pageSize);
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
	public static void main(String[] args) {
		FindGbrandAction find = new FindGbrandAction();
		find.execute();
		System.out.println(find.goodsList);
	}
}

