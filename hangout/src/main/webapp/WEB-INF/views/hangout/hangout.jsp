<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link href="/resources/css/hangout.css" rel="stylesheet">
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

		<!-- Blog Entries Column -->
		<div class="col-md-8">



			<!-- Blog Post -->
			<div class="card mb-4">
			<div id="hcreator" style="display:none;">${ListInfo.hangoutCreator}</div>
				<h1 class="my-4">${ListInfo.hangoutName}</h1>
				<img class="card-img-top"
					src="https://pbs.twimg.com/media/Cq5tz18VUAAFT5q.jpg"
					alt="Card image cap">

				<div class="card-body">
					<p class="card-text">${ListInfo}<br>
						${ListInfo.hangoutCategory}
					</p>


				</div>
				<div class="card-footer text-muted">
					모임 기간 : ${ListInfo.hangoutOpenDate}- ${ListInfo.hangoutCloseDate}<br>
					모임 날짜 : ${ListInfo.hangoutDate}
				</div>
			</div>


<div id="hangout_btn">

</div>

		</div>

		<div class="col-md-4">


			<!-- Side Widget -->
			<div class="card my-4">
				<div class="card">
					<div class="card-header">
						<h5 class="cards-header">Tag</h5>
					</div>
					<div class="card-block">
						<div class="desc">
							<h6>#${ListInfo.hangoutTag}</h6>
						</div>

					</div>
				</div>
			</div>


			<div class="card my-4">
				<h5 class="card-header">ID : ${ListInfo.userId}</h5>
				<div col-lg-3 col-sm-6>
					<div class="card hovercard">
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

				</div>
			</div>

			<!--         
          <div class="card my-4">
              <h5 class="card-header">
                  FaceBook 가져오기
              </h5>
               <div class="fb-page" data-href="https://www.facebook.com/Devwonwon-1439494016140368/" data-tabs="timeline" data-width="900" data-height="600" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Devwonwon-1439494016140368/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Devwonwon-1439494016140368/">Devwonwon</a></blockquote></div>
          </div>
-->
			<!-- Search Widget 
				<div class="card my-4">
					<h5 class="card-header">검색하기</h5>
					<div class="card-body">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="검색하실 내용을 입력하세요."> <span
								class="input-group-btn">
								<button class="btn btn-secondary" type="button" id="searchContent">Search!</button>
							</span>
						</div>
					</div>
				</div>
-->

			<!-- Search Widget -->
			<div class="card my-4">
				<h5 class="card-header">현재 참가자 수</h5>
				<div class="card-body">
					<div class="input-group">
						<input type="text" id="participatenum" style="border:none"><button class="btn btn-secondary" type="button" id="check" onclick="check()">명단</button>
						<span class="input-group-btn"> </span>
					</div>
				</div>
			</div>

			<!-- Categories Widget -->
			<div class="card my-4">
				<h5 class="card-header">카테고리</h5>
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
<!-- Footer -->
<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Designe:© Phantuan -
			Framework: bootstrap 4</p>
	</div>
	<!-- /.container -->
</footer>

<input type="hidden" id="hangoutNum" value="${param.hangoutNum}"/>
<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>

<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>
<script type="text/javascript">
var hoUserNum = <%=user.getUserNum()%>;
$(".btn btn-secondary").click(function(){
	pageMove("hangout?hangoutNum=");
});
$(document).ready(function() {
	if (hoUserNum==$("#hcreator").text()){
		$("#hangout_btn").html('<center><button class="btn btn-secondary" type="button" id="update">수정하기</button></center>');
	}else{
		$("#hangout_btn").html('<center><button class="btn btn-secondary" type="button" id="participate" onclick="participate()">참가하기</button></center>');
	}
	
	 var paramIds = "hangoutNum";
     var au = new AjaxUtil("hangout/takeuser/count", paramIds);  
     au.setCallbackSuccess(callbackSql);
     au.send();
});

function callbackSql(result){
	var user_cnt=result.list;
	$("#participatenum").val(user_cnt.count + "명");
}

function participate(){
	if(<%=login%>==true){
    var paramIds="hangoutNum,userNum";
    var au = new AjaxUtil("hangout/takeuser/insert",paramIds);
    au.send(); 
	}else{
		alert("로그인을 해주세요.");
	}
}

</script>
</body>

</html>
