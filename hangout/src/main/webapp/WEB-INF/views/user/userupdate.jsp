<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<br/><br/><br/><br/><br/><br/>
<div class="container">

	

		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title"><%=user.getUserId()%>님 회원 정보 수정</h3>
				</div>
				<br></br>
				<div class="panel-body">
					<div class="row">
						<div class=" col-md-9 col-lg-9 ">
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>ID</td>
										<td><input  id="userId" type="text" value="<%=user.getUserId()%>" style="border:none;" readonly></td>
									</tr>
									<tr>
										<td>Name</td>
										<td><input id="userName" type="text" value="<%=user.getUserName()%>" style="border:none;"></td>
									</tr>
									<tr>
										<td>Password</td>
										<td><input id="userPwd" type="password" value="<%=user.getUserPwd()%>" style="border:none;">
									</tr>
										<tr>
										<td>Password Check</td>
										<td>
										<input id="userPwd2" type="password" value="<%=user.getUserPwd()%>" style="border:none;"><button type="button"class="btn btn-primary" id="overlapBtn">확인</button></td>
									</tr>
									<tr>
										<td>Gender</td>
										<td><input id="userGender" type="text" value="<%=user.getUserGender()%>" style="border:none;" readonly></td>
									</tr>
									<tr>
										<td>Country</td>
										<td><select
											class="selectpicker" data-style="btn-danger" id="userCountry">
											<optgroup label="기존국가">
												<option><%=user.getUserCountry()%></option>
											<optgroup label="Asia">
												<option>Korea</option>
												<option>Japan</option>
												<option>China</option>
											</optgroup>
											<optgroup label="Europe">
												<option>England</option>
												<option>Germany</option>
												<option>France</option>
											</optgroup>
										</select></td>
									</tr>
									<tr>
										<td>Email</td>
										<td><input id="userEmail" type="text" value="<%=user.getUserEmail()%>" style="border:none;"></td>
									</tr>
									<td>Phone Number</td>
									<td><input id="userPhone" type="text" value="<%=user.getUserPhone()%>" style="border:none;">
									</td>

									</tr>

								</tbody>
							</table>

							<button class="btn btn-primary" type="button" id="update">수정하기</button>
							<a href="#" class="btn btn-primary">탈퇴하기</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<script>
var pwdCheck = false; //확인버튼 클릭 여부 확인, 기본값 false

$("#update").click(function() { //수정 버튼 클릭시
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
 });
 
 $("#overlapBtn").click(function(){  //비밀번호 확인버튼 누를시
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
 });
 
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
</script>