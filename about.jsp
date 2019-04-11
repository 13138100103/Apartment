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
<title>About</title>
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
							<li class="active"><a href="about.jsp">关于</a></li>
							
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
<!-- about -->
	<div class="about">
		<div class="container">
			<h3>关于我们</h3>
			<div class="about-grids">
				<div class="col-md-4 about-grid">
					<img src="images/2.jpg" alt=" " class="img-responsive" />
					<div class="img-bottom">
						<p>accusamus et iusto odio malesuada</p>
					</div>
				</div>
				<div class="col-md-4 about-grid">
					<img src="images/3.jpg" alt=" " class="img-responsive" />
					<div class="img-bottom">
						<p>accusamus et iusto odio malesuada</p>
					</div>
				</div>
				<div class="col-md-4 about-grid">
					<img src="images/4.jpg" alt=" " class="img-responsive" />
					<div class="img-bottom">
						<p>accusamus et iusto odio malesuada</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="about-grids-bottom">
				<div class="col-md-4 about-us">
					<h4>关于网站</h4>
					<p>网站提供价美物廉的新房</p>
				</div>
				<div class="col-md-4 about-us">
					<h4>我们是谁</h4>
					<p>我们是一家拥有100+工作人员的团队</p>
				</div>
				<div class="col-md-4 about-us">
					<h4>为什么我们这样做</h4>
					<p>因为现在的放假太高了</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="about-bottom">
		<div class="container">
			<div class="about-bottom-grids">
				<div class="col-md-7 about-bottom-grid-left">
					<h3>喜欢你</h3>
					<h4>那选择是最重要的是做我们喜欢的，在不与它是不是这样的干扰，每一个愉悦是值得欢迎的</h4>
					<p>了解一下我们的大佬哦</p>
				</div>
				<div class="col-md-5 about-bottom-grid-right">
					<h3>接触</h3>
					<div class="about-bottom-grid-right-grid">
						<div class="about-bottom-grid-right-grdl">
							<img src="images/11.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="about-bottom-grid-right-grdr">
							<p><span>CEO</span>这是我们CEO哦</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="about-bottom-grid-right-grid">
						<div class="about-bottom-grid-right-grdl">
							<img src="images/12.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="about-bottom-grid-right-grdr">
							<p><span>CFO</span>这是我们CFO哦</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="history">
		<div class="container">
			<div class="col-md-6 history-left">	
				<h3>历史</h3>
				<div class="history-left-grid">
					<p><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>21.8.2015</p>
					<h4>历史1。。。</h4>
					<p class="aut">内容</p>
				</div>
				<div class="history-left-grid">
					<p><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>28.8.2015</p>
					<h4>历史2。。。</h4>
					<p class="aut">内容</p>
				</div>
				<div class="history-left-grid">
					<p><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>03.9.2015</p>
					<h4>历史3</h4>
					<p class="aut">内容</p>
				</div>
			</div>
			<div class="col-md-6 history-right">
				<h3>我们提供什么</h3>
				<h4>另一种更大的乐趣，</h4>
				<p>To take a trivial example, which of us ever undertakes laborious physical 
					exercise, except to obtain some advantage from it? But who has any right to 
					find fault with a man who chooses to enjoy a pleasure.</p>
				<ul>
					<li><a href="#">recusandae aut perferendis</a></li>
					<li><a href="#">voluptatibus maiores alias</a></li>
					<li><a href="#">molestiae non recusandae</a></li>
					<li><a href="#">alias consequatur voluptates</a></li>
					<li><a href="#">tenetur a sapiente delectus</a></li>
					<li><a href="#">earum rerum hic tenetur</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- about -->
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