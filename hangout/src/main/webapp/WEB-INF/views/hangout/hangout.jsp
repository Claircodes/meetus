<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style-hangout.css'/>">
        <link rel="stylesheet" href="<c:url value='/resources/css/googlemap.css'/>">


<style>
/**
 * Oscuro: #283035
 * Azul: #03658c
 * Detalle: #c7cacb
 * Fondo: #dee1e3
 ----------------------------------*/
 * {
 	margin: 0;
 	padding: 0;
 	-webkit-box-sizing: border-box;
 	-moz-box-sizing: border-box;
 	box-sizing: border-box;
 }



ul {
	list-style-type: none;
}



/** ====================
 * Lista de Comentarios
 =======================*/
.comments-container {
	margin: 60px auto 15px;
	width: 768px;
}

.comments-container h1 {
	font-size: 36px;
	color: #283035;
	font-weight: 400;
}

.comments-container h1 a {
	font-size: 18px;
	font-weight: 700;
}

.comments-list {
	margin-top: 30px;
	position: relative;
}

/**
 * Lineas / Detalles
 -----------------------*/
.comments-list:before {
	content: '';
	width: 2px;
	height: 100%;
	background: #c7cacb;
	position: absolute;
	left: 32px;
	top: 0;
}

.comments-list:after {
	content: '';
	position: absolute;
	background: #c7cacb;
	bottom: 0;
	left: 27px;
	width: 7px;
	height: 7px;
	border: 3px solid #dee1e3;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
}

.reply-list:before, .reply-list:after {display: none;}
.reply-list li:before {
	content: '';
	width: 60px;
	height: 2px;
	background: #c7cacb;
	position: absolute;
	top: 25px;
	left: -55px;
}


.comments-list li {
	margin-bottom: 15px;
	display: block;
	position: relative;
}

.comments-list li:after {
	content: '';
	display: block;
	clear: both;
	height: 0;
	width: 0;
}

.reply-list {
	padding-left: 88px;
	clear: both;
	margin-top: 15px;
}
/**
 * Avatar
 ---------------------------*/
.comments-list .comment-avatar {
	width: 65px;
	height: 65px;
	position: relative;
	z-index: 99;
	float: left;
	border: 3px solid #FFF;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
	box-shadow: 0 1px 2px rgba(0,0,0,0.2);
	overflow: hidden;
}

.comments-list .comment-avatar img {
	width: 100%;
	height: 100%;
}

.reply-list .comment-avatar {
	width: 50px;
	height: 50px;
}

.comment-main-level:after {
	content: '';
	width: 0;
	height: 0;
	display: block;
	clear: both;
}
/**
 * Caja del Comentario
 ---------------------------*/
.comments-list .comment-box {
	width: 680px;
	float: right;
	position: relative;
	-webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
	-moz-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
	box-shadow: 0 1px 1px rgba(0,0,0,0.15);
}

.comments-list .comment-box:before, .comments-list .comment-box:after {
	content: '';
	height: 0;
	width: 0;
	position: absolute;
	display: block;
	border-width: 10px 12px 10px 0;
	border-style: solid;
	border-color: transparent #FCFCFC;
	top: 8px;
	left: -11px;
}

.comments-list .comment-box:before {
	border-width: 11px 13px 11px 0;
	border-color: transparent rgba(0,0,0,0.05);
	left: -12px;
}

.reply-list .comment-box {
	width: 610px;
}
.comment-box .comment-head {
	background: #FCFCFC;
	padding: 10px 12px;
	border-bottom: 1px solid #E5E5E5;
	overflow: hidden;
	-webkit-border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	border-radius: 4px 4px 0 0;
}

.comment-box .comment-head i {
	float: right;
	margin-left: 14px;
	position: relative;
	top: 2px;
	color: #A6A6A6;
	cursor: pointer;
	-webkit-transition: color 0.3s ease;
	-o-transition: color 0.3s ease;
	transition: color 0.3s ease;
}

.comment-box .comment-head i:hover {
	color: #03658c;
}

.comment-box .comment-name {
	color: #283035;
	font-size: 14px;
	font-weight: 700;
	float: left;
	margin-right: 10px;
}

.comment-box .comment-name a {
	color: #283035;
}

.comment-box .comment-head span {
	float: left;
	color: #999;
	font-size: 13px;
	position: relative;
	top: 1px;
}

.comment-box .comment-content {
	background: #FFF;
	padding: 12px;
	font-size: 15px;
	color: #595959;
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 0 0 4px 4px;
}

.comment-box .comment-name.by-author, .comment-box .comment-name.by-author a {color: #03658c;}
.comment-box .comment-name.by-author:after {
	content: 'autor';
	background: #03658c;
	color: #FFF;
	font-size: 12px;
	padding: 3px 5px;
	font-weight: 700;
	margin-left: 10px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

/** =====================
 * Responsive
 ========================*/
@media only screen and (max-width: 766px) {
	.comments-container {
		width: 480px;
	}

	.comments-list .comment-box {
		width: 390px;
	}

	.reply-list .comment-box {
		width: 320px;
	}
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

<!-- Page Content -->
<div class="container">
   <div class="row">
        <!-- title box -->
		<div class="col-md-9">
			<div class="form-top">
				<h1>
					<div id="hangout_btn"></div>
					<div id="participation"></div>
				</h1>
				<h2>HANGOUT on ${ListInfo.hangoutDate}</h2>
				오픈일 : ${ListInfo.hangoutOpendate} <br>신청마감 : ${ListInfo.hangoutClosedate}</p>
			</div>
			<br> 
			<!-- Blog Post -->
			<div class="form-top">
				<br>
				<div id="hcreator" style="display: none;">${ListInfo.userNum}</div>
				<img class="card-img-top" src="/resources/images/asia.jpg"
					alt="image">
				<div class="card-body">
					<p class="card-text">${ListInfo.hangoutContent}<br>
						${ListInfo.hangoutCategory}
					</p>
				</div>
			</div>
			<br>
			<div class="form-top">Address. 장소 안내<br>
				주소: ${ListInfo.hangoutAddress1}<br>
				상세주소: ${ListInfo.hangoutAddress2}<br>			
			</div>

			<div style="height: 450px">
				<div id="map"></div>
				<div id="infowindow-content">
					<span id="place-name"></span><br> Place ID <span
						id="place-id"></span><br> <span id="place-address"></span>
				</div>
			</div>
			<br>
			<div class="form-top">Q&A. 묻고 답하기</div>
			<div class="form-top">
					<div class="comments-container">
		<ul id="comments-list" class="comments-list">
			<li>
				<div class="comment-main-level">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="/resources/images/web-test.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name by-author"><a href="http://creaticode.com/blog">Agustin Ortiz</a></h6>
							<span>hace 20 minutos</span>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
				<!-- Respuestas de los comentarios -->
				<ul class="comments-list reply-list">
					<li>
						<!-- Avatar -->
						<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
						<!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
								<span>hace 10 minutos</span>
							</div>
							<div class="comment-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							</div>
						</div>
					</li>

					<li>
						<!-- Avatar -->
						<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_1_zps8e1c80cd.jpg" alt=""></div>
						<!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name by-author"><a href="http://creaticode.com/blog">Agustin Ortiz</a></h6>
								<span>hace 10 minutos</span>
							</div>
							<div class="comment-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							</div>
						</div>
					</li>
				</ul>
			</li>

			<li>
				<div class="comment-main-level">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
							<span>hace 10 minutos</span>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	</div>
	
	
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

<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>
</body>

<form action="/hangout/update" method="post" >
<input type="hidden" id="hangoutNum" value="${param.hangoutNum}"/>
</form>
<script type="text/javascript">
var hoUserNum = <%=user.getUserNum()%>;

$(".btn btn-secondary").click(function(){
   pageMove("hangout?hangoutNum=");
});
$(document).ready(function() {
   if (hoUserNum==$("#hcreator").text()){
      $("#hangout_btn").html('${ListInfo.hangoutName}' +'<form action="/hangout/update" name="hangoutinfo" method="post" > <input type="hidden" name="hangoutNum" value="${param.hangoutNum}"/><input class="btn btn-secondary  pull-right" type="submit" id="update" value="수정하기"><input class="btn btn-secondary  pull-right" type="button" id="delete" onclick="hangoutDelete()" value="DELETE"/>  </form> ');
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
	var checkValue = false;
	for(var i=0,max=userList.length;i<max;i++){
		userListHtml+="<button type='button' class='btn btn-default' data-container='body' data-toggle='popover' data-placement='top' data-content='Vivamus sagittis lacus vel augue laoreet rutrum faucibus.'>";
		userListHtml+=userList[i].userName;
		userListHtml+="</button>";
		if(userList[i].userNum == <%=user.getUserNum()%>)
		{
			checkValue = true;
		}
	}
	if (hoUserNum==$("#hcreator").text())
	{
		$("#hangout_btn").html('${ListInfo.hangoutName}' +'<form action="/hangout/update" name="hangoutinfo" method="post" > <input type="hidden" name="hangoutNum" value="${param.hangoutNum}"/><input class="btn btn-secondary  pull-right" type="submit" id="update" value="수정하기"><input class="btn btn-secondary  pull-right" type="button" id="delete" onclick="hangoutDelete()" value="DELETE"/>  </form> ');
	}
	else
	{
		if(checkValue == true)
		{
			$("#participation").html('<button class="btn btn-secondary pull-right" type="button" id="participate" onclick="cancellation()">참가취소</button>');
		}
		else
		{
			$("#participation").html('<button class="btn btn-secondary pull-right" type="button" id="participate" onclick="participate()">참가하기</button>');
		}
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

function hangoutDelete()
{
	var selectDelete = confirm("정말 삭제하시겠습니까?");
	if(selectDelete == true)
	{
		var paramId = "hangoutNum";
		var au = new AjaxUtil("hangout/delete", paramId);
		au.send();
	}
	else
	{
		alert("용성이 12월 26일 군대 입대");
	}
}

function cancellation()
{
	var selectDelete = confirm("참가신청을 취소하시겠 습니까?");
	if(selectDelete == true)
	{
		var paramId = "userNum,hangoutNum";
		var au = new AjaxUtil("hangout/takeuser/cancellation", paramId);
		au.send();
	}
	else
	{
		alert("용성이 12월 26일 군대 입대");
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
       // mapLocation 지도에서 center에 표시할 위치
   	   var mapLocation = new google.maps.LatLng('${ListInfo.hangoutLat}', '${ListInfo.hangoutLng}');   
   	   // markLocation 지도에 마커를 표시할 위치
       var markLocation = new google.maps.LatLng('${ListInfo.hangoutLat}', '${ListInfo.hangoutLng}');   
    	
   	   //지도에 뿌리기
   	   var map = new google.maps.Map(document.getElementById('map'), {
   		center: mapLocation,
   		   zoom: 15,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var input = document.getElementById('pac-input');

        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        var size_x = 60; // 마커로 사용할 이미지의 가로 크기
        var size_y = 60; // 마커로 사용할 이미지의 세로 크기
         
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
                            new google.maps.Size(size_x, size_y),
                            '',
                            '',
                            new google.maps.Size(size_x, size_y));
         
        var marker;
        marker = new google.maps.Marker({
               position: markLocation, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
        });
         
        var content = "<h3>"+"HANGOUT LOCATION"+"</h3>"; // 말풍선 안에 들어갈 내용
         
        // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
        var infowindow = new google.maps.InfoWindow({ content: content});
 
        google.maps.event.addListener(marker, "click", function() {
            infowindow.open(map,marker);
        });
         
 


      

       }
    </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&libraries=places&callback=initMap"
        async defer></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>        
</html>