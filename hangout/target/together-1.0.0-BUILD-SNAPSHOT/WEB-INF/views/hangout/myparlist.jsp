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
<div class="row justify-content-center align-self-center">
	<div class="span6" style="float: none; margin: 0 auto;">
		<p></p>
		<div class="text-vertical-center">
			<h1>내가 참가중인 모임</h1>

			<p></p>
			<input type="text" class="form-control"	placeholder="모임을 검색 해보세요." id="hangoutName">
			<p></p>
			<a href="#" class="btn btn-lg btn-dark" type="button" id="searchLists">모임 찾기</a>
			<a href="#" onclick="gomylist()" class="btn btn-lg btn-dark" type="button" id="participateLists">내가 만든 모임</a>
			<p></p>
		</div>
	</div>
</div>

<!-- 모임 리스트 -->
<div id="list_body" class="row justify-content-center align-self-center"></div>

<div class="btn-group" role="group" aria-label="...">
  <button type="button" class="btn btn-default">Left</button>
  <button type="button" class="btn btn-default">Middle</button>
  <button type="button" class="btn btn-default">Right</button>
</div>
<input type="hidden" id="hangoutCreator" value="${param.creator}"/>
<script> 
    $(document).ready(function(){
       var paramIds="hangoutName,hangoutCreator";
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
      var paramIds="hangoutName,hangoutCreator";
       var au = new AjaxUtil("hangout/list",paramIds);
       au.setCallbackSuccess(callbackSql);
        au.send();
    });
    
    function gomylist(){
    	var usernum="<%=user.getUserNum()%>";
    	$("#participateLists").attr("href", "${rootPath}/hangout/mylist?creator=" + usernum);
    }

    </script>

<!-- Javascript --> 
<script src="/resources/assets/js/retina-1.1.0.min.js"></script>
<script src="/resources/js/jquery-1.12.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.backstretch.min.js"></script>
<script src="/resources/js/scripts_list.js"></script>
</html>