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


    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
      //加载i18n资源文件，request.getLocale()获取访问用户所在的国家地区
      ResourceBundle myResourcesBundle =
      ResourceBundle.getBundle("properties.myproperties",request.getLocale());
  %>
<title><%=myResourcesBundle.getString("oTracking")%></title>
</head>


<body>

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

          <a href="#" class="navbar-brand nav-color">VDream Shopping</a>
        </div>

        <div class="collapse navbar-collapse" id="ex1">
          <ul class="nav navbar-nav">
            <li><a href="" class="nav-color"><%=myResourcesBundle.getString("summary")%></a></li>
            <li><a href="" class="nav-color"><%=myResourcesBundle.getString("briefing")%></a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle nav-color" data-toggle="dropdown"><%=myResourcesBundle.getString("characteristics")%><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="">Chrome</a></li>
                <li><a href="">FireFox</a></li>
                <li><a href="">Safari</a></li>
                <li><a href="">IE</a></li>
              </ul>
            </li>
            <li><a href="" class="nav-color"><%=myResourcesBundle.getString("about")%></a></li>
          </ul>
          <!--搜索部分-->
          <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default"><%=myResourcesBundle.getString("search")%></button>
          </form>          
        </div>
          
      </div>
    </nav>
  </div>
    <!--顶部导航条结束-->
    
    <h2 align="center"><%=myResourcesBundle.getString("oTracking")%></h2>


<div class="table-responsive">
<table class="table table-hover table-bordered" style="margin: 30px;">
  <tr>
    <th>#</th>
    <th><%=myResourcesBundle.getString("product")%></th>
    <th><%=myResourcesBundle.getString("area")%></th>
    <th><%=myResourcesBundle.getString("address")%></th>
    <th><%=myResourcesBundle.getString("otime")%></th>
  </tr>
<%

	ShowOrder s = new ShowOrder();
	
	List<Order> list = s.getOrder();
	
	
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
</body>
</html>