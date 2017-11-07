<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
      <link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style-hangout.css'/>">
        

    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.css" rel="stylesheet">

    <style>

      #map {
        height: 100%;
      }

      .controls {
        background-color: #fff;
        border-radius: 2px;
        border: 1px solid transparent;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        box-sizing: border-box;

        height: 29px;
        margin-left: 17px;
        margin-top: 10px;
        outline: none;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 400px;
      }

      .controls:focus {
        border-color: #4d90fe;
      }

      #infowindow-content {
        display: none;
      }
      #map #infowindow-content {
        display: inline;
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
<div class="form-bottom">
   <div class="row">
         <!-- title box -->
         <div class="col-md-8">
            <div class="form-top">
               <h1>
                  <div id="hangout_btn"></div>
               </h1>
               HANGOUT 제목: <input type="text" placeholder="Enter text ..."
                  style="width: 310px; height: 50px">
               <button class="btn btn-secondary pull-right" type="button"
                  id="participate" onclick="participate()">수정완료</button>
               </p>
               HANGOUT 기간: <input type="text-center" placeholder="how long?">
               HANGOUT 날짜: <input type="text-center" placeholder="when is it?">
               </p>
            </div>
            <br>
            
            
            
         <div class="form-top">
               Address 검색
            </div>
   <div style="height:50%">
    <input id="pac-input" class="controls" type="text" placeholder="Enter a location">
    <div id="map" ></div>

    <div id="infowindow-content">
      <span id="place-name" ></span><br>
      Place ID <span id="place-id"></span><br>
      <span id="place-address"></span>
    </div>
 
          
         <div class="form-top">
                  선택한 주소 : <div id="placeAddress" name="placeAddress"></div>
            
        <input type="button" id="btnAddress" value="버튼"name="btn">

            </div>
      
<br>





               <textarea name="content" id="summernote" value=""></textarea>
            <!-- Blog Post -->
            <div class="form-top">
               <br>

               <div id="hcreator" style="display: none;">${ListInfo.hangoutCreator}</div>
               <div class="container">
                  <div class="hero-unit" style="margin-top: 40px">
                     <h2 style="font-size: 58px">Editor Form</h2>
                     <hr />
                     <textarea class="textarea" placeholder="Enter text ..."
                        style="width: 610px; height: 200px"></textarea>
                  </div>
                  <div class="row">
                     <div class="span6">
       <!--                 <pre class="prettyprint linenums">$('.textarea').wysihtml5();</pre>
             -->          
                     </div>
                  </div>
               </div>


               <div class="card-body">
                  <form method='post' enctype='multipart/form-data'
                     action='imgup.jsp'>
                     <input type='file' name='userPicture' class='btn-link-2'>
                  </form>
                  <input id='userPicture' class='btn-link-2' type='submit'
                     value='upload' class='btn-link-2'>

                  <p class="card-text">${ListInfo}<br>
                     ${ListInfo.hangoutCategory}
                  </p>
               </div>
            </div>
         </div>
      </div>




         <div class="col-md-4 ">
            <!-- Category box -->
            <div class="form-top">
               <h5 class="card-header">Category</h5>
               <div class="desc">
                  <a href="#"><h6>${ListInfo.hangoutTag}</h6></a>
                  
               </div>

            </div>
            </br>

            <!-- Operator box -->
            <div class="form-top">
               <h5 class="card-header">Operator</h5>

               <div class="cardheader"></div>
               <div class="avatar">
                  <img alt=""
                     src="http://cfile233.uf.daum.net/image/193BA6384DE105340A2D8E"
                     width="100%" height="80%">
               </div>
               <div class="info">
                  <div class="title">
                     <br /> <a target="_blank" href="http://scripteden.com/"><h3
                           align="center">${ListInfo.userName}</h3></a>
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



         <!-- 참가자 box -->
            <div class="form-top">
               <h5 class="card-header">Participant</h5>
               <div class="col-lg-6">
                  <div class="card-block" id="hangoutList"></div>
               </div>
            </div>
            <br>

            <!-- Topic & tag box -->
            <div class="form-top">
               <h5 class="card-header">Topic & Tag</h5>
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

$(function() {
    $('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 100
      });
});

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

        <script src="<c:url value='/resources/js/jquery-1.12.1.min.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
        <script src="<c:url value='/resources/js/scripts-hangout.js' />"></script>
       
    <script>
      // This sample uses the Place Autocomplete widget to allow the user to search
      // for and select a place. The sample then displays an info window containing
      // the place ID and other information about the place that the user has
      // selected.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

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
//          $("#placeName").val(place.name);
//          $("#placeId").val(place.place_id);
          $("#placeAddress").html(place.formatted_address);
          infowindow.setContent(document.getElementById('infowindow-content'));
          infowindow.open(map, marker);
        });
      
      $("#btn").click(function(){
         if (confirm("이 주소가 맞습니까?") == true){    //확인
                var paramIds = "placeName,placeId,placeAddress";
                var au = new AjaxUtil("place",paramIds); 
                au.send();
          }
      });
       }
       
       
       
    </script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&libraries=places&callback=initMap"
        async defer></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.js"></script>
</html>