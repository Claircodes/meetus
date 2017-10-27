<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<br />
<br />
<br />
<br />
<br />
<br />
<div class="container">
	<div class="row">

		<div id="profile"
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">

		</div>
	</div>
</div>

</div>
</div>
</div>
</div>

<input type="hidden" id="userId" value="<%=user.getUserId()%>"/>
<input type="hidden" id="userNum" value="<%=user.getUserNum()%>"/>
<script>
$(document).ready(function(){
    var paramIds="userNum,userId";
    var au = new AjaxUtil("user/profile",paramIds);
    au.setCallbackSuccess(callbackSql);
    au.send(); 
 });
function callbackSql(result){
    var profileList=result.list;
    var str = "";
	str+="<div class='panel panel-info'>";
	str+="<div class='panel-heading'>";
	str+="<h3 class='panel-title'>" + profileList.userId + " 님 회원 정보  </h3>";
	str+="</div>";
	str+="<br></br>";
	str+="<div class='panel-body'>";
	str+="<div class='row'>";
	str+="<div class='col-md-3 col-lg-3 ' align='center'>";
	str+="<img alt='User Pic'";
	str+="src='http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png'";
	str+="class='img-circle img-responsive'>";
	str+="</div>";
    str+="<div class=' col-md-9 col-lg-9 '>";
	str+="<table class='table table-user-information'>";
	str+="<tbody>";
	str+="<tr>";
	str+="<td>ID</td>";
	str+="<td>" + profileList.userId + "</td>";
	str+="</tr>";
	str+="<tr>";
	str+="<td>Name</td>";
	str+="<td>" + profileList.userName + "</td>";
	str+="</tr>";
	str+="<tr>";
	str+="<td>Password</td>";
	str+="<td><input type='password' value='" + profileList.userPwd +"' style='border:none;' readonly></td>";
	str+="</tr>";
	str+="<tr>";
	str+="<tr>";
	str+="<td>Gender</td>";
	str+="<td>" + profileList.userGender + "</td>";
	str+="</tr>";
	str+="<tr>";
	str+="<td>Country</td>";
	str+="<td>" + profileList.userCountry + "</td>";
	str+="</tr>";
	str+="<tr>";
	str+="<td>Email</td>";
	str+="<td><a href='mailto:" + profileList.userEmail + "'>" + profileList.userEmail + "</a></td>";
	str+="</tr>";
	str+="<td>Phone Number</td>";
	str+="<td>" + profileList.userPhone + "</td>";
	str+="</tr>";

	str+="</tbody>";
	str+="</table>";
	str+="<a href='<c:url value='/user/update'/>' class='btn btn-primary'>수정하기</a>  ";
	str+="<a href='${rootPath}/' class='btn btn-primary'>메인 가기</a> ";
	str+="<a href='${rootPath}/hangout/mylist?creator=" + profileList.userId + "' class='btn btn-primary'>나의 모임</a>";
	 $("#profile").html(str);
       }
    
</script>