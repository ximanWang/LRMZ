package com.lrmz.dao.evaluation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.Evaluate;
import com.lrmz.entity.Goods;
import com.lrmz.util.DBUtil;


public  class EvaluateDAOImpl implements IEvaluateDAO{

	
	public List<Evaluate> findAll(int gid) throws DAOException {
		List<Evaluate> list = new ArrayList<Evaluate>();
		Connection conn = DBUtil.getConnection();
		String sql = "select * from Evaluate where gid=?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gid);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Evaluate g = createEvaluate(rs);
				list.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("查找失败",e);
		}finally{
			DBUtil.colseConnection();
		}
		return list;
	}

	private Evaluate createEvaluate(ResultSet rs) throws SQLException {
	// TODO Auto-generated method stub
		Evaluate g = new Evaluate();
		g.setGoodsID(rs.getInt("gid"));
		g.setUserID(rs.getInt("uid"));
		g.setEvalution(rs.getString("evaluation"));
		g.setSkin(rs.getInt("skin"));
		g.setStar(rs.getString("star"));
	
		return g;
}
	public void addEvaluate(Evaluate evaluate) throws DAOException {
		// TODO Auto-generated method stub
		String sql = "insert into Evaluate(gid,uid,evaluation,skin,star) values(?,?,?,?,?)";
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, evaluate.getGoodsID());
			pstmt.setObject(2, evaluate.getUserID());
			pstmt.setObject(3, evaluate.getEvalution());
			pstmt.setObject(4, evaluate.getSkin());	
			pstmt.setObject(5, evaluate.getStar());		
			pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new DAOException("回滚失败",e);
			}
			e.printStackTrace();
			throw new DAOException("添加失败",e);
		}finally{
			DBUtil.colseConnection();
		}
	}
	public void deleteEvaluate(Evaluate enaluate) throws DAOException {
		// TODO Auto-generated method stub
		String sql = "delete from Evaluate where gid=? and uid=?";
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			
			//pstmt.setObject(parameterIndex, x, targetSqlType)
			pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new DAOException("回滚失败",e);
			}
			e.printStackTrace();
			throw new DAOException("删除失败",e);
		}finally{
			DBUtil.colseConnection();
		}
	}

	public void deleteEvaluate(int id) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	

	public List<Goods> findByPage(int page, int pageSize) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	public int findTotalPage(int gid, int uid, String evalution, String star,
			int pageSize) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}

	public int findTotalPage(int gid, int uid, String evalution, String star,
			int skin, int pageSize) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}

	public int findTotalPage(int gid, int uid, String evalution, int skin,
			String star, int pageSize) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
