<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<base href="<%=basePath%>">
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>publish发布页面</title>
<!--自己的样式-->
<link rel="stylesheet" type="text/css" href="css/backstage.css">
<link rel="stylesheet" type="text/css" href="css/cart.css">
<!-- Bootstrap -->
<!--fileinput 样式-->
<link rel="stylesheet" type="text/css" href="css/fileinput.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--动画CSS插件-->
<link rel="stylesheet" type="text/css" href="css/animate.min.css">
   <script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/fileinput.js"></script>
<script src="js/zh.js"></script>
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<base href="<%=basePath%>">
<header class="wow fadeInRight"> <img src="images/two.jpg" class="img-circle logo"
		alt="logo" />
  <div class="desc"><a href="index.jsp">interesting住宅</a></div>
</header>
<!-- /.container-fluid -->

<div class="container-fluid">
  <div class="row ">
 <!--data-toggle collapse 折叠  ul class =collapse 初始折叠 -->
     <div class="col-md-2 wow slideInDown" id="left"> <a href="#systemSetting"  data-toggle="collapse"> 
    <i class="glyphicon glyphicon-cog"></i>后台管理 <span class="pull-right glyphicon glyphicon-chevron-down"></span><br/> </a> 
      <!--ul id  和 上面a 标签的id对应 所以能够弹出li -->
      <ul id="systemSetting" class="nav nav-pills nav-stacked collapse in">
        <li><a href="manage/usermanage"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>
        <li><a href="manage/housemanage"><i class="glyphicon glyphicon-globe"></i>房屋管理</a></li>
        <li> <a href="manage/messagemanage"> <i class="glyphicon glyphicon-barcode"></i>留言管理</a> </li>
        <li> <a href="manage/contactmanage"> <i class="glyphicon glyphicon-heart"></i>客户回复</a></li>     
      </ul>
    </br>
     <!--data-toggle collapse 折叠   collapse in 初始不折叠-->
        <div> <a href="#userSetting"  data-toggle="collapse"> 
        <i class="glyphicon glyphicon-fire"></i> 买家中心<span class="pull-right glyphicon glyphicon-chevron-down"></span> </a> 
      <ul class="nav nav-pills nav-stacked collapse in " id="userSetting">
      <li class="active"> <a href="updatehouse.jsp" class="ex0 active"> <i class="glyphicon glyphicon-pencil"></i> 发布新房 </a> </li>
        <li> <a href="personal.jsp"> <i class="glyphicon glyphicon-user"></i> 个人资料</a> </li>
        <li > <a href="personal/message" class="ex0 active"> <i class="glyphicon glyphicon-inbox"></i> 我的留言</a> </li>
           <li> <a href="product.jsp"> <i class="glyphicon glyphicon-gift"></i>我的收藏</a> </li>
      </ul>
    </div>
      </br>
  </div>
  <!--   折叠结束 -->
     
    <div class=" col-md-8 publish wow fadeInUp" id="right"><!-- 将数据appendTo tbody 定义id -->
      <form class="form-horizontal" action="manage/house"
				method="post" enctype="multipart/form-data">
		<div class="form-group">
        <label  class="col-sm-2">出售人:</label>
          <div class="col-sm-3">
            <input type="text" class="form-control" id="title" name="user" value="${sessionScope.user.username}" readonly="readonly">
            <span	class="help-block"></span> </div>
        </div>
        <div class="form-group">
          <label  class="col-sm-2">房屋名称:</label>
          <div class="col-sm-3">
            <input type="text" class="form-control" id="title" name="name" >
            <span	class="help-block"></span> </div>
        </div>
        <div class="form-group">
          <label  class="col-sm-2">房屋单价:</label>
          <div class="col-sm-3">
            <input type="text" class="form-control" id="title" name="price" >
            <span	class="help-block"></span> </div>
        </div>
        <div class="form-group">
          <label  class="col-sm-2">房屋面积:</label>
          <div class="col-sm-3">
            <input type="text" class="form-control" id="title" name="area" >
            <span	class="help-block"></span> </div>
        </div>
          <div class="form-group">
          <label  class="col-sm-2">房屋类型:</label>
          <div class="col-sm-3">
            <input type="text" class="form-control" id="title" name="type" >
            <span	class="help-block"></span> </div>
        </div>
        <div class="form-group">
          <label  class="col-sm-2">房屋详情:</label>
          <div class="col-sm-7">
            <textarea rows="3" cols="70" name="description"></textarea>
            <span	class="help-block"></span> </div>
        </div>
        <div class="form-group">
          <label  class="col-sm-2">位置:</label>
          <div class="col-sm-3">
            <input type="text" class="form-control" id="title" name="district" >
            <span	class="help-block"></span> </div>
        </div>
        
        <div class="form-group">
          <label  class="col-sm-2">商品图片:</label>
          <div class="col-sm-10">
      <input id="file_upload" type="file" class="file" name="uploadFile" />
          </div>
        </div>
        
        <!-- 发布人ID 隐藏-->

        <button type="submit"  class="btn btn-primary  col-sm-2 col-md-offset-2" id="expaddbtn">发布</button>
        
        <button type="reset" class="btn btn-danger col-sm-2 " id="exp_delete_all_btn">重置</button>
         <br/>
        <br/>
      </form>
    </div>
    <!-- 显示表格数据 -->
  </div>
</div>
</div>

<script src="js/wow.min.js"></script>
<script>
$(function(){

new WOW().init();
})
</script>
</body>
</html>
