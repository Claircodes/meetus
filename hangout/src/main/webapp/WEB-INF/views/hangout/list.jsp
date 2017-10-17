<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
    
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/list.css">

</body>

    <div class="container">
    <p></p><p></p><br></br><p></p><p></p>
       <div style="background: #fff; background : rgba(0, 0, 0, 0.5);">
	
		<!-- 검색 bar -->
		<body class="container-fluid">
			<div class="row justify-content-center align-self-center">
				<div class="span6" style="float: none; margin: 0 auto;">
					<p></p>
					<div class="text-vertical-center">
						<h1>Search more HANG OUT</h1>
					
					<p></p>
					<input type="text-center" class="form-control"
						placeholder="원하시는 모임의 이름을 검색 해보세요.">
						<p></p>
						 <a href="#" class="btn btn-lg btn-dark">모임 알아보기</a>
					<p></p>
				</div>
				</div>
			</div>
		</body>



		<!-- 모임 리스트 -->
	    <div class="container">
		<div class="row justify-content-center align-self-center">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">
					<li>
						<time datetime="2014-07-20">
							<span class="day">4</span>
							<span class="month">Jul</span>
							<span class="year">2014</span>
							<span class="time">ALL DAY</span>
						</time>
						<img alt="Independence Day" src="https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg" />
						<div class="info">
							<h2 class="title">Independence Day</h2>
							<p class="desc">United States Holiday</p>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>

					<li>
						<time datetime="2014-07-20 0000">
							<span class="day">8</span>
							<span class="month">Jul</span>
							<span class="year">2014</span>
							<span class="time">12:00 AM</span>
						</time>
						<div class="info">
							<h2 class="title">One Piece Unlimited World Red</h2>
							<p class="desc">PS Vita</p>
							<ul>
								<li style="width:50%;"><a href="#website"><span class="fa fa-globe"></span> Website</a></li>
								<li style="width:50%;"><span class="fa fa-money"></span> $39.99</li>
							</ul>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>

					<li>
						<time datetime="2014-07-20 2000">
							<span class="day">20</span>
							<span class="month">Jan</span>
							<span class="year">2014</span>
							<span class="time">8:00 PM</span>
						</time>
						<img alt="My 24th Birthday!" src="https://farm5.staticflickr.com/4150/5045502202_1d867c8a41_q.jpg" />
						<div class="info">
							<h2 class="title">Mouse0270's 24th Birthday!</h2>
							<p class="desc">Bar Hopping in Erie, Pa.</p>
							<ul>
								<li style="width:33%;">1 <span class="glyphicon glyphicon-ok"></span></li>
								<li style="width:34%;">3 <span class="fa fa-question"></span></li>
								<li style="width:33%;">103 <span class="fa fa-envelope"></span></li>
							</ul>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>

					<li>
						<time datetime="2014-07-31 1600">
							<span class="day">31</span>
							<span class="month">Jan</span>
							<span class="year">2014</span>
							<span class="time">4:00 PM</span>
						</time>
						<img alt="Disney Junior Live On Tour!" src="http://www.thechaifetzarena.com/images/main/DL13_PiratePrincess_thumb.jpg" />
						<div class="info">
							<h2 class="title">Disney Junior Live On Tour!</h2>
							<p class="desc"> Pirate and Princess Adventure</p>
							<ul>
								<li style="width:33%;">$49.99 <span class="fa fa-male"></span></li>
								<li style="width:34%;">$29.99 <span class="fa fa-child"></span></li>
							</ul>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

</div>
	</div>

      <!-- Javascript -->
        <script src="resources/assets/js/jquery-1.11.1.min.js"></script>
        <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/jquery.backstretch.min.js"></script>
        <script src="resources/assets/js/retina-1.1.0.min.js"></script>
        <script src="resources/assets/js/scripts-list.js"></script>
        

    </body>
</html>