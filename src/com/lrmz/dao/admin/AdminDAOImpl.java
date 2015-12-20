package com.lrmz.dao.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.Admin;
import com.lrmz.util.DBUtil;

public class AdminDAOImpl implements IAdminDAO {
	private static String findByNameSQL = "select * from admin where admin_name=?";
	
	//按用户名查找
	public Admin findByName(String admin_name) throws DAOException, SQLException{
		Connection conn = (Connection) DBUtil.getConnection();

		PreparedStatement pstmt = conn.prepareStatement(findByNameSQL);
		pstmt.setString(1, admin_name);
		ResultSet rs = pstmt.executeQuery();
		Admin admin = null;
		while(rs.next()){
			admin = createAdmin(rs);
		}
		
		DBUtil.colseConnection();
		return admin;
	}
	
	//添加结果集
	private Admin createAdmin(ResultSet rs) throws SQLException {
		Admin a = new Admin();
		a.setAdminID(rs.getInt("id"));
		a.setAdminName(rs.getString("admin_Name"));
		a.setPassword(rs.getString("password"));
		a.setEmail(rs.getString("email"));
		
		return a;
	}
}
