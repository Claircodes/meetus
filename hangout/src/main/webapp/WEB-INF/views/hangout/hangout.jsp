<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style-hangout.css'/>">
                <link rel="stylesheet" href="<c:url value='/resources/css/googlemap.css'/>">

<style>
body, html {
    height: 100%;
}

.bg {
    /* The image used */
    background-image: url("/resources/images/flower2.jpg");

    /* Full height */
    height: 30%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>


</head>
<div id="fb-root"></div>
<%
String hangoutNum = "";

if (request.getParameter("hangoutNum")!=null){
   hangoutNum = request.getParameter("hangoutNum");
}
%>
<!--  상단 이미지 -->
<div class="bg"></div>

<!-- Page Content -->
<div class="container">
   <div class="row">
      <!-- title box -->
		<div class="col-md-9">
			<div class="form-top">
				<h1>
					<div id="hangout_btn"></div>
				</h1>
				HANGOUT 기간 : ${ListInfo.hangoutOpendate}-
				${ListInfo.hangoutClosedate}
				<p>HANGOUT 날짜 : ${ListInfo.hangoutDate}</p>
			</div>
			<br>

			<!-- Blog Post -->
			<div class="form-top">
				<br>
				<div id="hcreator" style="display: none;">${ListInfo.hangoutCreator}</div>
				<img class="card-img-top" src="/resources/images/asia.jpg"
					alt="image">
				<div class="card-body">
					<p class="card-text">${ListInfo}<br>
						${ListInfo.hangoutCategory}
					</p>
				</div>
			</div>
			<br>
			<div class="form-top">Address. 장소 안내</div>
			<div style="height: 50%">
				<input id="pac-input" class="controls" type="text"
					placeholder="Enter a location">
				<div id="map"></div>

				<div id="infowindow-content">
					<span id="place-name"></span><br> Place ID <span
						id="place-id"></span><br> <span id="place-address"></span>
				</div>
			</div>
			<br>
			<div class="form-top">Q&A. 묻고 답하기</div>
		</div>
		<br>



		<div class="col-md-3 ">
				<!-- Category box -->
				<div class="form-top">
					<h5 class="cards-header">Category</h5>
					
						<h6>${ListInfo.hangoutTag}</h6>
				

				</div>
				</br>

				<!-- Operator box -->
				<div class="form-top">
					<h5 class="cards-header">Operator</h5>

					<div class="cardheader"></div>
					<div class="avatar">
						<img alt=""
							src="http://cfile233.uf.daum.net/image/193BA6384DE105340A2D8E"
							width="100%" height="80%">
					</div>
					<div class="info">
						<div class="title">
							<h2>${ListInfo.userName}</h2>
						</div>
						<div class="desc">
							<h6>핸드폰번호:${ListInfo.userPhone}</h6>
						</div>
						<div class="desc">
							<h6>국적:${ListInfo.userCountry}</h6>
						</div>
						<div class="desc">
							<h6>이메일:${ListInfo.userEmail}</h6>
						</div>

					</div>
				</div>
				<br>

				<!--         
          <div class="card my-4">
              <h5 class="card-header">
                  FaceBook 가져오기
              </h5>
               <div class="fb-page" data-href="https://www.facebook.com/Devwonwon-1439494016140368/" data-tabs="timeline" data-width="900" data-height="600" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Devwonwon-1439494016140368/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Devwonwon-1439494016140368/">Devwonwon</a></blockquote></div>
          </div>
-->
				<!-- Search Widget 
            <div class="card my-4">
               <h5 class="card-header">검색하기</h5>
               <div class="card-body">
                  <div class="input-group">
                     <input type="text" class="form-control"
                        placeholder="검색하실 내용을 입력하세요."> <span
                        class="input-group-btn">
                        <button class="btn btn-secondary" type="button" id="searchContent">Search!</button>
                     </span>
                  </div>
               </div>
            </div>
-->


			<!-- 참가자 box -->
				<div class="form-top">
					<h5 class="cards-header">Participant</h5>
					<div class="col-lg-6">
						<div class="card-block" id="hangoutList"></div>
					</div>
				</div>
				<br>

				<!-- Topic & tag box -->
				<div class="form-top">
					<h5 class="cards-header">Topic & Tag</h5>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">Web Design</a></li>
									<li><a href="#">HTML</a></li>
									<li><a href="#">Freebies</a></li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">JavaScript</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">Tutorials</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

</div>

<input type="hidden" id="hangoutNum" value="${param.hangoutNum}"/>
<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>
</body>


<script type="text/javascript">
var hoUserNum = <%=user.getUserNum()%>;

$(".btn btn-secondary").click(function(){
   pageMove("hangout?hangoutNum=");
});
$(document).ready(function() {
   if (hoUserNum==$("#hcreator").text()){
      $("#hangout_btn").html('${ListInfo.hangoutName}' +'<button class="btn btn-secondary  pull-right" type="button" id="update" onclick="goupdate()">수정하기</button>');
   }else{
      $("#hangout_btn").html('${ListInfo.hangoutName}' +'<button class="btn btn-secondary pull-right" type="button" id="participate" onclick="participate()">참가하기</button>');
   }
   
    var paramIds = "hangoutNum";
     var au = new AjaxUtil("hangout/takeuser/list", paramIds);  
     au.setCallbackSuccess(callbackSql);
     au.send();
});

function callbackSql(result){
   var userList=result.list;
   $("#hangoutListCnt").text("현재 참가중인 인원: " + userList.length+"명(click)");
   var userListHtml = "";
   for(var i=0,max=userList.length;i<max;i++){
      userListHtml+="<p>" + userList[i].userName + "</p>";
      }
   $("#hangoutList").html(userListHtml);
}



function participate(){
   if(<%=login%>==true){
      var paramIds="hangoutNum,userNum";
       var au = new AjaxUtil("hangout/takeuser/check",paramIds);
       au.setCallbackSuccess(overlapNumCheck);
       au.send(); 
}else{
   alert("로그인을 해주세요.");
   }
}

function overlapNumCheck(result){
   var numList=result.list;
   if(numList==null){
      var paramIds="hangoutNum,userNum";
       var au = new AjaxUtil("hangout/takeuser/insert",paramIds);
       au.send(); 
   }
   
      if(numList.userNum==hoUserNum){
         alert("이미 참가신청을 하였습니다.");
         return;
   }
      var paramIds="hangoutNum,userNum";
       var au = new AjaxUtil("hangout/takeuser/insert",paramIds);
       au.send(); 
}

function goupdate(){
   location.href=${rootPath}"/hangout/update";
}

</script>

	<!-- Javascript -->
        <script src="<c:url value='/resources/js/jquery-1.12.1.min.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
	    <script src="<c:url value='/resources/js/scripts-hangout.js'/>"></script>
	    
	    
	     <script>
    
       function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -33.8688, lng: 151.2195},
          zoom: 13
        });

        var input = document.getElementById('pac-input');

        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);

        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        var infowindow = new google.maps.InfoWindow();
        var marker = new google.maps.Marker({
          map: map
        });
        marker.addListener('click', function() {
          infowindow.open(map, marker);
        });

        autocomplete.addListener('place_changed', function() {
          infowindow.close();
          var place = autocomplete.getPlace();
          if (!place.geometry) {
            return;
          }

          if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
          } else {
            map.setCenter(place.geometry.location);
            map.setZoom(17);
          }

          // Set the position of the marker using the place ID and location.
          marker.setPlace({
            placeId: place.place_id,
            location: place.geometry.location
          });
          marker.setVisible(true);

          document.getElementById('place-name').textContent = place.name;
//          document.getElementById('place-id').textContent = place.place_id;
          document.getElementById('place-address').textContent = place.formatted_address;
          $("#placeName").val(place.name);
//          $("#placeId").val(place.place_id);
          $("#placeAddress").html(place.formatted_address);
          infowindow.setContent(document.getElementById('infowindow-content'));
          infowindow.open(map, marker);
        });
      
      $("#btnAddress").click(function(){
         if (confirm("이 주소가 맞습니까?") == true){    //확인
        	 var au = new AjaxUtil("place");
        	 var param = {};
             param["placeAddress"]=$("#placeAddress").text();
             au.param = JSON.stringify(param);
             au.setCallbackSuccess(sucessAddress);
             au.send();
          }
      });
      function sucessAddress(result) {
		alert(result.placeAddress);
	}
       }
    </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&libraries=places&callback=initMap"
        async defer></script>
</html>