<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  CSS -->
<link href="<c:url value='/resources/css/bootstrap.css"'/>"	rel="stylesheet" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"	rel="stylesheet">
<link href="<c:url value="/resources/css/album.css"/>" rel="stylesheet">
<br><br><br><br>

<!-- 검색 bar -->
<div class="container">
<br><p><p></p></br><br><p><p></p></br><br>

	<div class="row justify-content-center align-self-center">
		<div class="col-sm-12 text-center">
			<strong><h1>HANGOUT 모임 리스트</h1></strong>
			<p>
		</div>
		<div class="col-sm-1"></div>
		<div class="col-sm-2 text-right">
			<input type="text" class="form-control btn btn-primary"
				placeholder="서울특별시" id="geocomplete">
		</div>
		<div class="col-sm-5">
			<input type="text" class="form-control btn" placeholder="TITLE"
				id="hangoutName">
		</div>
		<div class="col-sm-4">
			<a href="#" class="btn btn-dark" id=searchLists>SEARCH HANGOUT</a>
		<p></p><br>
		</div>
	
	</div>
</div>


<!-- 모임 리스트 -->
	<div class="col-lg-10 mx-auto">
		<div id="list_body"
			class="row justify-content-center align-self-center"></div>
	</div>



<div class="btn-group" role="group" aria-label="...">
  <button type="button" class="btn btn-default">Left</button>
  <button type="button" class="btn btn-default">Middle</button>
  <button type="button" class="btn btn-default">Right</button>
</div>
<input type="hidden" id="hangoutCategory" value="${param.category}"/>
<script> 
    $(document).ready(function(){
       var paramIds="hangoutName,hangoutCategory";
       var au = new AjaxUtil("hangout/list",paramIds);
       au.setCallbackSuccess(callbackSql);
       au.send(); 
    });
    function listclick(url){
    	pageMove("hangout?hangoutNum="+url);
        }   
    
   function callbackSql(result){
      var hangoutList=result.list;
      var str = "";
      for (var i = 0, max = hangoutList.length; i < max; i++) {
         var list = hangoutList[i]; 
         str += "<div class='col-sm-3'><div class='card' onclick='listclick("+list.hangoutNum+")' >";						
         str += "<img src=\"<c:url value='http://img.insight.co.kr/static/2017/06/23/700/u0bn4swj5g5dp29xzp74.jpg'/>\" >";
         str += "<h4>"+list.hangoutName+"</h4>";
         str += "</div></div>";
         }
      $("#list_body").html(str);
      }
    $("#searchLists").click(function(){
       var hangoutName= $("#hangoutName").val().trim();
      if(hangoutName==""){
         alert("모임이름을 입력해주세요");
         return
      }
      var paramIds="hangoutName,hangoutCategory";
       var au = new AjaxUtil("hangout/list",paramIds);
       au.setCallbackSuccess(callbackSql);
        au.send();
    });

    </script>

<!-- Javascript --> 
<script src="<c:url value='/resources/js/scripts_list.js' />"></script>
<script src="<c:url value='/resources/js/jquery-1.12.1.min.js'/>"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
</html>