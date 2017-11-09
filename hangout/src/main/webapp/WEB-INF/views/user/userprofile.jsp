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
						<!-- DB 이미지 불러오기 
						<div id="callUserImg"></div>
						-->
						<img src="/resources/images/web-test.jpg" >
				</div>

				<!-- DB 유저정보 SQL  -->
				<div class="form-top">
					<div id="profile"> </div>
				
		<a href='<c:url value='/user/update'/>' class="btn-link-1 pull-right">수정하기</a>
						<a href='${rootPath}/hangout/mylist?creator="+ profileList.userNum + "' class="btn-link-2 pull-right">나의 모임</a> 
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
		$("#profile").html(str);
	}
</script>

	<!-- Javascript -->
 <script src="<c:url value='/resources/js/scripts-userprofile.js' />"></script>