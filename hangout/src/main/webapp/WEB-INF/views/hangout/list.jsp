<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<br><br><br><br>
<%
String hangoutParam = "";
String hangoutValue = "";
if (request.getParameter("hop")!=null){
   hangoutParam = request.getParameter("hop");
}
if (request.getParameter("hov")!=null){
   hangoutValue = request.getParameter("hov");
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
      <div class="col-sm-2"></div>
                  <div class="col-sm-2 text-right">
                     <input type="text" class="form-control btn btn-primary"
                        placeholder="서울특별시" id="geocomplete">
                  </div>
                  <div class="col-sm-4">
                     <input type="text" class="form-control btn" placeholder="TITLE" value="<%=hangoutValue%>" id="<%=hangoutParam%>">
                  </div>
                  <div class="col-sm-4">
                     <a href="#" class="btn btn-dark" id=searchLists>SEARCH HANGOUT</a>
                  <p></p><br>
                  </div>
      </div>
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
<input type="hidden" id="hangoutCategory" value="${param.category}" />
   
   
   <!-- SQL을 통한 모임자동생성_ 기본 9개-->
   <script>
      $(document).ready(function() {
         var paramIds = "hangoutCategory";
         var au = new AjaxUtil("hangout/list", paramIds);  
         au.setCallbackSuccess(callbackSql);
         au.send();
      });
      function listclick(url) {
         pageMove("hangout?hangoutNum=" + url);
      }
   
      function callbackSql(result) {
         var hangoutList = result.list;
         var str = "";
         for (var i = 0, max = 9; i < max; i++) {
            var list = hangoutList[i];
            str += "<div class='mt-4 col-sm-4'>";
            str += "<div class='mt-4 card rm' onclick='listclick("   + list.hangoutNum + ")'>";
            str += "<h5 class='card-header'>" + list.hangoutName + "<a href='#' class='pull-right'><i class='fa fa-heart-o'></i></a></h5> ";
            str += "<img class='card-img-top' src='https://upload.wikimedia.org/wikipedia/ko/8/88/%EC%8A%A4%ED%8F%B0%EC%A7%80%EB%B0%A5_%EC%8A%A4%ED%80%98%EC%96%B4%ED%8C%AC%EC%B8%A0_%EB%93%B1%EC%9E%A5%EC%9D%B8%EB%AC%BC.png' alt='photo'>";
            str += "<div class='card-body cb'>";
            str += "<div class='card-text'>" + list.hangoutContent + "</div>";
            str += "</div>";
            str += "</div>";
            str += "</div>";
         }
         $("#list_body").html(str);
      }
      $("#searchLists").click(function() {
         var hangoutName = $("#hangoutName").val().trim();
         if (hangoutName == "") {
            alert("모임이름을 입력해주세요");
            return
   
         }
         var paramIds = "hangoutName,hangoutCategory";
         var au = new AjaxUtil("hangout/list", paramIds);
         au.setCallbackSuccess(callbackSql);
         au.send();
      });
   </script>
   <!-- SQL 생성 종료 -->
   
   
   
   <!--  LOAD MORE (페이지네이션)-->
   <script>
   var set =9;
   $('.loadmore').click(function(e) {
      e.preventDefault();
      var paramIds = "hangoutCategory";
      var au = new AjaxUtil("hangout/list", paramIds);  
      au.setCallbackSuccess(callbackSql2);
      au.send();
   });
   
   function callbackSql2(result) {
      var hangoutList = result.list;
      var str = "";
      for (max = (set+9); set < max; set++) {
         var list = hangoutList[set];
         str += "<div class='mt-4 col-sm-4 morebox'>";
         str += "<div class='mt-4 card rm' onclick='listclick("   + list.hangoutNum + ")'>";
         str += "<h5 class='card-header'>" + list.hangoutName + "<a href='#' class='pull-right'><i class='fa fa-heart-o'></i></a></h5> ";
         str += "<img class='card-img-top' src='https://upload.wikimedia.org/wikipedia/ko/8/88/%EC%8A%A4%ED%8F%B0%EC%A7%80%EB%B0%A5_%EC%8A%A4%ED%80%98%EC%96%B4%ED%8C%AC%EC%B8%A0_%EB%93%B1%EC%9E%A5%EC%9D%B8%EB%AC%BC.png' alt='photo'>";
         str += "<div class='card-body cb'>";
         str += "<div class='card-text'>" + list.hangoutContent + "</div>";
         str += "</div>";
         str += "</div>";
         str += "</div>";
      }
      $("#list_body").append(str);
   }
   </script>



   <script src="<c:url value='/resources/js/scripts_list.js' />"></script>
   <script src="<c:url value='/resources/js/jquery-1.12.1.min.js'/>"></script>
   <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
   <script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
</html>