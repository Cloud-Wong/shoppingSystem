package com.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ShowOrder {
	public  List getOrder(){
		List<Order> list = new ArrayList<Order>();
		Connection conn = DataBaseUtil.getConnection();  
		
		System.out.println("成功加载MySQL驱动程序");  

	try {  
		
	    Statement stmt = conn.createStatement();  

	    String sql = "select * from good_order";  
	   
	    ResultSet rs = stmt.executeQuery(sql);// executeQuery会返回结果的集合，否则返回空值  

	    while(rs.next()){
	      Order order = new Order();
	      order.setId(rs.getInt("good_id"));
	      order.setName(rs.getString("good_name"));
	      order.setCountry(rs.getString("country"));
	      order.setAdress(rs.getString("adress"));
	      order.setReceiver(rs.getString("receiver"));
	      TimeZoneUtil t = new TimeZoneUtil();
	      order.setUtc(
	    		  t.getLocalTimeFromUTC(rs.getString("utc"))
	    		  );
	      
	      list.add(order);
	    }
	  	}catch(Exception e){
	  		 System.out.println("MySQL操作错误");  
	         e.printStackTrace();  
	}
	return list;
		
	}

}
