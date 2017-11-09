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
					    <form method='post' enctype='multipart/form-data' action='imgup.jsp' >
					    <input type='file' name='userPicture' class='btn-link-2'></form>
   							<input id='userPicture' type='submit' value='upload' class='btn-link-2'>
				</div>

				<div class="form-top">
					<div id="body"></div>
					    <a onclick='delete_user()'class='btn-dark' type='button' id='delete' style='cursor:pointer;'>탈퇴하기</a>
					    <a onclick='update()' class='btn-link-1 pull-right' type='button' id='update' style='cursor:pointer;'>수정완료</a> 
						<a href='${rootPath}/user/profile' class='btn-link-2 pull-right'>수정 취소</a>
				
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
	str += "<div class='panel panel-info'>";
	str += "<div class='panel-heading'><div class='col-sm-12 text'>";
	str += "<br></br>";
	str += "<div class='panel-body'>";
	str += "<div class='row'>";
	str += "<div class='col-sm-1' align='center'>";
	str += "</div>";
	str += "<div class='col-sm-3'>";
	str += "<table class='table table-user-information'>";
	str += "<tbody>";
     str+="<tr>";
    str+="<td>ID</td>";
    str += "<td>" + profileList.userId + "</td>";
    str+="</tr>";
     str+="<tr>";
    str+="<td>Name</td>";
    str+="<td><input id='userName' type='text' value='" + profileList.userName + "' style='border:none;'></td>";
   str+="</tr>";
    str+="<tr>";
    str+="<td>Password</td>";
    str+="<td><input id='userPwd' type='password' value='" + profileList.userPwd + "' style='border:none;'></td>";
    str+="</tr>";
    str+="<tr>";
   str+="<td>Password Check</td>";
   str+="<td><input id='userPwd2' type='password' value='" + profileList.userPwd + "' style='border:none;'>";
   str+="<a onclick='overlapBtn()' class='pull-right' type='text' id='overlapBtn'>변경하기</a></td>";
    str+="</tr>";
    str+="<tr>";
    str+="<td>Gender</td>";
    str += "<td>" + profileList.userGender + "</td>";
    str+="</tr>";
    str+="<tr>";
    str+="<td>Country</td>";
    str += "<td>" + profileList.userCountry + "</td>";
    str+="</tr>";
     str+="<tr>";
    str+="<td>Email</td>";
    str+="<td><input id='userEmail' type='text' value='" + profileList.userEmail + "' style='border:none;'></td>";
    str+="</tr>";
    str+="<tr>";
    str+="<td>Phone Number</td>";
     str+="<td><input id='userPhone' type='text' value='" + profileList.userPhone +"' style='border:none;'>";
    str+="</td>";
    str+="</tr>";
     str+="</tbody></div>";
    str+="</table></div></div>";
    str+="</div>";
    str+="</div>";
    str+="</div>";

     str+="</div>";
     $("#body").html(str);
    }
    

var pwdCheck = false; //확인버튼 클릭 여부 확인, 기본값 false

function update(){ //수정 버튼 클릭시 
	if(pwdCheck==true){  //비밀번호 확인 버튼 클릭 했을시, 변경된 모든 파라미터를 서버에 전송
    var paramIds = "userId,userName,userPwd,userGender,userCountry,userEmail,userPhone";
    var au = new AjaxUtil("user/update",paramIds);
    au.send();
	}
	else{  //비밀번호 확인 버튼 클릭 안했을시 2가지 경우(비밀번호를 바꿀경우, 안바꿀경우)
		 var pwd1=$("#userPwd").val();
		 var pwd2=$("#userPwd2").val();
		if(pwdCheck==false && pwd1==<%=user.getUserPwd()%> && pwd2==<%=user.getUserPwd()%>){  //비밀번호를 안바꿀 경우
		$("#userPwd").val(<%=user.getUserPwd()%>);   ////비밀번호를 안바꿀 경우에 기존의 비밀번호 값을 넣는다
		var paramIds = "userId,userName,userPwd,userGender,userCountry,userEmail,userPhone";
	    var au = new AjaxUtil("user/update",paramIds);
	    au.send();
		}
		else if(pwdCheck==false && pwd1!=<%=user.getUserPwd()%> && pwd2!=<%=user.getUserPwd()%>){ //비밀번호를 바꾸는데 확인 버튼 안눌렀을때
			alert("비밀번호를 변경하시려면 확인 버튼을 눌러주세요.");
		}
	}
 }
 
 function overlapBtn(){  //비밀번호 확인버튼 누를시
	 var pwd1=$("#userPwd").val();
	 var pwd2=$("#userPwd2").val();
	 if(pwd1=="" || pwd2==""){ //두개의 비밀번호란중에 하나라도 입력 안했을때
		 if(pwd1=="" && pwd2!=""){ // pwd1이 널일때
			 alert("비밀번호를 입력해주세요.");
		 document.getElementById("userPwd").focus();
		 }else if(pwd1!="" && pwd2==""){ //pwd2가 널일때
			 alert("비밀번호 확인란에 비밀번호를 입력해주세요.");
			 document.getElementById("userPwd2").focus();
		 }else if(pwd1=="" && pwd2==""){ // 둘 다 널일때
			 alert("비밀번호를 입력해주세요.");
			 document.getElementById("userPwd").focus();
		 }
	 }
	 if(pwd1==pwd2){ //비밀번호가 서로 같다면 서버 전송
	 var au=new AjaxUtil("user/overlapPwd","userId,userPwd");
	 au.setCallbackSuccess(overlapPwdCheck);
	 au.send();
	 }else if(pwd1!=pwd2 && (pwd1!="" && pwd2!="")){ //둘다 널값이 아닌데 틀렸을시
		 alert("비밀번호가 일치하지 않습니다. \n" + "다시 입력해주시기 바랍니다.");
		 document.getElementById("userPwd").focus();
	 }
 }
 
 function overlapPwdCheck(result){
	 var pwd1=$("#userPwd").val();
	 var pwd2=$("#userPwd2").val();
	 if(result[0].userPwd==pwd1){ //기존에 비번과 똑같은걸로 변경할 시
		 alert("기존의 비밀번호를 입력할 수 없습니다. \n" + "다른 비밀번호를 입력해주세요.");
		 document.getElementById("userPwd").focus();
	 }else if(result[0].userPwd!=pwd1 &&  (pwd1!="" && pwd2!="")){ //기존에 비번과 다를시
	 alert("사용할 수 있는 비밀번호입니다.");
	 pwdCheck=true;  //비밀번호 확인 클릭 true 반환
	 }
 }
 
 
function delete_user(){
	if(confirm("정말 탈퇴하시겠습니까??")==true){
	    var au = new AjaxUtil("user/delete","userId");
	    au.send();
	}else{
		return;
	}
} 
</script>

	<!-- Javascript -->
        <script src="<c:url value='/resources/js/scripts-userprofile.js' />"></script>