<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page import = "com.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VDream Shopping</title>
</head>
<body>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VDream Shopping</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

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
    </style>
    
    <%
      //加载i18n资源文件，request.getLocale()获取访问用户所在的国家地区
     ResourceBundle myResourcesBundle =
     ResourceBundle.getBundle("properties.myproperties",request.getLocale());
  %>

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

        <div class="collapse navbar-collapse " id="ex1">
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
    <!--大幕-->
<div class="jumbotron" style=" background: url(http://www.semicodeos.com/wp-content/uploads/2016/11/slide1.jpg);   background-color: rgb(238,90,76); padding-top: 20px;">
  <div class="container">
  <center style="margin-top: 50px;">
    <h1 style="color:#fff;">VDream跨时区购物平台</h1>
    <p class="subtitle">时间不再错乱，订单不玩穿越<br>VDream团队打造全球跨时区购物</p>
    <a class="btn btn-default btn-lg"  href="#" role="button">下载客户端</a>
    <p class="version">当前版本： v3.3.7 | 文档更新于：2017-05-01</p>
   </center>
  </div>
</div><!--大幕结束-->




<div class="container">
  <div class="col-md-6">
<div class="row">
  <div class="col-md-6">
    <div class="thumbnail">
      <img src="img/111.jpg" alt="...">
      <div class="caption">
      <center>
        <h3>笔记本电脑</h3>
        <h4>988$</h4>
        <p><a href="#" class="btn btn-primary" role="button">
        <%=myResourcesBundle.getString("purchase")%></a>
         <a href="#" class="btn btn-default" role="button">
         <%=myResourcesBundle.getString("details")%></a></p>
      </center>
      </div>
    </div>
  </div>

   <div class="col-md-6">
    <div class="thumbnail">
      <img src="img/222.jpg" alt="...">
      <div class="caption">
      <center>
        <h3>耳机</h3>
        <h4>128$</h4>
        <p><a href="#" class="btn btn-primary" role="button">
        <%=myResourcesBundle.getString("purchase")%></a>
         <a href="#" class="btn btn-default" role="button">
         <%=myResourcesBundle.getString("details")%></a></p>
      </center>
      </div>
    </div>
  </div>
</div>
  </div>

<div class="col-md-6">
  <form class="form-horizontal" method="post" action="addServlet" onSubmit="return index(this)">
  <div class="form-group">
    <label  class="col-sm-2 control-label"><%=myResourcesBundle.getString("product")%></label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="name" placeholder=<%=myResourcesBundle.getString("product")%>>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><%=myResourcesBundle.getString("address")%></label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="adress" placeholder=<%=myResourcesBundle.getString("address")%>>
    </div>
  </div>
    <div class="form-group">
    <label  class="col-sm-2 control-label"><%=myResourcesBundle.getString("country")%></label>
    <div class="col-sm-8">
      <select class="form-control" name="country">
        <option value="无"><%=myResourcesBundle.getString("selectCountry")%></option>
        <option value=<%=myResourcesBundle.getString("America")%>><%=myResourcesBundle.getString("America")%></option>
        <option value=<%=myResourcesBundle.getString("Beijing")%>><%=myResourcesBundle.getString("Beijing")%></option>
        <option value=<%=myResourcesBundle.getString("eng")%>><%=myResourcesBundle.getString("eng")%></option>
        <option value=<%=myResourcesBundle.getString("Australia")%>><%=myResourcesBundle.getString("Australia")%></option>
      </select>
    </div>
  </div>
    <div class="form-group">
    <label  class="col-sm-2 control-label"><%=myResourcesBundle.getString("Receiver")%></label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="receiver" placeholder=<%=myResourcesBundle.getString("Receiver")%>>
    </div>
  </div>


  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info"><%=myResourcesBundle.getString("SubmitOrder")%></button>
    </div>
  </div>
</form>
  </div>
</div>
<hr>

<footer>
  <p>&copy; 2017 Company, VDream.</p>
</footer>

</body>
</html>