<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css" href="/resources/css/login.css">

<section class="login-block">
<div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
			<h2 class="text-center">Login Now</h2>
			<form class="login-form">
				<div class="form-group">
					<label for="exampleInputEmail1" class="text-uppercase">아이디
						ID</label> <input type="text" class="form-control" placeholder="">

				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="text-uppercase">비밀번호
						Password</label> <input type="password" class="form-control"
						placeholder="">
				</div>


				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input"> <small>Remember Me</small>
					</label> <br>
					<button type="submit" class="btn btn-login float-right">로그인</button>
				</div>

			</form>
			<div class="copy-text">
				We hope you would be satisfied :) <i class="fa fa-heart"></i>
			</div>
		</div>
		<div class="col-md-8 banner-sec">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="d-block img-fluid" src="/resources/images/login1.jpg"
							alt="First slide">
						<div class="carousel-caption d-none d-md-block">
							<div class="banner-text">
								<h2>HANG OUT</h2>
								<p>새로운 친구를 만들어 보세요.</p> 
								<p>새로운 경험이 당신을 기다리고 있습니다.</p> 
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="/resources/images/login2.jpg"
							alt="First slide">
						<div class="carousel-caption d-none d-md-block">
							<div class="banner-text">
								<p>그동안 당신이 경험해보지 못 했던</p>
								<p>새로운것을 HANG OUT에서 만들어보세요!</p>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
</section>
</html>
