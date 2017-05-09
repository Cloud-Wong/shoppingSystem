package com.model;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;  


public class DataBaseUtil {
	/*
	 * 获取数据库连接
	 * return Connection对象
	 */
	public static Connection getConnection(){
		Connection conn = null;
		try{
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			//连接数据库URL
			String url = "jdbc:mysql://localhost:3306/test?"  
					  
	                + "user=root&password=123456&useUnicode=true&characterEncoding=UTF8";
			//获取数据库连接
			conn = DriverManager.getConnection(url); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	/*
	 * 关闭数据库连接
	 * @param conn Connection 对象
	 */
	public static void closeConnection(Connection conn){
		//判断conn是否为空
		if(conn!=null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}
