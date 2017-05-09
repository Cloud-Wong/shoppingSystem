package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class GoodsDao {
	public void saveOrder(Order order){
			//获取数据库连接对象
			Connection conn = DataBaseUtil.getConnection();
		//插入订单的sql语句
		String sql = "insert into good_order(good_name,country,adress,receiver,utc)values(?,?,?,?,?)";
		try{
			//获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			//对sql语句对占位符进行动态赋值
			ps.setString(1, order.getName());
			ps.setString(2, order.getCountry());
			ps.setString(3, order.getAdress());
			ps.setString(4, order.getReceiver());
			//此处省略时间换算 待添加{}
			ps.setString(5, order.getUtc());
			//执行更新操作
			ps.executeUpdate();
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			//关闭数据库连接
			DataBaseUtil.closeConnection(conn);
		}
		
	}

}
