<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!--  CSS -->
    <link href="<c:url value='/resources/css/bootstrap.css"'/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/album.css"/>" rel="stylesheet">

    <p></p><p></p><br></br><p></p><p></p>
       <div style="background: #fff; background : rgba(0, 0, 0, 0.7); margin-left: 50px ; margin-right: 50px">
   
      <!-- 검색 bar -->
         <div class="row justify-content-center align-self-center">
            <div class="span6" style="float: none; margin: 0 auto;">
               <p></p>
               <div class="text-vertical-center">
                  <h1>Search more HANG OUT</h1>
               
               <p></p>
               <input type="text" class="form-control"
                  placeholder="원하시는 모임의 이름을 검색 해보세요." id="hangoutName">
                  <p></p>
                   <a href="#" class="btn btn-lg btn-dark" type="button" id="searchLists">모임 알아보기</a>
               <p></p>
            </div>
            </div>
         </div>


<!-- 모임 리스트 -->
	<div class="container">
		<div class="row">
			<div id="list_body">
			</div>
		</div>
	</div>
	   </div>
    <script>
    $(document).ready(function(){
       var paramIds="hangoutName";
       var au = new AjaxUtil("select/list",paramIds);
       au.setCallbackSuccess(callbackSql);
        au.send();
    });
   function callbackSql(result){
      var hangoutList=result.list;
      var str = "";
      for (var i = 0, max = hangoutList.length; i < max; i++) {
         var list = hangoutList[i]; 
         str += "<div class='card'>";						
         str += "<img src=\"<c:url value='/resources/images/testimg.jpg'/>\" >";											
         str += "<h4>"+list.hangoutName+"</h4>";							
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
      var paramIds="hangoutName";
       var au = new AjaxUtil("select/list",paramIds);
        au.send();
    });
    </script>
    
          <!-- Javascript -->
        <script src="/resources/assets/js/retina-1.1.0.min.js"></script>
        <script src="/resources/js/jquery-1.12.1.min.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>
        <script src="/resources/js/jquery.backstretch.min.js"></script>
        <script src="/resources/js/scripts_list.js"></script>
</html>