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
<title>Gallery</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Residence Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
							
							<li  class="active"><a href="house/queryAll">房屋列表</a></li>
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



		<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-grids">	
			
			<c:forEach var="house" items="${requestScope.houselist}">
			
				<div class="col-md-3 banner-bottom-grid">
					<img src="images/${house.picture}" alt=" " class="img-responsive" style="width:255px; height:191.25px"/>
					<div class="banner-bottom-grid-info">
						<div class="col-xs-4 banner-bottom-grid-infol">
							<p>${house.id}</p>
						</div>
						<div class="col-xs-8 banner-bottom-grid-infor">
							<h3>${house.name}</h3>
						</div>
						<div class="clearfix"> </div>
						<p class="vel">${house.description}</p>
							<div class="more m1">
								<a href="house/single?id=${house.id}">Learn More</a>
							</div>
					</div>
				</div>
				
				</c:forEach>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
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