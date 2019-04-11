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
<!DOCTYPE html>
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
        <li class="active"><a href="manage/housemanage"><i class="glyphicon glyphicon-globe"></i>房屋管理</a></li>
        <li> <a href="manage/messagemanage"> <i class="glyphicon glyphicon-barcode"></i>留言管理</a> </li>
        <li> <a href="manage/contactmanage"> <i class="glyphicon glyphicon-heart"></i>客户回复</a></li>       
      </ul>
    </br>
     <!--data-toggle collapse 折叠   collapse in 初始不折叠-->
        <div> <a href="#userSetting"  data-toggle="collapse"> 
        <i class="glyphicon glyphicon-fire"></i> 买家中心<span class="pull-right glyphicon glyphicon-chevron-down"></span> </a> 
      <ul class="nav nav-pills nav-stacked collapse" id="userSetting">
       <li> <a href="updatehouse.jsp" class="ex0 active"> <i class="glyphicon glyphicon-pencil"></i> 发布新房 </a> </li>
        <li> <a href="personal.jsp"> <i class="glyphicon glyphicon-user"></i> 个人资料</a> </li>
        <li> <a href="personal/message" class="ex0 active"> <i class="glyphicon glyphicon-inbox"></i> 我的留言</a> </li>
           <li> <a href="product.jsp"> <i class="glyphicon glyphicon-gift"></i>我的收藏</a> </li>
      </ul>
    </div>
      </br>
  </div>
  <!--   折叠结束 -->
  
  
 <div class=" col-md-8 publish wow fadeInUp" id="right">
     <!---->
     <div class="table_menu_list">
       <table class="table table-striped table-bordered table-hover" id="sample-table" style="width:1400px">
		<thead>
		 <tr>
				<th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80">ID</th>
				<th width="80">图片</th>
				<th width="120">标题</th>
				<th width="80">面积</th>
				<th width="300">描述</th>
				<th width="150">出售人</th>
				<th width="120">小区</th>
				<th width="150">单价</th>
				<th width="150">房型</th>        
				<th width="80">操作</th>
				
			</tr>
		</thead>
	<tbody>               
                       
<c:forEach var="house" items="${requestScope.allhouse}">
		<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>${house.id}</td>
          <td><img src="./images/${house.picture}" width = "400px" height = "300px"></td>
          <td>${house.name}</td>
          <td>${house.area}㎡</td>
          <td width="300">${house.description}</td>
          <td>${house.user}</td>
          <td>${house.district}</td>
          <td>${house.price}元/㎡</td>
          <td>${house.type}</td>
          <td class="td-manage">
          <a title="删除" href="manage/housedelete?id=${house.id}"  class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i>删除</a>
          </td>
		</tr>
</c:forEach>		
		
		
      </tbody>
	</table>
   </div>
 </div>



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
