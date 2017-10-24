<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<br/><br/><br/><br/><br/><br/>
<div class="container">
<<<<<<< HEAD
	<div class="row">
	
		<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
			<A href="edit.html">Edit Profile</A> <A href="edit.html">Logout</A>
			<br>
			<p class=" text-info">May 05,2014,03:00 pm</p>
		</div>
		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">Sheena Shrestha</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-3 col-lg-3 " align="center">
							<img alt="User Pic"
								src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png"
								class="img-circle img-responsive">
						</div>
						<div class=" col-md-9 col-lg-9 ">
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>Department:</td>
										<td>Programming</td>
									</tr>
									<tr>
										<td>Hire date:</td>
										<td>06/23/2013</td>
									</tr>
									<tr>
										<td>Date of Birth</td>
										<td>01/24/1988</td>
									</tr>

									<tr>
									<tr>
										<td>Gender</td>
										<td>Female</td>
									</tr>
									<tr>
										<td>Home Address</td>
										<td>Kathmandu,Nepal</td>
									</tr>
									<tr>
										<td>Email</td>
										<td><a href="mailto:info@support.com">info@support.com</a></td>
									</tr>
									<td>Phone Number</td>
									<td>123-4567-890(Landline)<br>
									<br>555-4567-890(Mobile)
									</td>

									</tr>

								</tbody>
							</table>

							<a href="#" class="btn btn-primary">My Sales Performance</a> <a
								href="#" class="btn btn-primary">Team Sales Performance</a>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<a data-original-title="Broadcast Message" data-toggle="tooltip"
						type="button" class="btn btn-sm btn-primary"><i
						class="glyphicon glyphicon-envelope"></i></a> <span class="pull-right">
						<a href="edit.html" data-original-title="Edit this user"
						data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i
							class="glyphicon glyphicon-edit"></i></a> <a
						data-original-title="Remove this user" data-toggle="tooltip"
						type="button" class="btn btn-sm btn-danger"><i
							class="glyphicon glyphicon-remove"></i></a>
					</span>
=======

	

		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title"><%=user.getUserId()%>님 회원 정보</h3>
				</div>
				<br></br>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-3 col-lg-3 " align="center">
							<img alt="User Pic"
								src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png"
								class="img-circle img-responsive">
						</div>
						<div class=" col-md-9 col-lg-9 ">
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>ID</td>
										<td><%=user.getUserId()%></td>
									</tr>
									<tr>
										<td>Name</td>
										<td><%=user.getUserName()%></td>
									</tr>
									<tr>
										<td>Password</td>
										<td><input type="password" value="<%=user.getUserPwd()%>" style="border:none;" readonly></td>
									</tr>

									<tr>
									<tr>
										<td>Gender</td>
										<td><%=user.getUserGender()%></td>
									</tr>
									<tr>
										<td>Country</td>
										<td><%=user.getUserCountry()%></td>
									</tr>
									<tr>
										<td>Email</td>
										<td><a href="mailto:<%=user.getUserEmail()%>"><%=user.getUserEmail()%></a></td>
									</tr>
									<td>Phone Number</td>
									<td><%=user.getUserPhone()%>
									</td>

									</tr>

								</tbody>
							</table>

							<a href="/user/update" class="btn btn-primary">회원 정보 수정</a> <a
								href="${rootPath}/" class="btn btn-primary">메인 가기</a>
						</div>
					</div>
>>>>>>> branch 'master' of https://github.com/Claircodes/meetus.git
				</div>

			</div>
		</div>
	</div>
</div>