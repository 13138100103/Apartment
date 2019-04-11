<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<title>Single</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Residence Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- banner -->
	<div class="banner1">
		<div class="container">
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<div class="logo"><a class="navbar-brand" href="index.jsp">住宅 <span>您的最佳选择</span></a></div>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">主页</a></li>
							<li><a href="about.jsp">关于</a></li>
							<li class="active"><a href="#">详情</a></li>
							<li><a href="house/queryAll">房屋列表</a></li>
							<li><a href="contact.jsp">联系我们</a></li>
							
							
							
 <c:choose> 
      <c:when test="${sessionScope.user==null }">
       <li><a href="${pageContext.request.contextPath}/login.jsp" style="margin-left:100px;color:white;">登陆</a></li>
       <li><a href="${pageContext.request.contextPath}/register.jsp" style="color:white;">注册</a></li>
      </c:when>
        
      <c:when test="${sessionScope.user!=null }">
      <li><a href="personal.jsp" style="margin-left:100px; color:white;">${sessionScope.user.username}</a></li>
      <li><a href="user/loginout" style="color:white;">退出登录</a>
      </c:when>
      </c:choose>
						</ul>
						<div class="search">
							<form>
								<i class="glyphicon glyphicon-search" aria-hidden="true"></i><input type="text" value="搜索..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '搜索...';}" required>
							</form>
						</div>
					</div><!-- /.navbar-collapse -->	
				</nav>
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- single -->
<c:set var="house" value="${sessionScope.house1}"></c:set>
	<div class="single">
		<div class="container">
			<div class="blog-pag page">
				<div class="blog-page-grids">
					<div class="blog-page-grid">
						<h3>${house1.name}</h3>
						<p>Published on<span> 2019年4月2日</span></p>
					</div>
					<div class="blog-page-grid1">
						<p><a href="#"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span>${fn:length(house1.usermessageSet)}  Comments</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="blog-page-grids-bottom">
					<div class="blog-page-grids-bot">
						<img src="images/banner1.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="blog-page-grids-bot1">
						<p>出售人：${house1.user}</p>
						<br>
						<p>介绍：${house1.description}</p>
						<br>
						<p>单价：${house1.price}/㎡</p>
						<br>
						<p>面积：${house1.area}/㎡</p>
						<br>
						<p>小区位置：${house1.district}</p>
						<br>
						<p>房型：${house1.type}</p>
						<ul>
							<li><a href="#"><i class="glyphicon glyphicon-user" aria-hidden="true"></i>${house1.user}</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-eye-open" aria-hidden="true"></i>Porttitor</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-tags" aria-hidden="true"></i>5 Tags</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>Tincidunt</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="com">
				<h3>评论：</h3>
				<ul class="media-list">
				
				<c:forEach var="message1" items="${house1.usermessageSet}">
				  <li class="media">
					<div class="media-left">
					  <a href="#">
						<img class="media-object img-responsive" src="images/20.png" alt="" />
					  </a>
					</div>
					<div class="media-body">
					  <h4 class="media-heading">${message1.userid.username}</h4>
                        ${message1.details}
					  <a href=" ">${message1.time}</a>
					</div>
				  </li>
				  </c:forEach>
				</ul>
			</div>
			<div class="in dfg">
				<h3>Leave a Comments Here</h3>
				<form action="message/reply" id="usrform">
				
					<textarea placeholder="Meassage" name="details" form="usrform" required=" "></textarea>
					<input type="submit" value="Leave A Comment">
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>
<!-- //single -->
<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-row">
				<div class="col-md-4 footer-grids">
					<h4><a href="index.jsp">首页</a></h4>
					<p><a href="mailto:info@example.com">JAVA@stu.jluzh.edu.cn</a></p>
					<p>+86 13138100103</p>
					<ul class="social-icons">
						<li><a href="#" class="p"></a></li>
						<li><a href="#" class="in"></a></li>
						<li><a href="#" class="v"></a></li>
						<li><a href="#" class="facebook"></a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grids">
					<h3>导航</h3>					
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a href="about.jsp">关于我们</a></li>
						<li><a href="index.jsp">服务</a></li>
						<li><a href="typo.jsp">XX</a></li>
						<li><a href="contact.jsp">联系</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grids">
					<h3>支持</h3>
					<ul>
						<li><a href="house/queryAll">房屋列表</a></li>
						<li><a href="#">帮助中心</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grids">	
					<h3>通讯</h3>
					<p>它推广20世纪60年代与释放自己。<p>
					<form>					 
					    <input type="text" class="text" value="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Email';}">
						<input type="submit" value="Go">					 
				 </form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">		
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates 123  - Collect from 网络工程</p>			
		</div>
	</div>
<!--//footer-->	
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"> </script>
<!-- //for bootstrap working -->
</body>
</html>