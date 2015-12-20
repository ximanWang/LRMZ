package com.lrmz.dao.collection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.entity.Collection;
import com.lrmz.entity.Goods;
import com.lrmz.entity.User;
import com.lrmz.util.DBUtil;

public class CollectionDAOImpl implements ICollectionDAO {

	public void addCollection(Collection collection) throws DAOException {
		String sql = "insert into collection(gid,uid) values(?,?)";
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, collection.getGid());
			pstmt.setObject(2, collection.getUid());
			pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new DAOException("收藏失败！",e);
			}finally{
				DBUtil.colseConnection();
			}
	}

	public void deleteCollection(int gid, int uid) throws DAOException {
		Connection conn = DBUtil.getConnection();
		String sql = "delete from collection where gid = ? and uid = ? ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, gid);
			pstmt.setObject(2, uid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("收藏删除失败！", e);
		}finally{
			DBUtil.colseConnection();
		}
	}

public List<Goods> findAllCollection(int uid,int page, int pageSize) throws DAOException {
		
		List<Goods> list = new ArrayList<Goods>();
		String sql = "select * from goods where goods.id = any (select gid from collection where uid =?) limit ?,?";
		Connection conn = (Connection) DBUtil.getConnection();
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			int min = (page-1)* pageSize;
			pstmt.setObject(1, uid);
			pstmt.setObject(2, min);
			pstmt.setObject(3, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
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
				list.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("查询全部收藏失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		return list;
	}

	public List<Collection> findByPage(int uid,int page, int pageSize) throws DAOException {
		String sql = "select * from collection where  uid = ? limit ?,?";
		List<Collection> list = new ArrayList<Collection>();
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int min = (page-1)* pageSize;
			pstmt.setObject(1, uid);
			pstmt.setObject(2, min);
			pstmt.setObject(3, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Collection c = new Collection();
				c.setId(rs.getInt("id"));
				c.setGid(rs.getInt("gid"));
				c.setUid(rs.getInt("uid"));
				list.add(c);
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
	public int findTotalPage(int uid,int pageSize) throws DAOException {	
		Connection conn = DBUtil.getConnection();
		String sql = "select count(*) totalCount from  collection where uid = ? ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, uid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				int rows = rs.getInt("totalCount");
				System.out.println(rows);
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

	public List<Collection> findGoodsIDByUserID(int uid) throws DAOException{
		List<Collection> list = new ArrayList<Collection>();
		Connection conn = DBUtil.getConnection();
		String sql = "select gid from collection where uid = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, uid);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Collection c = new Collection();
				c.setGid(rs.getInt("gid"));
				list.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.colseConnection();
		}
		return list;
	}
	
	public static void main(String[] args) throws DAOException {
		ICollectionDAO dao = DAOFactory.getCollectionDAO();
//		Collection c  = new Collection();
//		c.setGid(25);
//		c.setUid(10);
//		dao.addCollection(c);
//		dao.deleteCollection(25, 10);
//		List<Goods> list = dao.findAllCollection(10);
		List<Collection> list = dao.findGoodsIDByUserID(10);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getGid());
		}
	}
}
