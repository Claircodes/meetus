<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

      <link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style-hangout.css'/>">
        <link rel="stylesheet" href="<c:url value='/resources/css/googlemap.css'/>">        

    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.css" rel="stylesheet">


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
               HANGOUT 제목: <input type="text" id="hangoutName" value="${HangoutInfo.hangoutName}"  style="width: 310px; height: 50px ">
               <button class="btn btn-secondary pull-right" type="button" id="update" onclick="update()">수정완료</button>
               </p>
               HANGOUT 기간: <input type="text-center" id="hangoutOpendate" value="${HangoutInfo.hangoutOpendate}" placeholder="how long?">- <input type="text-center" id="hangoutClosedate" value="${HangoutInfo.hangoutClosedate}" placeholder="how long?">
               HANGOUT 날짜: <input type="text-center" id="hangoutDate" value="${HangoutInfo.hangoutDate}" placeholder="when is it?">
               </p>
            </div>
            <br>
            
            <!-- Blog Post -->
			<div class="form-top">
				<br>
				<div id="hcreator" style="display: none;">${HangoutInfo.userNum}</div>
				<div class="card-body">
				 <textarea name=content id="hangoutContent" >${HangoutInfo.hangoutContent}</textarea>
				</div>
			</div>
			<br>
            
            
            
            
         <div class="form-top">
               Address 검색
            </div>
   <div style="height:50%">
    <input id="hangoutArea" class="controls" type="text" placeholder="Enter a location">
    <div id="map" ></div>

    <div id="infowindow-content">
      <span id="place-name" ></span><br>
      Place ID <span id="place-id"></span><br>
      <span id="place-address"></span>
    </div>
 
          
         <div class="form-top">
                Address1.<div id="hangoutaddress1" name="hangoutaddress1"></div>
        		Address2.<input class="text" id="hangoutaddress2" placeholder="더 상세한 주소가 필요하시면 입력해주세요."  style="width: 610px;"/>
            <input type="hidden"  id="lat"><input type="hidden"  id="lng"><input type="hidden"  id="hangoutaddress1">
            </div>
            	
         </div>
      </div>




         <div class="col-md-3 ">
            <!-- Category box -->
            <div class="form-top">
               <h5 class="cards-header">Category</h5>
               <div class="desc">
                  <a href="#"><h6>${HangoutInfo.hangoutTag}</h6></a>
                  
               </div>

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
                     <br /> <a target="_blank" href="http://scripteden.com/"><h3
                           align="center">${HangoutInfo.userName}</h3></a>
                  </div>
                  <div class="desc">
                     <h6>핸드폰번호:${HangoutInfo.userPhone}</h6>
                  </div>
                  <div class="desc">
                     <h6>국적:${HangoutInfo.userCountry}</h6>
                  </div>
                  <div class="desc">
                     <h6>이메일:${HangoutInfo.userEmail}</h6>
                  </div>

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
</div>

<input type="hidden" id="hangoutNum" value="${param.hangoutNum}"/>
<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>
</body>


<script type="text/javascript">
var hoUserNum = <%=user.getUserNum()%>;

$(document).ready(function() {
$('#hangoutContent').summernote({
	height: 300,
	minHeight: null,
	maxHeight: null,
	focus: true,
	callbacks: {
		onImageUpload: function(files, editor, welEditable) {
			for (var i = files.length - 1; i >= 0; i--) {
				sendFile(files[i], this);
				}
			}
			}
			});
		});

function sendFile(file, el) {
	var form_data = new FormData();
	form_data.append('file', file);
	$.ajax({
		data: form_data,
		type: "POST",
		url: '/image',
		cache: false,
		contentType: false,
		enctype: 'multipart/form-data',
		processData: false,
		success: function(xhr) {

			alert(xhr.fileName);
			var url = "${rootPath}/resources/client_img/" + xhr.fileName
			$(el).summernote('editor.insertImage', url);
			
			$('#hangoutContent').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
	   }
	 });
	}

$(".btn btn-secondary").click(function(){
   pageMove("hangout?hangoutNum=");
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

function update(){
	var paramIds="hangoutNum,hangoutName,hangoutContent,hangoutOpendate,hangoutClosedate, hangoutAddress1, hangoutAddress2, hangoutLat, hangoutLng";
	var au = new AjaxUtil("hangout/updateContent",paramIds);
	au.setCallbackSuccess(callbackUpdate);
	au.send(); 
}
function callbackUpdate(result){
	alert(result.msg);
	pageMove(result.url);
	}

</script>
<script type = “text/javascript” src = “http://maps.googleapis.com/maps/api/js?sensor=true”></script>

<script>
    function initMap() {
        // mapLocation 지도에서 center에 표시할 위치
    	   var mapLocation = new google.maps.LatLng('37.496276', '127.028847');   
        var map = new google.maps.Map(document.getElementById('map'), {
       		center: mapLocation,
    		zoom: 15,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });
        var input = document.getElementById('hangoutArea');
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
        	/* 
          infowindow.close(); */
          var place = autocomplete.getPlace();
          if (!place.geometry) {
            return;
          }
          if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
          } else {
            map.setCenter(place.geometry.location);
            map.setZoom(15);
          }
          // Set the position of the marker using the place ID and location.
          marker.setPlace({
            placeId: place.place_id,
            location: place.geometry.location
          });
          marker.setVisible(true);
   	    document.getElementById("lat").value=place.geometry.location.lat();
	    document.getElementById("lng").value=place.geometry.location.lng(); 
          document.getElementById('place-name').textContent = place.name;
          document.getElementById('place-address').textContent = place.formatted_address;
          $("#placeName").val(place.name);
		$("#hangoutaddress1").html(place.formatted_address);
          infowindow.setContent(document.getElementById('infowindow-content'));
          infowindow.open(map, marker);
          });

       }
       
    </script>

	    <script src="<c:url value='/resources/js/scripts-hangout.js'/>"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&libraries=places&callback=initMap"
        async defer></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.js"></script>
</html>