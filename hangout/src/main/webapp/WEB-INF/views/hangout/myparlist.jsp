<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  CSS -->
<link href="<c:url value='/resources/css/bootstrap.css"'/>"	rel="stylesheet" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"	rel="stylesheet">
<link href="<c:url value='/resources/css/list.css"'/>"   rel="stylesheet" />


  <!-- 검색 bar -->
<section>
	<div class="form-top">
	<div class="container">
		<div class="row justify-content-center align-self-center">
			<div class="col-sm-12 text-center">
				<div class="text-vertical-center">
					<h1>
						내가 참가중인 리스트
					</h1>
					<p>
				</div>
			</div> 
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">
				<input type="text" class="form-control btn btn-warning"
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


  <div class="row justify-content-center align-self-center">
		<div class="col-sm-3">
	
		<a href="<c:url value='/hangout/partimylist?creator=${param.creator}'/>"
							class="" id="participateLists">
				<div class="card text-white bg-primary">
                    <div class="card-block">
                        <h3 class="card-title text-center">COMING.<p>HANGOUT.</h3>
                        
                    </div>
                     <div class="card-footer">
                       <span class="float-right">
                       <h5>
                       <div id="comingNum"></div></h5>
                       </span>
                    </div>
                </div></a>
		</div>
		<div class="col-sm-3">
		<a href="<c:url value='/hangout/mylikelist?creator=${param.creator}'/>"
							class="" id="likeList">
				<div class="card text-white bg-primary">
                    <div class="card-block">
                        <h3 class="card-title text-center"> LIKED.<p>HANGOUT.</h3>
                        
                    </div>
                    <div class="card-footer">
                         <span class="float-right">
                       <h5>
                       <div id="likedNum"></div></h5>
                       </span>
                    </div>
                </div></a>
		</div>
      	<div class="col-sm-3">
      		<a href=""  id="created" onclick="gomylist()">
				<div class="card text-white bg-primary">
                    <div class="card-block">
                        <h3 class="card-title text-center"> CREATED.<p>HANGOUT.</h3>
                        
                    </div>
                    <div class="card-footer">
                        <span class="float-right">
                        <h5>
                        <div id="createdNum"></div></h5>
                        </span>
                    </div>
                </div>
                
                </a>
		</div>
 
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






<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>
<input type="hidden" id="hangoutCreator" value="${param.creator}"/>
<script> 
    $(document).ready(function(){
       var comingNum;
       var paramIds="hangoutName,userNum";
       var au = new AjaxUtil("hangout/takeuser/participate",paramIds);
       au.setCallbackSuccess(participateSql);
       au.send(); 
       
       var createdNum;
       var paramCreated="hangoutName,hangoutCreator";
       var auCreated = new AjaxUtil("hangout/list",paramCreated);
       auCreated.setCallbackSuccess(callbackSql);
       auCreated.send();
       
       var paramCreated="hangoutName,userNum";
       var auCreated = new AjaxUtil("hangout/like/list",paramCreated);
       auCreated.setCallbackSuccess(likeListSql);
       auCreated.send();
    });
    
   function participateSql(result){
      var participateList=result.list;
      var str = "";
      for (var i = 0, max = participateList.length; i < max; i++) {
         var list = participateList[i]; 
         str += "<div class='mt-4 col-sm-4'>";
         str += "<div class='mt-4 card rm' onclick='listclick("   + list.hangoutNum + ")'>";
         str += "<h5 class='card-header'>" + list.hangoutName + "</h5>";
         str += "<img class='card-img-top' src='../resources/images/flower1.jpg'>";
         /*         str += "<div class='card-body cb'>";
         str += "<div class='card-text'>" + list.hangoutContent + "</div>"; */
         str += "</div>";
         str += "</div>";
         str += "</div>";
         }
      comingNum = participateList.length;
      $("#list_body").html(str);
      $("#comingNum").html(comingNum);
      }
   
   function callbackSql(result){
 	     var hangoutList=result.list;
	    createdNum =  hangoutList.length;
	      $("#createdNum").html(createdNum);
	      }
   
   function likeListSql(result){
	     var likeList=result.list;
	    likedNum =  likeList.length;
	      $("#likedNum").html(likedNum);
	      }
   
   
   
    $("#searchLists").click(function(){
       var hangoutName= $("#hangoutName").val().trim();
      if(hangoutName==""){
         alert("모임이름을 입력해주세요");
         return
      }
      var paramIds="hangoutName,userNum";
       var au = new AjaxUtil("hangout/takeuser/participate",paramIds);
       au.setCallbackSuccess(participateSql);
        au.send();
    });
    
    function listclick(url){
    	pageMove("hangout?hangoutNum="+url);
        }   
    
    function gomylist(){
    	var usernum="<%=user.getUserNum()%>";
    	$("#created").attr("href", "${rootPath}/hangout/mylist?creator=" + usernum);
    }

    </script>

<!-- Javascript --> 
<script src="/resources/js/scripts_list.js"></script>
</html>