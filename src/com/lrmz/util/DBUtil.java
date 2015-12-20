package com.lrmz.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


public class DBUtil {
	
	private static String user;
	private static String password;
	private static String url;
	private static String driverName;
	
	private static ThreadLocal<Connection> t1 = new ThreadLocal<Connection>();
	
	static{
		Properties p = new Properties();
		try {
			p.load(DBUtil.class.getClassLoader().getResourceAsStream("com/lrmz/util/db.properties"));
			user = p.getProperty("user");
			password = p.getProperty("password");
			url = p.getProperty("url");
			driverName = p.getProperty("driver");
			Class.forName(driverName);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("数据库匹配失败！");
		}
		
	}
	
	public static Connection getConnection(){
		Connection conn = t1.get();
		if(conn == null){
			try {
				conn = DriverManager.getConnection(url,user,password);
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("数据库连接失败！");
			}
		}
		return conn;
	}
	
	public static void colseConnection(){
		Connection conn = t1.get();
		if(conn != null){
			try {
				conn.close();
				t1.set(null);
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("数据库关闭失败！");
			}
			
		}
	}
	
	public static void main(String[] args) {
		Connection conn = DBUtil.getConnection();
		System.out.println(conn);
	}
}
