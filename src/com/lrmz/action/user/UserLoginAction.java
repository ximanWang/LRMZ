package com.lrmz.action.user;

import java.sql.SQLException;
import com.lrmz.action.BaseAction;
import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.User;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.entity.Goods;
import java.util.List;

public class UserLoginAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// input
	// private User user;
	private String username;
	private String passwd;
	// private String imageCode;//用户输入的验证码
	private String message;

	// output

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	// public String getImageCode() {
	// return imageCode;
	// }
	//
	// public void setImageCode(String imageCode) {
	// this.imageCode = imageCode;
	// }

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String execute() throws SQLException, DAOException {

		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		IUserDAO dao1 = DAOFactory.getUserDAO();
		try {
			// goodsList = dao.findAll();
			// 当前页数据
			// goodsList = dao.findByPage(page, pageSize);
			// goods = (Goods) dao.findByCname(cname);
			goodsList = dao.findByCondition(goodsName, cname, gbrand, isShow,
					page, pageSize);
			// 总页数
			totalPage = dao.findTotalPage(goodsName, cname, gbrand, isShow,
					pageSize);

		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}

		User user = null;
		user = dao1.findByName(username);
		// System.out.println(username);
		// System.out.println(passwd);
		if (null == user) {
			// 没有查到该用户,失败
			setMessage("账号不存在，请重新输入");
			return "fail";
		} else if (!user.getPassword().equals(passwd)) {
			// 查到用户，密码不对，失败
			setMessage("密码不正确，请重新输入");
			return "fail";
		} else {
			// 成功,将用户信息记录到session
			session.put("user", user);
			System.out.println(user);
			setMessage("success");
			return "ok";
		}
	}

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

	// 查询到当前页的数据
	public List<Goods> goodsList;
	private int totalPage;
	// 当前页
	private int page = 1;
	private int pageSize = 6;

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

	// public static void main(String[] args) {
	// FindGoodsAction find = new FindGoodsAction();
	// find.execute();
	// System.out.println(find.goodsList);
	// }

}
