<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html >

<link rel="stylesheet" type="text/css" href="/resources/css/stylish-portfolio.css">
<script src="/resources/js/stylish-portfolio.js"></script>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HANG OUT</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="/resources/css/stylish-portfolio.css" rel="stylesheet">

  </head>

  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="${rootPath}/main">HANG OUT</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${rootPath}/signup">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${rootPath}/login">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="header" id="top">
      <div class="text-vertical-center">
        <h1>wanna hang out?</h1>
        <h3>우리 같이 한번 놀아볼까?</h3>
        <br>
        
        <a href="#about" class="btn btn-dark btn-lg js-scroll-trigger">모임 알아보기</a>
      </div>
    </header>

    <!-- About -->
    <section id="about" class="about">
      <div class="container text-center">
        <h2>전국의 325,000개의 모임이 현재 당신을 기다리고 있습니다!</h2>
        <p class="lead">HANG OUT</p>
      </div>
      <!-- /.container -->
    </section>

    <!-- Services -->
    <section id="services" class="services bg-primary text-white">
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 mx-auto">
            <h2>지역별 모임 찾기</h2>
            <hr class="small">
            <div class="row">
          
              <div class="col-md-3 col-sm-6">
       	    <div class="place-seoul">
                 <img class="img-portfolio img-fluid" src="/resources/images/seoul.jpg">  
                  <h4>
                    <strong>서울</strong>
                  </h4>
                  </div>
              </div>
            
            
              <div class="col-md-3 col-sm-6">
                <div class="place-busan">
              <img class="img-portfolio img-fluid" src="/resources/images/busan.jpg">         
                  <h4>
                    <strong>부산</strong>
                  </h4>
                </div>
              </div>
            
            
              <div class="col-md-3 col-sm-6">
          	  <div class="place-daegu">
              <img class="img-portfolio img-fluid" src="/resources/images/daegu.jpg">  
                  <h4>
                    <strong>대구</strong>
                  </h4>
                           </div>
              </div>
            
              <div class="col-md-3 col-sm-6">
                <div class="place-kwangju">
                  <img class="img-portfolio img-fluid" src="/resources/images/kwangju.jpg">  
                  <h4>
                    <strong>광주</strong>
                  </h4>
                    </div>
              </div>
            
            
              <div class="col-md-3 col-sm-6">
                <div class="place-daejeon">
                  <img class="img-portfolio img-fluid" src="/resources/images/daejeon.JPG">  
                  <h4>
                    <strong>대전</strong>
                  </h4>
                     </div>
              </div>
                               
            </div>
             <a href="#" class="btn btn-dark">View More HANGOUT</a>
            <!-- /.row (nested) -->
          </div>
          <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>	HANG OUT</h1>
      </div>
    </aside>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
            <h2>카테고리별 모임 찾기</h2>
            <hr class="small">
            <div class="row">
              <div class="col-md-6">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="/resources/images/pet.png">
                  </a>
                   <h4>
                    <strong>PET</strong>
                  </h4>
                </div>
              </div>
              <div class="col-md-6">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="/resources/images/music.png">
                  </a>
                   <h4>
                    <strong>MUSIC</strong>
                  </h4>
                </div>
              </div>
              <div class="col-md-6">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="/resources/images/language.png">
                  </a>
                   <h4>
                    <strong>LANGUAGE</strong>
                  </h4>
                </div>
              </div>
              <div class="col-md-6">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="/resources/images/drink.png">
                  </a>
                   <h4>
                    <strong>DRINK</strong>
                  </h4>
                </div>
              </div>
              
              <div class="col-md-6">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="/resources/images/book.png">
                  </a>
                   <h4>
                    <strong>BOOK</strong>
                  </h4>
                </div>
              </div>
              
              <div class="col-md-6">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="/resources/images/food.png">
                  </a>
                   <h4>
                    <strong>FOOD</strong>
                  </h4>
                </div>
              </div>
              
            </div>
            <!-- /.row (nested) -->
            <a href="#" class="btn btn-dark">View More HANGOUT</a>
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
        <a href="#" class="btn btn-lg btn-light">모임 만들기</a>
        <a href="#" class="btn btn-lg btn-dark">모임 검색하기</a>
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

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
            <h4>
              <strong>HANG OUT</strong>
              
            </h4>
            <p>Hyung-Je-Building
              <br>826 Gangnam Street</p>
            <ul class="list-unstyled">
              <li>
                <i class="fa fa-phone fa-fw"></i>
                (02) 752-9990</li>
              <li>
                <i class="fa fa-envelope-o fa-fw"></i>
                <a href="mailto:hangout@gmail.com">hangout@gmail.com</a>
              </li>
            </ul>
            <br>
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-commenting-o fa-fw fa-3x"></i>
                </a>
              </li>
            </ul>
            <hr class="small">
            <p class="text-muted">Copyright &copy; Hang Out 2017</p>
          </div>
        </div>
      </div>
      <a id="to-top" href="#top" class="btn btn-dark btn-lg js-scroll-trigger">
        <i class="fa fa-chevron-up fa-fw fa-1x"></i>
      </a>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/popper/popper.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/resources/js/stylish-portfolio.js"></script>

  </body>

</html>

