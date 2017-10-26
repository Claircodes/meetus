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
	
	<!--  구글맵 -->
	<script
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&amp;libraries=places"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

	<script src="/resources/js/jquery.geocomplete.js"></script>
	<script src="/resources/js/logger.js"></script>

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
         <h2>지역별 모임 찾기</h2><p>
         </div>
         <div class="col-sm-2"></div>
          <div class="col-sm-5 text-right">
          	 	 <input type="text-center" class="form-control btn"   
                  placeholder="검색지역을 입력해주세요." id="citysearch">
                  	<form>
		<input id="geocomplete" type="text" placeholder="Type in an address"
			size="90" /> <input id="find" type="button" value="find" />
	</form>
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
                  <a href="<c:url value='/hangout/golist'/>?category=ART"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/art.png'/>"/>
                  </a>
                   <h4>
                    <strong>ART</strong></center>
                  </h4>
                </div>
              </div>
             <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=BEAUTY"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/beauty.png'/>"/>
                  </a>
                   <h4>
                    <strong>BEAUTY</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=BOOK"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/book.png'/>"/>
                  </a>
                   <h4>
                    <strong>BOOK</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=BUSINESS"><center>
                    <img width="50%"  class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/business.png'/>"/>
                  </a>
                   <h4>
                    <strong id="business">BUSINESS</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=DANCE"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/dance.png'/>"/>
                  </a>
                   <h4>
                    <strong>DANCE</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=EDUCATION"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/education.png'/>"/>
                  </a>
                   <h4>
                    <strong>EDUCATION</strong></center>
                  </h4>
                </div>
              </div>
                <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=FOOD"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/food.png'/>"/>
                  </a>
                   <h4>
                    <strong>FOOD</strong></center>
                  </h4>
                </div>
              </div>
                <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=GAME"><center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/game.png'/>"/>
                  </a>
                   <h4>
                    <strong>GAME</strong></center>
                  </h4>
                </div>
              </div>
                <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=LANGUAGE"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/language.png'/>"/>
                  </a>
                   <h4>
                   <strong>LANGUAGE</strong></center>
                  </h4>
                </div>
              </div>
              
               <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=MOVIE"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/movie.png'/>"/>
                  </a>
                   <h4>
                   <strong>MOVIE</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=MUSIC"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/music.png'/>"/>
                  </a>
                   <h4>
                   <strong>MUSIC</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=PET"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/pet.png'/>"/>
                  </a>
                   <h4>
                   <strong>PET</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=PHOTO"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/photo.png'/>"/>
                  </a>
                   <h4>
                   <strong>PHOTO</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=RELIGION"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/religion.png'/>"/>
                  </a>
                   <h4>
                   <strong>RELIGION</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=SPORT"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/sport.png'/>"/>
                  </a>
                   <h4>
                   <strong>SPORT</strong></center>
                  </h4>
                </div>
              </div>
              <div class="col-sm-2">
                <div class="portfolio-item">
                  <a href="<c:url value='/hangout/golist'/>?category=TECHNICAL"> <center>
                    <img width="50%" class="img-portfolio img-fluid" src="<c:url value='/resources/images/category/technical.png'/>"/>
                  </a>
                   <h4>
                   <strong>TECHNICAL</strong></center>
                  </h4>
                </div>
              </div>
              
              
              
            </div>
            <!-- /.row (nested) -->
            <center><a href="<c:url value='/hangout/golist'/>" class="btn btn-dark">View More HANGOUT</a></center>
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
        <a href="<c:url value='/hangout/create'/>" class="btn btn-lg btn-light">모임 만들기</a>
          <a href="<c:url value='/hangout/golist'/>"  class="btn btn-lg btn-dark">모임 검색하기</a>
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
              <li><a href="<c:url value='/hangout/create'/>" > 모임 만들기</a></li>
              <li><a href="<c:url value='/hangout/golist'/>" > 모임 리스트</a></li>
              <li><a href="<c:url value='/user/profile'/>"> 회원 정보</a></li>
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




<!--  구글map API 
	<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> 
	<script type="text/javascript"> 
	  var geocoder;
	 
	  if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
	} 
	//Get the latitude and the longitude;
	function successFunction(position) {
	    var lat = position.coords.latitude;
	    var lng = position.coords.longitude;
	    codeLatLng(lat, lng)
	}
	 
	function errorFunction(){
	    alert("Geocoder failed");
	}
	 
	  function initialize() {
	    geocoder = new google.maps.Geocoder();
	 
	 
	 
	  }
	 
	  function codeLatLng(lat, lng) {
	 
	    var latlng = new google.maps.LatLng(lat, lng);
	    geocoder.geocode({'latLng': latlng}, function(results, status) {
	      if (status == google.maps.GeocoderStatus.OK) {
	      console.log(results)
	        if (results[1]) {
			//alert (results[0].address_components[3].short_name);
			
				
	 
	         //formatted address
	     //    alert(results[0].formatted_address)
	        //find country name
	             for (var i=0; i<results[0].address_components.length; i++) {
	            for (var b=0;b<results[0].address_components[i].types.length;b++) {
				         
	 
	            //there are different types that might hold a city admin_area_lvl_1 usually does in come cases looking for sublocality type will be more appropriate
	                if (results[0].address_components[i].types[b] == "locality") {
	                    //this is the object you are looking for
	                    city= results[0].address_components[i];
	                    break;
	                }
	            }
	        }
	        //city data 
			//alert(city.long_name)
			$(document).ready(function(){
				$('#citysearch').val(city.long_name);
			});
	        
	 
	        } else {
	          alert("No results found");
	        }
	      } else {
	        alert("Geocoder failed due to: " + status);
	      }
	    });
	  }
	</script> 
	<body onload="initialize()"> 
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&callback=initMap"
		async defer></script>-->
		
		<!-- 구글맵 도시검색 -->
	<script>
		$(function() {

			$("#geocomplete").geocomplete().bind("geocode:result",
					function(event, result) {
						$.log("Result: " + result.vicinity);
					}).bind("geocode:error", function(event, status) {
				$.log("ERROR: " + status);
			}).bind("geocode:multiple", function(event, results) {
				$.log("Multiple: " + results.length + " results found");
			});

			$("#find").click(function() {
				$("#geocomplete").trigger("geocode");
			});

			$("#examples a").click(function() {
				$("#geocomplete").val($(this).text()).trigger("geocode");
				return false;
			});

		});
	</script>
</body>
</html>