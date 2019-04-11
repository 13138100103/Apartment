<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>Home</title>
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
	<div class="banner">
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
						<div class="logo"><a class="navbar-brand" href="index.jsp">住宅 <span>您的最佳选择</span></a></div>					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">主页</a></li>
							<li><a href="about.jsp">关于</a></li>
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
			<div class="banner-info">
				<h1>希望世界因我们的存在而变得更好</H1>
				<p>TO CREAT A BETTER LIFE WITH OUR EXISTENT</p>
				<div class="more m1">
					<a href="single.jsp">了解更多</a>
				</div>
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="gallery">		
		<div class="container">
			<h3>房屋展示</h3>
			<div class="top-gallery">
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/1.jpg" class="swipebox">
						<img src="images/1.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>古典装饰</h4>
							<p>204平的豪华别墅</p>
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/2.jpg" class="swipebox">
						<img src="images/2.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>古典装饰</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div> 
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/3.jpg" class="swipebox">
						<img src="images/3.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>Autem vel</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/4.jpg" class="swipebox">
						<img src="images/4.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>古典装饰</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="top-gallery">
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/5.jpg" class="swipebox">
						<img src="images/5.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>古典装饰</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/6.jpg" class="swipebox">
						<img src="images/6.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>古典装饰</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div> 
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/7.jpg" class="swipebox">
						<img src="images/7.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>Autem vel</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/8.jpg" class="swipebox">
						<img src="images/8.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>Voluptate</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>		
			<div class="top-gallery">
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/2.jpg" class="swipebox">
						<img src="images/2.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>laboriosam</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/4.jpg" class="swipebox">
						<img src="images/4.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>Martial Arts</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div> 
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/5.jpg" class="swipebox">
						<img src="images/5.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>Autem vel</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grid gallery1">
					<a href="images/6.jpg" class="swipebox">
						<img src="images/6.jpg" class="img-responsive" alt="/">
						<div class="textbox">
							<h4>Voluptate</h4>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit.</p>
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<link rel="stylesheet" href="css/swipebox.css">
						<script src="js/jquery.swipebox.min.js"></script> 
							<script type="text/javascript">
								jQuery(function($) {
									$(".swipebox").swipebox();
								});
							</script>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- banner-bottom-video -->
	<div class="banner-bottom-video">
		<div class="container">
			<div class="banner-bottom-video-grids">
				<div class="banner-bottom-video-grid-left">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
						  <h4 class="panel-title"> <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> 价格低</a></h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						  <div class="panel-body">
						   我们的价格特别低
						  </div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
						  <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"> 服务好</a></h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						   <div class="panel-body">
							服务好</div>
						</div>
					  </div>
					  <div class="panel panel-default">
<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
			   <div class="panel-body">
							我们的服务特别好</div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
							  售后好
							</a>
						  </h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
						   <div class="panel-body">
							我们的售后特别好</div>
						</div>
					  </div>
					   <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFive">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
							 房源好
							</a>
						  </h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
						   <div class="panel-body">
							我们的房源特别好</div>
						</div>
					  </div>
					   <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingSix">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
							 装修好
							</a>
						  </h4>
						</div>
						<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
						   <div class="panel-body">
							 我们的装修特别好
							 </div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingSeven">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
							  好好好
							</a>
						  </h4>
						</div>
						<div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
						   <div class="panel-body">
							好好好11111</div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingEight">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
							 好好好
							</a>
						  </h4>
						</div>
						<div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
						   <div class="panel-body">
							好好好2222</div>
						</div>
					  </div>
					</div>
				</div>
                <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
				<div class="banner-bottom-video-grid-right">
				  <h4>提供广泛的服务范围</h4>
				  <div class="banner-bottom-video-grid-rgt">
						<img src="images/2.jpg" alt=" " class="img-responsive" />
						<div class="caption">
							<h3>但在某些情况下</h3>
							<p>我们认为对得起他们，他们是在指责那些谁恨义，不过，说实话，
							和她这些痛苦，现在的乐趣的奉承损坏。</p>
							<div class="more m1">
								<a href="single.jsp">了解更多</a>
							</div>
						</div>
					</div>
					<div class="banner-bottom-video-grid-rgt">
						<ul>
							<li><a href="#">促使他一些非常高兴</a></li>
							<li><a href="#">快乐是所有</a></li>
							<li><a href="#">快乐的我们，和他们的应对舞弊</a></li>
							<li><a href="#">舒缓压力</a></li>
							<li><a href="#">只允许指控</a></li>
							<li><a href="#">他提出了她</a></li>
							<li><a href="#">如果不是你</a></li>
							<li><a href="#">谁又愿意</a></li>
							<li><a href="#">做舔狗呢</a></li>
							<li><a href="#">？</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-bottom-video -->
<!-- banner-slider -->
	<div class="banner-slider">
		<div class="container">
			<div class="banner-slider-grids">
				<div class="col-md-6 banner-slider-grid">
					<h2>他想有没有恼人的后果，或男人谁了痛苦</h2>
				</div>
				<div class="col-md-6 banner-slider-grid">
					<div class="banner-slider-grd">
						<h3>有没有恼人的后果</h3>
						<p>多年来，我会来的，谁将会nostrud aliquip了她锻炼的优势，
						使刺激措施，如果学区和长寿。他想有没有恼人的后果，或一个谁是痛苦。</p>
					</div>
					<div class="banner-slider-grd">
						<h3>当一名合格的舔狗</h3>
						<p>其实并不丢人</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-slider -->
<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<h3>接触</h3>
			<div class="testimonials-grids">
				<ul id="flexiselDemo1">			
					<li>
						<div class="testimonials-grid">
							<div class="col-xs-5 testimonials-grid-left">
								<img src="images/20.jpg" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-7 testimonials-grid-right">
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<p>被选定为这些问题的这一个是一个聪明人的约束，
								因此，有义务事项这一原则。<span>Andrew Williums</span></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="testimonials-grid">
							<div class="col-xs-5 testimonials-grid-left">
								<img src="images/21.jpg" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-7 testimonials-grid-right">
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<p>如果不是喜欢<span>James</span></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="testimonials-grid">
							<div class="col-xs-5 testimonials-grid-left">
								<img src="images/22.jpg" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-7 testimonials-grid-right">
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<p>谁又愿意当舔狗呢<span>Micheal France</span></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
				</ul>
					<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 3,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 2
										}
									}
								});
								
							});
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
<!-- //testimonials -->
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
						<li><a href="gallery.jsp">房屋列表</a></li>
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
