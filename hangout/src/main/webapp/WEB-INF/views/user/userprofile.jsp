<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style-user.css'/>">


<div class="top-content">
	<div class="inner-bg">
		<div class="container">
			<div class="row justify-content-center align-self-center">
				<div class="col-sm-8 col-sm-offset-2 text"">
					<br>
					<h1 class="form-box">나의 프로필</h1>
					<br>
				</div>
				<div class="col-sm-5 ebook">
					<img src="/resources/images/web-test.jpg" alt="사진사진">
				</div>

				<div class="form-top">
					<div id="profile">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<input type="hidden" id="userId" value="<%=user.getUserId()%>"/>
<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>
<script>
	$(document).ready(function() {
		var paramIds = "userNum,userId";
		var au = new AjaxUtil("user/profile", paramIds);
		au.setCallbackSuccess(callbackSql);
		au.send();
	});
	function callbackSql(result) {
		var profileList = result.list;
		var str = "";
		str += "<div class='panel panel-info'>";
		str += "<div class='panel-heading'><div class='col-sm-12 text'>";
		str += "</div>";
		str += "<br></br>";
		str += "<div class='panel-body'>";
		str += "<div class='row'>";
		str += "<div class='col-sm-1 ' align='center'>";
		/* str+="<img alt='User Pic'";
	str+="src='http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png'";
	str+="class='img-circle img-responsive'>"; */
		str += "</div>";
		str += "<div class=' col-sm-4 '>";
		str += "<table class='table table-user-information'>";
		str += "<tbody>";
		str += "<tr>";
		str += "<td>ID</td>";
		str += "<td>" + profileList.userId + "</td>";
		str += "</tr>";
		str += "<tr>";
		str += "<td>Name</td>";
		str += "<td>" + profileList.userName + "</td>";
		str += "</tr>";
		str += "<tr>";
		str += "<td>Password</td>";
		str += "<td><input type='password' value='" + profileList.userPwd +"' style='border:none;' readonly></td>";
		str += "</tr>";
		str += "<tr>";
		str += "<tr>";
		str += "<td>Gender</td>";
		str += "<td>" + profileList.userGender + "</td>";
		str += "</tr>";
		str += "<tr>";
		str += "<td>Country</td>";
		str += "<td>" + profileList.userCountry + "</td>";
		str += "</tr>";
		str += "<tr>";
		str += "<td>Email</td>";
		str += "<td><a href='mailto:" + profileList.userEmail + "'>"
				+ profileList.userEmail + "</a></td>";
		str += "</tr>";
		str += "<td>Phone Number</td>";
		str += "<td>" + profileList.userPhone + "</td>";
		str += "</tr>";

		str += "</tbody></div>";
		str += "</table></div></div>";
		   str+="<a href='${rootPath}/' class='btn-link-2'>메인 가기</a> ";
		str += "<a href='${rootPath}/hangout/mylist?creator="
				+ profileList.userNum + "' class='btn-link-2'>나의 모임</a>";

				str += "<a href='<c:url value='/user/update'/>' class='btn-link-1'>수정하기</a>  ";
		$("#profile").html(str);
	}
</script>

	<!-- Javascript -->
        <script src="<c:url value='/resources/js/jquery-1.12.1.min.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
        <script src="<c:url value='/resources/js/scripts-userprofile.js' />"></script>