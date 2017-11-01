<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  CSS -->
<link href="<c:url value='/resources/css/bootstrap.css"'/>"	rel="stylesheet" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"	rel="stylesheet">
<link href="<c:url value='/resources/css/list.css"'/>"   rel="stylesheet" />
<br><br><br><br>

 <!-- 검색 bar -->
<section>
	<div class="container">
		<div class="row justify-content-center align-self-center">
			<div class="col-sm-12 text-center">
				<div class="text-vertical-center">
					<h1>
						내가 참가중인 모임 리스트 
						<a href="<c:url value='/hangout/myholist'/>" class="btn btn-dark" id="participateLists">내가 만든 모임</a>
					</h1>
					<p>
				</div>
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">
				<input type="text" class="form-control btn btn-primary"
					placeholder="서울특별시" id="geocomplete">
			</div>
			<div class="col-sm-4">
				<input type="text" class="form-control" placeholder="모임을 검색 해보세요."
					id="hangoutName">
			</div>
			<div class="col-sm-4">
				<a href="#" class="btn btn-dark" id="searchLists">SEARCH
					HANGOUT</a>
				<p></p>
				<br>
			</div>
		</div>
	</div>
</section>



<!-- 모임 리스트 시작-->
   <div class="container">
    <div class="row p-2" style="padding: 20px;">
   <!-- SQL 실행 -> 부트스트랩 입력-->
      <div id="list_body"    class="row"></div>
   <!-- SQL 종료-->
       </div></div>
    <hr>

<!-- 모임 리스트 종료 -->






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
         str += "<div class='mt-4 col-sm-4'>";
         str += "<div class='mt-4 card rm' onclick='listclick("   + list.hangoutNum + ")'>";
         str += "<h5 class='card-header'>" + list.hangoutName + "</h5>";
         str += "<img class='card-img-top' src='https://upload.wikimedia.org/wikipedia/ko/8/88/%EC%8A%A4%ED%8F%B0%EC%A7%80%EB%B0%A5_%EC%8A%A4%ED%80%98%EC%96%B4%ED%8C%AC%EC%B8%A0_%EB%93%B1%EC%9E%A5%EC%9D%B8%EB%AC%BC.png' alt='photo'>";
         str += "<div class='card-body cb'>";
         str += "<div class='card-text'>" + list.hangoutContent + "</div>";
         str += "</div>";
         str += "</div>";
         str += "</div>";
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
<script src="/resources/js/jquery-1.12.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.backstretch.min.js"></script>
<script src="/resources/js/scripts_list.js"></script>
</html>