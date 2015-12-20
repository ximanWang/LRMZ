package com.lrmz.dao.user;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.User;
import com.lrmz.util.DBUtil;

public  class UserDAOImpl implements IUserDAO {
	//查询全部用户
	public List<User> findAll() throws DAOException{
		List<User> list = new ArrayList<User>();
		String sql = "select * from User";
		Connection conn = (Connection) DBUtil.getConnection();
		PreparedStatement pstat;
		try {
			pstat = conn.prepareStatement(sql);
			ResultSet rs = pstat.executeQuery();
			while(rs.next()){
				User u = createUser(rs);
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new DAOException("查询全部用户失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
		return list;
	}

	private User createUser(ResultSet rs) throws SQLException {
		User u = new User();
		u.setUserID(rs.getInt("id"));
		u.setUserName(rs.getString("user_name"));
		u.setPassword(rs.getString("password"));
		u.setSex(rs.getInt("sex"));
		u.setEmail(rs.getString("email"));
		u.setFace(rs.getString("face"));
		u.setAddress(rs.getString("address"));
		u.setPhone(rs.getString("phone"));
		
		return u;
	}

	//用户查找
	public User findByName(String Cuser) throws DAOException{
		Connection conn = DBUtil.getConnection();
		String sql = "select * from user where user_name=?";
		PreparedStatement pstat;
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, Cuser);
			ResultSet rs = pstat.executeQuery();

			if(rs.next()){
				User user=createUser(rs);
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("按姓名查找用户失败！", e);
		}finally{
			DBUtil.colseConnection();
		}
		return null;
	}
	
	//用户查找
	public User findUserById(int id) throws DAOException{
		Connection conn = DBUtil.getConnection();
		String sql = "select * from user where id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				User user = createUser(rs);
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("按id查找用户失败！", e);
		}finally{
			DBUtil.colseConnection();
		}
		return null;
	}
	
	//用户删除
	public void deleteUserById(int id)throws DAOException{
		Connection conn = DBUtil.getConnection();
		String sql = "delete from user where id = ? ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("删除用户失败！", e);
		}finally{
			DBUtil.colseConnection();
		}
	}
	
	//用户信息更新
	public void updateUser(User user) throws DAOException{
		Connection conn = DBUtil.getConnection();
		String sql = "update User set user_name=?,sex=?,email=?,face=?,address=?,phone=? where id=? ";
		try {
			conn.setAutoCommit(false);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, user.getUserName());
			pstmt.setObject(2, user.getSex());
			pstmt.setObject(3, user.getEmail());
			pstmt.setObject(4, user.getFace());
			pstmt.setObject(5, user.getAddress());
			pstmt.setObject(6, user.getPhone());
			pstmt.setObject(7, user.getUserID());
			pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new DAOException("用户更新回滚失败！",e);
			}
			e.printStackTrace();
			throw new DAOException("用户更新失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
	}
	public static void main(String[] args) throws DAOException {
		UserDAOImpl dao = new UserDAOImpl();
//		User user = dao.findByName("���̶���è");
//		System.out.println(user);
//		List<User> list = dao.findAll();
//		List<User> list = dao.findByPage(1, 3);
//		dao.deleteUserById(1);
//		for(User l : list){
//			System.out.println(user.getUserName()+user.getAddress());
//		}	
		User user = new User();
//		user.setUserID(14);
//		user.setUserName("1");
//		user.setSex(1);
		user.setEmail("1290403847@qq.com");
		user.setPassword("123465");
//		user.setAddress("1");
//		user.setPhone("1");
//		
//		dao.updateUser(user);
		dao.updatePasswd(user);
	}

	//查询分页
	public List<User> findByPage(int page,int pageSize) throws DAOException {
		String sql = "select * from user where id limit ?,?";
		List<User> list = new ArrayList<User>();
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int min = (page-1)*pageSize;
			pstmt.setObject(1, min);
			pstmt.setObject(2, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				User u = createUser(rs);
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("查询分页失败！", e);
		}finally{
			DBUtil.colseConnection();
		}
		return list;
	}

	//按条件查询
	public List<User> findByCondition(String userName, int sex, String address,
			int page, int pageSize) throws DAOException {
		List<Object> params = new ArrayList<Object>();
		List<User> list = new ArrayList<User>();
		StringBuffer sb = bulidFindSql(userName,address,sex,page,pageSize,params);
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sb.toString());
			for(int i=0;i<params.size();i++){
				pstmt.setObject(i+1,params.get(i));
			}
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				User u = createUser(rs);
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("按条件查询失败！", e);
		}finally{
			DBUtil.colseConnection();
		}
		return list;
	}
	private StringBuffer bulidFindSql(String userName,String address, int sex,int page,int pageSize,List<Object> params){
		StringBuffer sb = new StringBuffer();
		sb.append("select * from user where 1=1");
		if(userName != null && userName.length()>0){
			sb.append(" and user_name = ?");
			params.add(userName);
		}
		if(sex != 0){
			sb.append(" and sex = ?");
			params.add(sex);
		}
		if(address != null && address.length()>0){
			sb.append(" and address = ?");
			params.add(address);
		}
		sb.append(" group by id ");
		sb.append(" limit " +(page-1)*pageSize + "," + pageSize );
		return sb;
	}
	
	//添加用户
	public void addUser(User user) throws DAOException {
		String sql = "insert into user(user_name,password) values(?,?)";
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, user.getUserName());
			pstmt.setObject(2, user.getPassword());
			pstmt.executeUpdate();
			conn.commit();
			} catch (SQLException e) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
					throw new DAOException("增加新用户回滚失败！",e);
				}
				e.printStackTrace();
				throw new DAOException("增加用户失败！",e);
			}finally{
				DBUtil.colseConnection();
			}
		
	}

	
	//查询全部页面
	public int findTotalPage(String userName, int sex, String address,
			int pageSize) throws DAOException {
		Connection conn = DBUtil.getConnection();
		StringBuffer sb = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		sb.append("select count(*) from user where 1=1");
		if(userName != null && userName.length()>0){
			sb.append(" and user_name = ?");
			params.add(userName);
		}
		if(sex != 0){
			sb.append(" and sex = ?");
			params.add(sex);
		}
		if(address != null && address.length()>0){
			sb.append(" and address = ?");
			params.add(address);
		}
		try {
			PreparedStatement pstmt = conn.prepareStatement(sb.toString());
			for(int i=0;i<params.size();i++){
				pstmt.setObject(i+1, params.get(i));
			}
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				int rows = rs.getInt(1);
				if( rows % pageSize == 0){
					return rows/pageSize;
				}
				else{
					return rows/pageSize +1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("查询全部页面失败！", e);
		}finally{
			DBUtil.colseConnection();
		}
		return 0;
	}
	
	
	public void updatePasswd(User user) throws DAOException{
		Connection conn = DBUtil.getConnection();
		String sql = "update User set password=? where email=? ";
		try {
			conn.setAutoCommit(false);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, user.getPassword());
			pstmt.setObject(2, user.getEmail());
			pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new DAOException("用户更新回滚失败！",e);
			}
			e.printStackTrace();
			throw new DAOException("用户更新失败！",e);
		}finally{
			DBUtil.colseConnection();
		}
	}
	
}
