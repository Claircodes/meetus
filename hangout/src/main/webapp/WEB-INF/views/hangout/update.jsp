<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style-hangout.css'/>">

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
					<h1>
						<div id="hangout_btn"></div>
					</h1>
					google map search
					<div class="col-sm-5 text-right">
                  <input type="text-center" class="form-control btn" placeholder="주소를 입력해주세요." id="geocomplete" style="width: 610px; height: 50px">
          </div>
				</div>
<br>
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
								<pre class="prettyprint linenums">$('.textarea').wysihtml5();</pre>
								</p>
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

$(".btn btn-secondary").click(function(){
   pageMove("hangout?hangoutNum=");
});
$(document).ready(function() {
/*    if (hoUserNum==$("#hcreator").text()){
      $("#hangout_btn").html('${ListInfo.hangoutName}' +'<button class="btn btn-secondary  pull-right" type="button" id="update" onclick="goupdate()">수정하기</button>');
   }else{
      $("#hangout_btn").html('${ListInfo.hangoutName}' +'<button class="btn btn-secondary pull-right" type="button" id="participate" onclick="participate()">참가하기</button>');
   }
 */   
    var paramIds = "hangoutNum";
     var au = new AjaxUtil("hangout/takeuser/list", paramIds);  
     au.setCallbackSuccess(callbackSql);
     au.send();
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

	<!-- Javascript -->
        <script src="<c:url value='/resources/js/jquery-1.12.1.min.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
        <script src="<c:url value='/resources/js/scripts-hangout.js' />"></script>
        <script src="<c:url value='/resources/js/editorform.js' />"></script>
        

</html>