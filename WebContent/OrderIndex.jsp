<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.model.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- <meta name="viewport" content="width=device-width, initial-scale=1">-->
  <title>VDream Showing</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单查询</title>
  <style type="text/css">

      p.version {
        padding-top: 20px;
        font-size: 12px;
        color: #fff;
        opacity: 0.5;
      }

      hr {
        margin-right: 80px;
        margin-left: 80px
      }

      footer {
        margin-left: 80px;
      }

      .subtitle {
        color:#fff;
        margin-top: 30px;
      }

      a.nav-color {
        color: #000;
      }
      .table-sty {

      }
    </style>
</head>


<body>
<%
  List<Order> list = new ArrayList<Order>();
Connection conn = null;  

String sql;  

// MySQL的JDBC URL编写方式：jdbc:mysql://主机名称：连接端口/数据库的名称?参数=值  

// 避免中文乱码要指定useUnicode和characterEncoding  

String url = "jdbc:mysql://localhost:3306/test?"  

        + "user=root&password=123456&useUnicode=true&characterEncoding=UTF8";  

try {  

    Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动   

    System.out.println("成功加载MySQL驱动程序");  

    // 一个Connection代表一个数据库连接  

    conn = DriverManager.getConnection(url);  

    // Statement里面带有很多方法，比如executeUpdate可以实现插入，更新和删除等  

    Statement stmt = conn.createStatement();  

    sql = "select * from good_order";  
   
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
%>

 <!--顶部导航条部分-->
   <div class="navbar-jumbotron navbar-inverse">  
    <nav class="nav nav-default ">
      <div class="container">
        <!--导航条首部-->
        <div class="navbar-header">
          <!--响应式折叠部分-->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#ex1">
           <span class="sr-only">Toggle navigation</span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
          </button>

          <a href="#" class="navbar-brand nav-color">VDream Showing</a>
        </div>

        <div class="collapse navbar-collapse" id="ex1">
          <ul class="nav navbar-nav">
            <li><a href="" class="nav-color">综述</a></li>
            <li><a href="" class="nav-color">简述</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle nav-color" data-toggle="dropdown">特点<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="">Chrome</a></li>
                <li><a href="">FireFox</a></li>
                <li><a href="">Safari</a></li>
                <li><a href="">IE</a></li>
              </ul>
            </li>
            <li><a href="" class="nav-color">关于</a></li>
          </ul>
          <!--搜索部分-->
          <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
          </form>          
        </div>
          
      </div>
    </nav>
  </div>

  <div align="center">
    <h2>订单查询结果</h2>
  </div> 
<div class="table-responsive">
<table class="table table-hover table-bordered" style="margin: 30px;">
  <tr>
    <th>#</th>
    <th>商品名</th>
    <th>下单地区</th>
    <th>收货地址</th>
    <th>订单时间</th>
  </tr>
<%
	for(int i=0;i<list.size();i++){

	    out.println("<tr>");
	      out.println("<td>");
	      out.println(list.get(i).getId());
	      out.println("</td>");
	      
	      out.println("<td>");
	      out.println(list.get(i).getName());
	      out.println("</td>");
	      
	      out.println("<td>");
	      out.println(list.get(i).getCountry());
	      out.println("</td>");
	      
	      out.println("<td>");
	      out.println(list.get(i).getAdress());
	      out.println("</td>");
	      
	      out.println("<td>");
	      out.println(list.get(i).getUtc());
	      out.println("</td>");
	    out.println("</tr>");
	}
%>
</table>
<hr>
<footer>
  <p>&copy; 2017 Company, VDream.</p>
</footer>

</body>
</html>