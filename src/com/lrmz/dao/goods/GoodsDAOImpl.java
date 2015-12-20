package com.lrmz.dao.goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.Goods;
import com.lrmz.util.DBUtil;


public class GoodsDAOImpl implements IGoodsDAO{
/*
 * 添加商品
 * (non-Javadoc)
 * @see com.lrmz.dao.goods.IGoodsDAO#add(com.lrmz.entity.Goods)
 */
	public void add(Goods goods) throws DAOException {
		String sql = "insert into goods(gname,gnum,mprice,lprice,gimg," +
				"gdesc,pubtime,ishow,gbrand,cname) values(?,?,?,?,?,?,now(),1,?,?)";
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, goods.getGoodsName());
			pstmt.setObject(2, goods.getGoodsNum());
			pstmt.setObject(3, goods.getMarketPrice());
			pstmt.setObject(4, goods.getPrice());
			pstmt.setObject(5, goods.getImage());
			pstmt.setObject(6, goods.getDescription());
			pstmt.setObject(7, goods.getGbrand());
			pstmt.setObject(8, goods.getCateName());
			pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new DAOException("增加新商品回滚失败！",e);
			}
			e.printStackTrace();
			throw new DAOException("增加商品失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
	}
/*
 * 删除商品
 * (non-Javadoc)
 * @see com.lrmz.dao.goods.IGoodsDAO#deleteGoods(int)
 */
	public void deleteGoods(int id) throws DAOException {
		String sql = "delete from goods where id=?";
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new DAOException("删除商品数据回滚失败！",e);
			}
			e.printStackTrace();
			throw new DAOException("删除商品失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
	}
/*
 * 查询总商品
 * (non-Javadoc)
 * @see com.lrmz.dao.goods.IGoodsDAO#findAll()
 */
	public List<Goods> findAll() throws DAOException {
		List<Goods> list = new ArrayList<Goods>();
		Connection conn = DBUtil.getConnection();
		String sql = "select * from goods";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Goods g = createGoods(rs);
				list.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("查询总商品失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		return list;
	}
/*
 * 获取商品
 */
	private Goods createGoods(ResultSet rs) throws SQLException {
		Goods g = new Goods();
		g.setGoodsID(rs.getInt("id"));
		g.setGoodsName(rs.getString("gname"));
		g.setGoodsNum(rs.getInt("gnum"));
		g.setMarketPrice(rs.getDouble("mprice"));
		g.setPrice(rs.getDouble("lprice"));
		g.setImage(rs.getString("gimg"));
		g.setDescription(rs.getString("gdesc"));
		g.setPubTime(rs.getDate("pubtime"));
		g.setGbrand(rs.getString("gbrand"));
		g.setShow(rs.getInt("ishow"));
		g.setCateName(rs.getString("cname"));
		return g;
	}
/*
 * 根据名称查询
 * (non-Javadoc)
 * @see com.lrmz.dao.goods.IGoodsDAO#findByCname(java.lang.String)
 */
	public List<Goods> findByCname(String cname) throws DAOException {
		Connection conn = DBUtil.getConnection();
		List<Goods> list = new ArrayList<Goods>();
		String sql = "select * from goods where cname = ?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cname);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Goods g = createGoods(rs);
				list.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("按分类查询总商品失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		return  list;
	}
/*
 * 更新商品
 * (non-Javadoc)
 * @see com.lrmz.dao.goods.IGoodsDAO#update(com.lrmz.entity.Goods)
 */
	public void update(Goods goods) throws DAOException {
		if(goods == null){
			return;
		}
		String sql = "update goods set gname=?, gnum=?, mprice=?, " +
				"lprice=?, gdesc=?, gbrand=?, cname=?, ishow=? where id=?";
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, goods.getGoodsName());
			pstmt.setObject(2, goods.getGoodsNum());
			pstmt.setObject(3, goods.getMarketPrice());
			pstmt.setObject(4, goods.getPrice());
			pstmt.setObject(5, goods.getDescription());
			pstmt.setObject(6, goods.getGbrand());
			pstmt.setObject(7, goods.getCateName());
			pstmt.setObject(8, goods.getIsShow());
			pstmt.setObject(9, goods.getGoodsID());
			pstmt.executeUpdate();
			conn.commit();
			System.out.println(sql);
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new DAOException("更新商品回滚失败！",e);
			}
			e.printStackTrace();
			throw new DAOException("更新商品失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		
	}
	public static void main(String[] args) throws Exception {
		IGoodsDAO dao = new GoodsDAOImpl();
//		List<Goods> list = dao.findAll();
//		List<Goods> list = dao.findByCname("洗发");
//		Goods goods = new Goods();
//		goods= dao.findById(4);
//		goods.setIsShow(1);
//		goods.setGoodsNum(100);
//		goods.setMarketPrice(80.5);
//		goods.setPrice(60.9);
//		goods.setImage("../images/0.jpg");
//		goods.setGbrand("宫品");
//		goods.setDescription("去屑清爽");
//		goods.setCateName("洗发");
//		dao.add(goods);
//		dao.update(goods);
//		goods = dao.findById(1);
//		List<Goods> list = dao.findByPage(2, 5);
//		List<Goods> list = dao.findByCondition(null, null, null,1, 1, 5);
//		System.out.println(goods.getCateName()+" "+goods.getGoodsName());
		List<Goods> list =  dao.findByCondition(null, null, "海飞丝", 0, 1, 5);
		for(Goods l : list){
			System.out.println(l.getGoodsID()+" "+l.getGoodsName()+ l.getGoodsNum()+l.getCateName());
		}
//		System.out.println(goods.getGoodsName()+" "+goods.getIsShow());
//		int t = dao.findTotalPage(1);
//		System.out.println(t);
	}
/*
 * 根据商品编号查询
 * (non-Javadoc)
 * @see com.lrmz.dao.goods.IGoodsDAO#findById(int)
 */
	public Goods findById(int id) throws DAOException {
		String sql = "select * from goods where id=?";
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs  = pstmt.executeQuery();
			if(rs.next()){
				Goods goods = createGoods(rs);
				return goods;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("根据id查询失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		return null;
	}
/*
 * 分页查询
 * (non-Javadoc)
 * @see com.lrmz.dao.goods.IGoodsDAO#findByPage(int, int)
 */
	public List<Goods> findByPage(int page, int pageSize) throws DAOException {
		String sql = "select * from goods where id limit ?,?";
		List<Goods> list = new ArrayList<Goods>();
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int min = (page-1)* pageSize;
			pstmt.setObject(1, min);
			pstmt.setObject(2, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Goods g = createGoods(rs);
				list.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("分页查询失败",e);
		}finally{
			DBUtil.colseConnection();
		}
		
		return list;
	}
	
	//查询总页数
	public int findTotalPage(
			String goodsName,
			String cname,
			String gbrand,
			int isShow,
			int pageSize) throws DAOException {
		StringBuffer sb = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		sb.append("select count(*) from goods where 1=1");
		if(goodsName!=null && goodsName.length()>0){
			sb.append(" and gname=?");
			params.add(goodsName);
		}
		if(cname!=null && cname.length()>0){
			sb.append(" and cname=?");
			params.add(cname);
		}
		if(gbrand!=null && gbrand.length()>0){
			sb.append(" and gbrand=?");
			params.add(gbrand);
		}
		if(isShow != 0){
			sb.append(" and ishow=?");
			params.add(isShow);
		}
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sb.toString());
			for(int i=0; i<params.size(); i++){
				pstmt.setObject(i+1, params.get(i));
			}
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				int rows = rs.getInt(1);
				if(rows % pageSize == 0){
					return rows/pageSize;
				}else{
					return rows/pageSize + 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("查询总页数失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		return 0;
	}
	/**
	 * 按照条件查找商品
	 */
	public List<Goods> findByCondition(
			String goodsName,
			String cname,
			String gbrand,
			int isShow,
			int page,
			int pageSize) throws DAOException {
		List<Object> params = new ArrayList<Object>();
		List<Goods> goods = new ArrayList<Goods>();
		StringBuffer sb = 
			buildFindSql(goodsName, cname,gbrand, isShow, page, pageSize, params);
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sb.toString());
			for(int i=0; i<params.size(); i++){
				pstmt.setObject(i+1, params.get(i));
			}
//			System.out.println(sb.toString());
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Goods g = createGoods(rs);
				goods.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("按照条件查找失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		
		return goods;
				
	}
	private StringBuffer buildFindSql(
			String goodsName,
			String cname,
			String gbrand,
			int isShow,
			int page,
			int pageSize,
			List<Object> params){
		StringBuffer sb = new StringBuffer();
		sb.append("select * from goods where 1=1");
		if(goodsName!=null && goodsName.length()>0){
			sb.append(" and gname=?");
			params.add(goodsName);
		}
		if(cname!=null && cname.length()>0){
			sb.append(" and cname=?");
			params.add(cname);
		}
		if(gbrand!=null && gbrand.length()>0){
			sb.append(" and gbrand=?");
			params.add(gbrand);
		}
		if(isShow != 0){
			sb.append(" and ishow=?");
			params.add(isShow);
		}
		sb.append(" group by id desc");
		sb.append(" limit "+(page-1)* pageSize+","+pageSize);
//		params.add((page-1)* pageSize);
//		params.add(pageSize);
		System.out.println(sb.toString());
		return sb;
		
	}

}
