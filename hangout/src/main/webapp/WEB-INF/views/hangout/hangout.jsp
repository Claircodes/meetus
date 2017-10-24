<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link href="/resources/css/hangout.css" rel="stylesheet">
  </head>
  
  <body>
<%String hangoutNum =request.getParameter("hangoutNum");%>
        <input type="text" id="hangoutNum" value=<%=hangoutNum%>>
      <div id="fb-root"></div>
            <script>

            $(document).ready(function(){ 
                var paramIds="hangoutNum";
                var au = new AjaxUtil("select/listcontent",paramIds,"GET");
                au.setCallbackSuccess(callbackSql);
                au.send();
            });
            
            function callbackSql(result){
             var result2 = result.list;
             alert(result2);
            }
            </script>
    <!-- Navigation -->
    
    <!-- Page Content -->
 <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

          <h1 class="my-4">모임 제목</h1>

          <!-- Blog Post -->
          <div class="card mb-4">
            <img class="card-img-top" src="https://pbs.twimg.com/media/Cq5tz18VUAAFT5q.jpg"  alt="Card image cap" >
            <div class="card-body">
              <h2 class="card-title">위에 사진은 모임생성할때 올리는 이미지 정보</h2>
              <p class="card-text">“사물인터넷의 최종 단계는 전 지구의 모든 물건에 저렴하게 연결되어 향기나 냄새처럼 어디든지 퍼져있는 스마트 먼지와 같이 확산되며 기술이 사회를 변혁 시키는 것” 4차 산업혁명은 사물인터넷부터 시작된다는 말이 있을 만큼 사물 인터넷(IoT)에 대한 주목과 시장가치가 커지고 있습니다.	현재 사용되는 대표적인 사례로는 자동차 스마트키부터 홈 CCTV, 가스 잠금 등 다양하며 편의성, 경제성, 안전성을 모두 갖춘 효용성으로 생활의 질을 향상시키기 때문에 앞으로도 다양한 분야와 접목하여 발전할 가능성이 높은 분야로 주목받고 있습니다..</p>
              <a href="#" class="btn btn-primary">more →</a>
            </div>
            <div class="card-footer text-muted">
              Posted on January 8, 2017 by
              <a href="#">Admin</a>
            </div>
          </div>



          <!-- Pagination -->
          <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="#">← Older</a>
            </li>
            <li class="page-item disabled">
              <a class="page-link" href="#">Newer →</a>
            </li>
          </ul>

        </div>
        <div class="col-md-4">


          <!-- Side Widget -->
             <div class="card my-4">
          <div class="card">
            <div class="card-header">
              <h5 class="cards-header">#hashtag</h5>
            </div>
            <div class="card-block">
              <div class="desc"><h6>수박바  비비빅  바밤바</h6></div>
                      
            </div>
          </div></div>
          
          
          <div class="card my-4">
            <h5 class="card-header">Admin</h5>
              <div col-lg-3 col-sm-6>
                <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="http://cfile233.uf.daum.net/image/193BA6384DE105340A2D8E" width="100%" height="80%">
                </div>
                <div class="info">
                    <div class="title">
                        <br/>
                        <a target="_blank" href="http://scripteden.com/"><h3 align="center">신짱구</h3></a>
                    </div>
                    <div class="desc"><h6>개설자 정보1</h6></div>
                    <div class="desc"><h6>개설자 정보2</h6></div>
                    <div class="desc"><h6>개설자 정보3</h6></div>
                </div>
                <div class="bottom" align="center">
                    <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/webmaniac">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a class="btn btn-danger btn-sm" rel="publisher"
                       href="https://plus.google.com/+ahmshahnuralam">
                        <i class="fa fa-google-plus"></i>
                    </a>
                    <a class="btn btn-primary btn-sm" rel="publisher"
                       href="https://plus.google.com/shahnuralam">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a class="btn btn-warning btn-sm" rel="publisher" href="https://plus.google.com/shahnuralam">
                        <i class="fa fa-behance"></i>
                    </a>
                </div>
            </div>

              </div>
          </div>
       
 <!--         
          <div class="card my-4">
              <h5 class="card-header">
                  FaceBook 가져오기
              </h5>
               <div class="fb-page" data-href="https://www.facebook.com/Devwonwon-1439494016140368/" data-tabs="timeline" data-width="900" data-height="600" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Devwonwon-1439494016140368/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Devwonwon-1439494016140368/">Devwonwon</a></blockquote></div>
          </div>
-->          
<!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">검색하기</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="검색하실 내용을 입력하세요.">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Search!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">카테고리</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Web Design</a>
                    </li>
                    <li>
                      <a href="#">HTML</a>
                    </li>
                    <li>
                      <a href="#">Freebies</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">JavaScript</a>
                    </li>
                    <li>
                      <a href="#">CSS</a>
                    </li>
                    <li>
                      <a href="#">Tutorials</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
     </div>
    </div>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Designe:© Phantuan - Framework: bootstrap 4</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

  </body>

</html>
