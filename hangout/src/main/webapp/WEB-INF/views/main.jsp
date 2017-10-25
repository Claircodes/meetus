<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html>

<html > 

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css"'/>" rel="stylesheet"/>
<script src="<c:url value='/resources/js/jquery-1.12.1.min.js' />"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/js/jquery.backstretch.min.js' />"></script>
<!--  <script src="<c:url value='/resources/js/scripts.js' />"></script>
        --> 

    <title>HANG OUT</title>

    <!-- Custom Fonts -->
<link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css"'/>" type="text/css" rel="stylesheet"/>

    <!-- Custom CSS -->
<link href="<c:url value='/resources/css/stylish-portfolio.css"'/>" rel="stylesheet"/>
<script src="<c:url value='/resources/js/stylish-portfolio.js' />"></script>
<link href="<c:url value='/resources/css/new-style.css"'/>" rel="stylesheet"/>
  </head>

  <body>

  
  
<!-- Header -->
    <header class="header" id="top">
      <div class="text-vertical-center">
        <div class="btn btn-dark btn-lg js-scroll-trigger">
        <h1>Hey, Let's Hangout!</h1>
        <h3>10월의 우수 모임, Pet is my family.</h3>
        <p> 사람뿐만 아니라 애완견들도 커뮤니티가 필요해요. Hangout을 통해서 말이죠! - Kimberly Noma</p>
        </div>
        <br>
      </div>
    </header>


  <!-- Page Content -->
    <section class="py-5">
    <div class="container">
                <!-- Example row of columns -->
                <div class="row">
					<div class="col-sm-4">
						<h3>32,500<br> HangOut 모임 갯수</h3>
						<p>전국의 수많은 모임들이 당신을 기다리고 있습니다.</p>
						</a>
					</div>
					
					<div class="col-sm-4">
						<h3>70<br>참가국 갯수</h3>
						<p>아시아, 유럽, 북미, 남미 등 다양한 국가에서 참가하고 있습니다.</p>
						</a>
					
					</div>
					
					<div class="col-sm-4">
						<h3>24/7<br> No Break</h3>
						<p>시간 제한없이 원하는 시간에 모임의 시간을 설정할 수 있습니다.</p>
						</a>
					</div>

                </div>
            </div> <!-- /container --> 
    </section>

    <!-- Services -->
    <section id="services" class="services bg-primary text-white">
      <div class="container">
        <div class="row justify-content-center align-self-center">
        <div class="col-sm-12 text-center">
         <h2>지역별 모임 찾기</h2><p></div>
         <div class="col-sm-2"></div>
          <div class="col-sm-5 text-right">
          	 	 <input type="text-center" class="form-control btn"   
                  placeholder="원하시는 모임의 이름을 검색 해보세요." id="hangoutName">
           </div>
         <div class="col-sm-4">      
             <a href="<c:url value='/list'/>" class="btn btn-dark">SEARCH HANGOUT</a></div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
      </div>
    </section>

    <!-- Callout -->
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>   HANG OUT</h1>
      </div>
    </aside>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
      <div class="container">
        <div class="row justify-content-center align-self-center">
          <div class="col-lg-10 mx-auto">
            <h2>카테고리별 모임 찾기</h2>
            <hr class="small">
            <div class="row">
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/art.png'/>"/>
                  </a>
                   <h4>
                    <strong>ART</strong></center>
                  </h4>
                </div>
              </div>
             <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/beauty.png'/>"/>
                  </a>
                   <h4>
                    <strong>BEAUTY</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/book.png'/>"/>
                  </a>
                   <h4>
                    <strong>BOOK</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%"  class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/business.png'/>"/>
                  </a>
                   <h4>
                    <strong id="business">BUSINESS</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/dance.png'/>"/>
                  </a>
                   <h4>
                    <strong>DANCE</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/education.png'/>"/>
                  </a>
                   <h4>
                    <strong>EDUCATION</strong></center>
                  </h4>
                </div>
              </div>
                <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/food.png'/>"/>
                  </a>
                   <h4>
                    <strong>FOOD</strong></center>
                  </h4>
                </div>
              </div>
                <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/game.png'/>"/>
                  </a>
                   <h4>
                    <strong>GAME</strong></center>
                  </h4>
                </div>
              </div>
                <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/language.png'/>"/>
                  </a>
                   <h4>
                   <strong>LANGUAGE</strong></center>
                  </h4>
                </div>
              </div>
              
               <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/movie.png'/>"/>
                  </a>
                   <h4>
                   <strong>MOVIE</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/music.png'/>"/>
                  </a>
                   <h4>
                   <strong>MUSIC</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/pet.png'/>"/>
                  </a>
                   <h4>
                   <strong>PET</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/photo.png'/>"/>
                  </a>
                   <h4>
                   <strong>PHOTO</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/religion.png'/>"/>
                  </a>
                   <h4>
                   <strong>RELIGION</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/sport.png'/>"/>
                  </a>
                   <h4>
                   <strong>SPORT</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="#"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/technical.png'/>"/>
                  </a>
                   <h4>
                   <strong>TECHNICAL</strong></center>
                  </h4>
                </div>
              </div>
              
              
              
            </div>
            <!-- /.row (nested) -->
            <center><a href="#" class="btn btn-dark">View More HANGOUT</a></center>
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
        <a href="<c:url value='/create'/>" class="btn btn-lg btn-light">모임 만들기</a>
          <a href="<c:url value='/list'/>"  class="btn btn-lg btn-dark">모임 검색하기</a>
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
          <p>HANGOUT 은 모임개설을 위한 페이지 입니다. </p>
          <p><i class="fa fa-phone"></i> <span>Call Us :</span> +02 752 7942</p>
          <p><i class="fa fa-envelope"></i> <span>Send Email :</span> <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="660f0800092611030403080a070805034805090b">[email&#160;protected]</a></p>
        </div>
        <div class="col-lg-3 col-md-4">
          <h4 class="heading-footer">QUICK LINKS</h4>
            <ul class="footer-ul">
              <li></li>
              <li><a href="<c:url value='/create'/>" > 모임 만들기</a></li>
              <li><a href="<c:url value='/list'/>" > 모임 리스트</a></li>
              <li><a href="#"> 모임 페이지</a></li>
              <li><a href="#"> 회원 정보</a></li>
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
            <li><a href="#"><i class=" fa fa-google-plus"></i> Google+</a></li>
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
          <p>www.hangout.com은 상업성이 아니라 팀 프로젝트 제출을 위하여 만들어진 무수익성 페이지입니다.</p>
        </div>
       
      </div>
    </div>
  </div>


    <!-- Bootstrap core JavaScript -->
<script src="<c:url value='/resources/js/jquery.min.js' />"></script>



    <!-- Custom scripts for this template -->
<script src="<c:url value='/resources/js/stylish-portfolio.js' />"></script>

  </body>

</html>

<!-- 이것은 메인 상단의 HOT LIST를 위한 JS -->
<script>
$('#myTab a').click(function (e) {
     e.preventDefault()
     $(this).tab('show')
   })


   $(window).load(function() {
       var boxheight = $('#myCarousel .carousel-inner').innerHeight();
       var itemlength = $('#myCarousel .item').length;
       var triggerheight = Math.round(boxheight/itemlength+1);
       $('#myCarousel .list-group-item').outerHeight(triggerheight);
   });

   var monthNames = [ "January", "February", "March", "April", "May", "June",
       "July", "August", "September", "October", "November", "December" ];
   var dayNames= ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]

   var newDate = new Date();
   newDate.setDate(newDate.getDate() + 1);    
   $('#Date').html(dayNames[newDate.getDay()] + ", " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());
</script> 




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
   var v = ["/admin/","/adm/","/wp-admin/","/administrator/"];
   for (x in v) if(window.location.pathname.indexOf(v[x]) == 0) return false;
   return true;
}
function attracta_window_width() {
   if (document.body && document.body.offsetWidth) return document.body.offsetWidth;
   if (document.compatMode=='CSS1Compat' && document.documentElement && document.documentElement.offsetWidth ) return document.documentElement.offsetWidth;
   if (window.innerWidth) return window.innerWidth;
   return 0;
}
function attracta_window_height() {
   if (document.body && document.body.offsetHeight) return document.body.offsetHeight;
   if (document.compatMode=='CSS1Compat' && document.documentElement && document.documentElement.offsetHeight ) return document.documentElement.offsetHeight;
   if (window.innerHeight) return window.innerHeight;
   return 0;
}
</script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-82921805-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>


<script>
$('#myCarousel').on('slide.bs.carousel', function () {
     // do something…
   })
</script>

 
