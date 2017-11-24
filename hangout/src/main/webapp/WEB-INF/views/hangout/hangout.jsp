<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style-hangout.css'/>">
        <link rel="stylesheet" href="<c:url value='/resources/css/googlemap.css'/>">


<style>

.detailBox {
    width:320px;
    border:1px solid #bbb;
    margin:50px;
}
.titleBox {
    background-color:#fdfdfd;
    padding:10px;
}
.titleBox label{
  color:#444;
  margin:0;
  display:inline-block;
}

.commentBox {
    padding:10px;
    border-top:1px dotted #bbb;
}
.commentBox .form-group:first-child, .actionBox .form-group:first-child {
    width:80%;
}
.commentBox .form-group:nth-child(2), .actionBox .form-group:nth-child(2) {
    width:18%;
}
.actionBox .form-group * {
    width:100%;
}
.taskDescription {
    margin-top:10px 0;
}
.commentList {
    padding:0;
    list-style:none;
    max-height:200px;
    overflow:auto;
}
.commentList li {
    margin:0;
    margin-top:10px;
}
.commentList li > div {
    display:table-cell;
}
.commenterImage {
    width:30px;
    margin-right:5px;
    height:100%;
    float:left;
}
.commenterImage img {
    width:100%;
    border-radius:50%;
}
.commentText p {
    margin:0;
}
.sub-text {
    color:#aaa;
    font-family:verdana;
    font-size:11px;
}
.actionBox {
    border-top:1px dotted #bbb;
    padding:10px;
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
				<h3><strong>HANGOUT on ${ListInfo.hangoutDate}</strong></h3>
			<div class="actionBox">	
				오픈일 : ${ListInfo.hangoutOpendate} <br>신청마감 :
				${ListInfo.hangoutClosedate}
				</p>
			</div>
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
			
			
			<div class="form-top">
				Address. 장소 안내
				<div class="actionBox">
				 주소: ${ListInfo.hangoutAddress1}<br>
				상세주소: ${ListInfo.hangoutAddress2}<br>
			</div>

			<div style="height: 450px">
				<div id="map"></div>
				<div id="infowindow-content">
					<span id="place-name"></span><br> Place ID <span id="place-id"></span><br>
					<span id="place-address"></span>
				</div>
			</div>
			</div>
			<br>

			<div class="form-top">
				Q&A. 묻고 답하기
				<div class="actionBox">
					<ul class="commentList">
						<li>
							<div class="commenterImage">
								<img src="/resources/images/web-test.jpg" />
							</div> <strong>고혜련</strong> <span class="date sub-text">
								2017.11.04</span>
							<div class="commentText">
								<p class="">아~ 지훈짱 얼른 마법의신부 보라능~!!.</p>
							</div>
						</li>
						<li>
							<div class="commenterImage">
								<img
									src="http://cfile233.uf.daum.net/image/193BA6384DE105340A2D8E" />
							</div> <strong>장지훈</strong> <span class="date sub-text">
								2017.11.04</span>
							<div class="commentText">
								<p class="">안봐. 무슨 마법이야 마법은</p>

							</div>
						</li>
					</ul>


					<form class="form-inline" role="form">
						<div class="form-group">
							<input class="form-control" type="text"
								placeholder="Your comments" />
						</div>
						<div class="form-group">
							<button class="btn btn-default">입력</button>
						</div>
					</form>
				</div>


			</div>
		</div>
		<br>



		<div class="col-md-3 ">
				<!-- Category box -->
				<div class="form-top">
					<h5 class="cards-header"></p>Category</h5>
					<div class="actionBox">	
						<h6>${ListInfo.hangoutTag}</h6>
					</div>
				</div>
				</br>

				<!-- Operator box -->
				<div class="form-top">
					<h5 class="cards-header"></p>Operator</h5>
					<div class="actionBox">	
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
							CALL: ${ListInfo.userPhone}
						</div>
						<div class="desc">
							NATION: ${ListInfo.userCountry}
						</div>
						<div class="desc">
							CONTACT: ${ListInfo.userEmail}
						</div>
						</div>
					</div>
				</div>
				<br>



			<!-- 참가자 box -->
				<div class="form-top">
					<h5 class="cards-header"></p>Participant</h5>
					<div class="actionBox">	
					<div class="col-lg-6">
						<div class="card-block" id="hangoutList"></div>
					</div>
					</div>
				</div>
				<br>

				<!-- Topic & tag box -->
				<div class="form-top">
					<h5 class="cards-header"></p>Topic & Tag</h5>
					<div class="actionBox">	
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li>Web Design</li>
									<li>HTML</li>
									<li>Freebies</li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li>JavaScript</li>
									<li>CSS</li>
									<li>Tutorials</li>
								</ul>
							</div>
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