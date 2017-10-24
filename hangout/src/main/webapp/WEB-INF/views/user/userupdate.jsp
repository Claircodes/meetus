<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
=======
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
										<td><input id="userPwd" type="password" value="<%=user.getUserPwd()%>" style="border:none;"></td>
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
$("#update").click(function() {
    var paramIds = "userId,userName,userPwd,userGender,userCountry,userEmail,userPhone";
    var au = new AjaxUtil("signup/update",paramIds);
    au.send();
 });
</script>
>>>>>>> branch 'master' of https://github.com/Claircodes/meetus.git
