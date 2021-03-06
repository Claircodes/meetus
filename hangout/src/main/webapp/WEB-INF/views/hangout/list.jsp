<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Search out!</title>

<!--  CSS -->
<link href="<c:url value='/resources/css/list.css"'/>"   rel="stylesheet" />
<link rel="stylesheet"
   href="<c:url value="https://fonts.googleapis.com/css?family=Passion+One"/>" />
<link rel="stylesheet"
   href="<c:url value="https://fonts.googleapis.com/css?family=Oxygen"/>" />
<!DOCTYPE html>
<html lang="en">
<br><br><br>
<%
String hangoutCategory = "";
if (request.getParameter("hangoutCategory")!=null){
	hangoutCategory = request.getParameter("hangoutCategory");
}
String hangoutArea = "";
if (request.getParameter("hangoutArea")!=null){
	hangoutArea = request.getParameter("hangoutArea");
}

%>

 <!-- 검색 bar -->
 <section>
<div class="container">
   <div class="row justify-content-center align-self-center">
            <div class="col-sm-12 text-center">
             <div class="text-vertical-center">
               <h1>HANGOUT 모임 리스트</h1>
               <p></div>
            </div>
      <div class="col-sm-2" style="margin:0 0 5px;"></div>
                  <div class="col-sm-2" style="margin:0 0 5px;">
                     <input type="text" class="form-control btn btn-primary"
                           id="hangoutArea" placeholder="지역검색">
                  </div>
                  <div class="col-sm-4">
                     <input type="text" class="form-control btn" placeholder="TITLE" id="hangoutName">
                  </div>
                  <div class="col-sm-4">
                     <a href="#" class="btn btn-dark" id=searchLists>SEARCH HANGOUT</a>
                  <p></p><br>
                  </div>
     
  </div>
  
<input type="text" id="hangoutCategory" value="<%=hangoutCategory%>" hidden=hidden >
<div class="row justify-content-left align-self-center">
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="ART" value="ART" style="width:100%;height:100%;"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="BEAUTY" value="BEAUTY" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="BOOK" value="BOOK" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="BUSINESS" value="BUSINESS" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="DANCE" value="DANCE" style="width:100%;height:100%"></div>
	
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="EDUCATION" value="EDUCATION" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="FOOD" value="FOOD" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="GAME" value="GAME" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="LANGUAGE" value="LANGUAGE" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="MOVIE" value="MOVIE" style="width:100%;height:100%"></div>

	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="MUSIC" value="MUSIC" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="PET" value="PET" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="PHOTO" value="PHOTO" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="RELIGION" value="RELIGION" style="width:100%;height:100%"></div>
	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="SPORT" value="SPORT" style="width:100%;height:100%"></div>

	<div class="col-sm-2" style="margin:0 0 5px;"><input type="button" class="btn btn-info" id="TECHNICAL" value="TECHNICAL" style="width:100%;height:100%"></div>
</div>
</section>
      <!-- 모임 리스트 -->
   <div class="container">
    <div class="row p-2" style="padding: 20px;">
     
   <!-- SQL 실행 -> 부트스트랩 입력-->
      <div id="list_body"    class="row"></div>
   <!-- SQL 종료-->
       </div></div>
    <hr>
    
    
    <!--  load more -->
    <div class="container">
      <div class="col-sm-12 text-center">
      <div  class="loadmore">
         <a href="#"><button type="button" class="pinkbtn">더 불러오기</button></a>
      </div>
      </div>
      </div>
      
    <div class="clearfix"> </div>
<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>
   <input type="hidden" id="hangoutNum"/>
   
   <!-- SQL을 통한 모임자동생성_ 기본 9개-->
   <script>

      $(document).ready(function() {
    var	area="<%=hangoutArea%>";
    	  
    	  if (area!=null || area!="") {
    		  	 $("#hangoutArea").val(area);
    	  }
    	  
         var category = "<%=hangoutCategory%>";
         if(category!=null || category!=""){
        	 $("#hangoutCategory").val(category);  
        	 $('#'+category).attr("class","btn btn-info active");
        	 cate_check=true;
         }

         $("#hangoutArea").geocomplete().bind("geocode:result",
                 function(event, result) {
        	 var area_search=result.vicinity;
        	 if(area_search!=null || area_search!=""){
        		 area=area_search;
        		 $("#hangoutArea").val(area);
        	 }
                 }).bind("geocode:error", function(event, status) {
           }).bind("geocode:multiple", function(event, results) {
           });
         $("#searchLists").click(function() {
             $("#hangoutArea").trigger("geocode");
        	 var name=$("#hangoutName").val().trim();
             var paramIds = "hangoutName,hangoutCategory,hangoutArea";
             var au = new AjaxUtil("hangout/list", paramIds);
             au.setCallbackSuccess(callbackSql);
             au.send();
             $("#hangoutName").val("");
          });

         var paramIds = "hangoutName,hangoutCategory,hangoutArea";
         var au = new AjaxUtil("hangout/list", paramIds);  
         au.setCallbackSuccess(callbackSql);
         au.send();
         
      });
      function listclick(url) {
         pageMove("hangout?hangoutNum=" + url);
      }
      
      $("input.btn.btn-info").click(function(){
    	  var nowcategory = $(this).val();
          pageMove("hangout/golist?hangoutCategory="+nowcategory);
      });
/**
      $("input.btn.btn-info").click(function(){ //class btn btn-into 눌렀을 시 이벤트 (카테고리 버튼들 클래스)
      var nowcategory = $(this).val();
      var nowcategoryid = $(this).attr("id");
    	  $("#hangoutCategory").val(nowcategory);
    	  
    	  if ($(this).attr("class")=="btn btn-info active"){
    	  $("#nowcategoryid").attr("class","btn btn-info"); // class 변경 (non active)
      }else {
    	  $("#nowcategoryid").attr("class","btn btn-info active");// class 변경 (active)
      }
      })
**/
      
      function callbackSql(result) {
    	 var max;
         var hangoutList = result.list;
         if (hangoutList.length<9){
        	 max =hangoutList.length;
         }else{
        	 max=9;
         }
         var str = "";
         for (var i = 0; i < max; i++) {
            var list = hangoutList[i];
            str += "<div class='mt-4 col-sm-4'>";
            str += "<div class='mt-4 card rm' >";
            str += "<div class='card-header'><h5 onclick='listclick("+list.hangoutNum+")'>" + list.hangoutName+ "</h5><a href='#' class='pull-right'>";
            str += "<i id='like" + list.hangoutNum + "' class='fa fa-heart-o' onclick='like(" + list.hangoutNum + ")'></i></a></div></div>";	
            str += "<img class='card-img-top' src='/resources/images/flower1.jpg' onclick='listclick("+list.hangoutNum+")'>";
            //str += "<div class='card-body cb'>";
            //str += "<div class='card-text'>" + list.hangoutContent + "</div>";
            str += "</div>";
            str += "</div>";
            str += "</div>";
         }
         $("#list_body").html(str);
}

     // $("#searchLists").click(function() {
    //	 var name=$("#hangoutName").val().trim();
     //    var paramIds = "hangoutName,hangoutCategory,hangoutArea";
    //     var au = new AjaxUtil("hangout/list", paramIds);
    //     au.setCallbackSuccess(callbackSql);
    //     au.send();
    	 
  //    });
   </script>
   <!-- SQL 생성 종료 -->
   <!-- button category -->
   
   
   <!--  LOAD MORE (페이지네이션)-->
   <script>
   var overlapCheck=false;
   
   var set =9;
   $('.loadmore').click(function(e) {
      e.preventDefault();
      var paramIds = "hangoutName,hangoutCategory";
      var au = new AjaxUtil("hangout/list", paramIds);  
      au.setCallbackSuccess(callbackSql2);
      au.send();
   });
   
   function callbackSql2(result) {
      var hangoutList = result.list;
      var str = "";
      for (max = (set+9); set < max; set++) {
         var list = hangoutList[set];
         str += "<div class='mt-4 col-sm-4'>";
         str += "<div class='mt-4 card rm' >";
         str += "<div class='card-header'><h5 onclick='listclick("+list.hangoutNum+")'>" + list.hangoutName+ "</h5><a href='#' class='pull-right'>";
         str += "<i id='like" + list.hangoutNum + "' class='fa fa-heart-o' onclick='like(" + list.hangoutNum + ")'></i></a></div></div>";	
         str += "<img class='card-img-top' src='/resources/images/flower1.jpg' onclick='listclick("+list.hangoutNum+")'>";
         //str += "<div class='card-body cb'>";
         //str += "<div class='card-text'>" + list.hangoutContent + "</div>";
         str += "</div>";
         str += "</div>";
         str += "</div>";
      }
      $("#list_body").append(str);
  }

   function like(numhang){
	   if ($("#like"+numhang).attr('class')=='fa fa-heart-o'){
		   $("#like"+numhang).attr('class','fa fa-heart');
	   }else {
		   $("#like"+numhang).attr('class','fa fa-heart-o');	   
	   }
 	   $("#hangoutNum").val(numhang);
	   var paramIds = "userNum";
	   var au = new AjaxUtil("hangout/like/list", paramIds);
	   au.setCallbackSuccess(overlapLikeSql);
        au.send();
    }
   
   function overlapLikeSql(result){
	   var hangNum=$("#hangoutNum").val();
	   var hangLike=result.list;
	   for(var i = 0; i < hangLike.length; i++){
	   var hangLikeNum=hangLike[i];
	   if(hangNum==hangLikeNum.hangoutNum){
		   alert("이미 찜한 리스트입니다.");
		   overlapCheck=true;
		   location.href=${rootPath}"/hangout/golist";
		   return;
	   }
	   }
	   if(overlapCheck!=true){
	  $("#hangoutNum").val(hangNum);
	   var paramIds = "hangoutNum,userNum";
	   var au = new AjaxUtil("hangout/like/insert", paramIds);
        au.send();
	   }
   }
   
   
   </script>



   <script src="<c:url value='/resources/js/scripts_list.js' />"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&libraries=places"></script>
	<script src="<c:url value='/resources/js/jquery.geocomplete.js' />"></script>
	<script src="<c:url value='/resources/js/logger.js' />"></script>
</html>