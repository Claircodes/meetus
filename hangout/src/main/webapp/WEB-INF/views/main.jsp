<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" />

<script src="<c:url value='/resources/js/jquery.backstretch.min.js' />"></script>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

<title>HANG OUT</title>

<!-- Custom Fonts -->
<link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>" type="text/css" rel="stylesheet" />
<!-- Custom CSS/JS -->
<link href="<c:url value='/resources/css/stylish-portfolio.css'/>" rel="stylesheet" />
<script src="<c:url value='/resources/js/stylish-portfolio.js'/>"></script>
<link href="<c:url value='/resources/css/new-style.css'/>" rel="stylesheet" />

</head>

<style>
/* Make the image fully responsive */
.carousel-inner img {
	min-height: 100%;
	min-width: 100%;
	height: auto;
	width: 100%;
	background-position: center center;
	background-repeat: no-repeat;
	max-height: 700px !important;
}
</style>
</head>


<body>
	<!-- Header -->
	<div id="demo" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/images/main-s3.jpg" alt="Los Angeles">
				<div class="carousel-caption">
					<div class="btn-dark ">
						<h1>Hey, Let's Hangout!</h1>
						<h3>가장많은 참가자 모임, Ascis Cool Run</h3>
						<p>매 시즌마다 남산에서 달릴때마다 서울에 더 가까워 지는걸 느껴요 - Hsiu-Kun Chen</p>
					</div>
				</div>

			</div>
			<div class="carousel-item">
				<img src="resources/images/main-s2.jpg" alt="Chicago">
				<div class="carousel-caption">
					<div class="btn-dark ">
						<h1>Hey, Let's Hangout!</h1>
						<h3>청소년 인기순위 1위 모임, SKYBOARD.</h3>
						<p>학교에서 사귈 수 없었던 친구들과 새로운 경험은 잊지 못해요. - Michael Hilton</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/images/main-dog2.jpg" alt="New York">
				<div class="carousel-caption">
					<div class="btn-dark ">
						<h1>Hey, Let's Hangout!</h1>
						<h3>10월의 우수 모임, Pet is my family.</h3>
						<p>사람뿐만 아니라 애완견들도 커뮤니티가 필요해요. Hangout을 통해서 말이죠! - Kimberly
							Noma</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	<!-- Page Content -->
	<section class="py-5">
		<div class="container">
			<!-- Example row of columns -->
			<div class="row">
				<div class="col-sm-4" id="listNum"></div>
				<div class="col-sm-4">
					<h3>
						70<br>참가국 갯수
					</h3>
					<p>아시아, 유럽, 북미, 남미 등 다양한 국가에서 참가하고 있습니다.</p>
				</div>
				<div class="col-sm-4">
					<h3>
						24/7<br> No Break
					</h3>
					<p>시간 제한없이 원하는 시간에 모임의 시간을 설정할 수 있습니다.</p>
				</div>
			</div>
		</div>
		<!-- /container -->
	</section>

	<!-- Services -->
	<section id="services" class="services bg-primary text-white">
		<div class="container">
			<div class="row justify-content-center align-self-center">
				<div class="col-sm-12 text-center">
					<h2>지역별 모임 찾기</h2>
					<p>
				</div>
				<div class="col-sm-2"></div>
				<div class="col-sm-5 text-right">
					<input type="text-center" class="form-control btn"
						placeholder="검색지역을 입력해주세요." id="geocomplete">
				</div>

				<div class="col-sm-4">
					<a class="btn btn-dark" id=searchplace>SEARCH HANGOUT <i
						class="fa fa-search" aria-hidden="true"></i></a>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
	</section>

	<!-- Callout -->
	<aside class="callout">
		<div class="text-vertical-center">
			<h1>HANG OUT</h1>
		</div>
	</aside>



	<!-- Portfolio -->
	<section id="portfolio" class="portfolio">
		<div class="container">
			<div class="row justify-content-center align-self-center">
				<h2>카테고리별 모임 찾기</h2>
				<div class="col-sm-10 mx-auto">

					<div class="row justify-content-center align-self-center">
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=ART"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/art.png'/>" /></a>
								<strong>ART</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2 ">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=BEAUTY"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/beauty.png'/>" /></a>
								<strong>BEAUTY</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=BOOK"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/book.png'/>" /></a>
								<strong>BOOK</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=BUSINESS"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/business.png'/>" /></a>
								<strong id="business">BUSIN.</strong>
								</center>
							</div>
						</div>
					</div>
					<div class="row justify-content-center align-self-center">
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=DANCE"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/dance.png'/>" /></a>
								<strong>DANCE</strong>
								</center>
							</div>
						</div>

						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=EDUCATION"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/education.png'/>" /></a>
								<strong>EDU</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=FOOD"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/food.png'/>" /></a>
								<strong>FOOD</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=GAME"><center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/game.png'/>" /></a>
								<strong>GAME</strong>
								</center>
							</div>
						</div>
					</div>
					<div class="row justify-content-center align-self-center">
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=LANGUAGE">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/language.png'/>" />
								</a> <strong>LANGU.</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=MOVIE">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/movie.png'/>" />
								</a> <strong>MOVIE</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=MUSIC">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/music.png'/>" />
								</a> <strong>MUSIC</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=PET">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/pet.png'/>" />
								</a> <strong>PET</strong>
								</center>
							</div>
						</div>
					</div>
					<div class="row justify-content-center align-self-center">
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=PHOTO">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/photo.png'/>" />
								</a> <strong>PHOTO</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=RELIGION">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/religion.png'/>" />
								</a> <strong>RELIG.</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=SPORT">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/sport.png'/>" />
								</a> <strong>SPORT</strong>
								</center>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="card-img-top img-responsive">
								<a href="${rootPath}/hangout/golist?hangoutCategory=TECHNICAL">
									<center>
										<img width="50%" class="img-portfolio img-fluid"
											src="<c:url value='/resources/images/category/technical.png'/>" />
								</a> <strong>TECH</strong>
								</center>
							</div>
						</div>
					</div>
					<br>
					<!-- /.row (nested) -->
					<center>
						<a href="${rootPath}/hangout/golist?hop=hangoutName"
							class="btn btn-dark">View More HANGOUT</a>
					</center>
				</div>
				<!-- /.col-lg-10 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- Call to Action -->
	<aside class="call-to-action bg-primary text-white">
		<div class="container text-center">
			<h3>마음에 드시는 모임이 없나요? 직접 개설 해보세요!</h3>
			<a href="${rootPath}/hangout/create" class="btn btn-lg btn-light">모임
				만들기</a> <a href="${rootPath}/hangout/golist" class="btn btn-lg btn-dark">모임
				검색하기</a>
		</div>
	</aside>

	<!-- Map 
    <section id="contact" class="map">
      <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
      <br/>
      <small>
        <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
      </small>
    </section>-->


	<!-- Footer Section -->
	<footer>
		<div class="container-fluid">
			<div class="row px-3">
				<div class="col-lg-4 col-md-12">
					<h4 class="heading-footer">ABOUT US</h4>
					<p>HANGOUT 은 모임개설을 위한 페이지 입니다.</p>
					<p>
						<i class="fa fa-phone"></i> <span>Call Us :</span> +02.100.7000
					</p>
					<p>
						<i class="fa fa-envelope"></i> <span>Send Email :</span>
						info@hangout.kr</a>
					</p>
				</div>
				<div class="col-lg-3 col-md-4">
					<h4 class="heading-footer">QUICK LINKS</h4>
					<ul class="footer-ul">
						<li></li>
						<li><a href="${rootPath}/hangout/create"> Create Hangout</a></li>
						<li><a href="${rootPath}/hangout/golist"> All Hangout
								List</a></li>
						<li><a href="${rootPath}/hangout/partimylist"> My Hangout
								List</a></li>
						<li><a href="${rootPath}/user/profile"> My Page</a></li>
						<li><a href="#"> Contact us</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-4">
					<h4 class="heading-footer">WHO MADE THIS?</h4>
					<ul class="footer-ul">
						<li></li>
						<li><a href="#"> 김정규</a></li>
						<li><a href="#"> 박용성</a></li>
						<li><a href="#"> 장지훈</a></li>
						<li><a href="#"> 임혜진</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-4 social-icons">
					<h4 class="heading-footer">FOLLOW</h4>
					<ul class="footer-ul">
						<li><a href="#"><i class=" fa fa-facebook"></i> Facebook</a></li>
						<li><a href="#"><i class=" fa fa-twitter"></i> Twitter</a></li>
						<li><a href="#"><i class=" fa fa-google-plus"></i>
								Google+</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- Copy footer start from here-->
	<div class="copyright">
		<div class="container-fluid">
			<div class="row px-3">
				<div class="col-lg-6 col-md-4">
					<p>www.hangout.kr은 상업성이 아니라 팀 프로젝트 제출을 위하여 만들어진 무수익성 페이지입니다.</p>
				</div>

			</div>
		</div>
	</div>


	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/resources/js/jquery.min.js' />"></script>



	<!-- Custom scripts for this template -->
	<script src="<c:url value='/resources/js/stylish-portfolio.js' />"></script>

</body>
<input type="hidden" id="hangoutName" value="" />
</html>


<script type='text/javascript'>
	function attracta_loadjs(url) {
		(function() {
			var s = document.createElement('script');
			s.type = 'text/javascript';
			s.async = true;
			s.src = url;
			var x = document.getElementsByTagName('script')[0];
			x.parentNode.insertBefore(s, x);
		})();
	}
	function attracta_shouldrun() {
		var v = [ "/admin/", "/adm/", "/wp-admin/", "/administrator/" ];
		for (x in v)
			if (window.location.pathname.indexOf(v[x]) == 0)
				return false;
		return true;
	}
	function attracta_window_width() {
		if (document.body && document.body.offsetWidth)
			return document.body.offsetWidth;
		if (document.compatMode == 'CSS1Compat' && document.documentElement
				&& document.documentElement.offsetWidth)
			return document.documentElement.offsetWidth;
		if (window.innerWidth)
			return window.innerWidth;
		return 0;
	}
	function attracta_window_height() {
		if (document.body && document.body.offsetHeight)
			return document.body.offsetHeight;
		if (document.compatMode == 'CSS1Compat' && document.documentElement
				&& document.documentElement.offsetHeight)
			return document.documentElement.offsetHeight;
		if (window.innerHeight)
			return window.innerHeight;
		return 0;
	}
</script>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-82921805-1' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>

<!-- 구글맵 도시검색 -->

<script>
	var words = " ";

	$(document).ready(
			function() {
				$("#geocomplete").geocomplete().bind("geocode:result",
						function(event, result) {
							words = result.vicinity;
						}).bind("geocode:error", function(event, status) {
				}).bind("geocode:multiple", function(event, results) {
				});
				$("#searchplace").click(function() {
					$("#geocomplete").trigger("geocode");
				});

				$("#searchplace").click(function() {
					// var words = $("#geocomplete").val().replace("대한민국 ", "");
					pageMove("hangout/golist?hangoutArea=" + words);
				})

				var listNum;
				var paramIds = "hangoutName";
				var au = new AjaxUtil("hangout/list", paramIds);
				au.setCallbackSuccess(callbackSql);
				au.send();

			});

	function callbackSql(result) {
		var hangList = result.list;
		listNum = hangList.length;
		var str = "";
		str += "<h3>"
				+ listNum
				+ "<br> HangOut 모임 갯수<a href='#'><i class='fa fa-heart'></i></a></h3>";
		str += "<p>전국의 수많은 모임들이 당신을 기다리고 있습니다.</p>";
		$("#listNum").html(str);
	}
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&libraries=places"></script>
<script src="<c:url value='/resources/js/jquery.geocomplete.js' />"></script>
<script src="<c:url value='/resources/js/logger.js' />"></script>

</body>

</html>