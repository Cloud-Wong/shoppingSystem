import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.*;

public class dddd {
	public static void main(String[] args) {
		List<Order> list = new ArrayList<Order>();
		  Connection conn = DataBaseUtil.getConnection();
		  String sql = "select * from good_order";
		  Statement stmt=null;
		  try{
		    stmt = conn.createStatement();
		    ResultSet rs = stmt.executeQuery(sql);
		    
		    System.out.println(rs.getRow());
		    rs.close();
//		    while(rs.next()){
//		      Order order = new Order();
//		      order.setId(rs.getInt("good_id"));
//		      order.setName(rs.getString("good_name"));
//		      order.setCountry(rs.getString("country"));
//		      order.setAdress(rs.getString("adress"));
//		      order.setReceiver(rs.getString("receiver"));
//		      order.setUtc(rs.getString(TimeZoneUtil.getLocalTimeFromUTC(rs.getString("utc"))));
//		      
//		      list.add(order);
//		    }
		  	}catch(Exception e){
		  		e.printStackTrace();
		}
		  

	}
	 
}
