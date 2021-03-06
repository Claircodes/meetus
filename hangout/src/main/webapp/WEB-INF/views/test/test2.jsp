<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->

		<link rel="stylesheet" href="/resources/css/form-elements.css">
        <link rel="stylesheet" href="/resources/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

     
    </head>

    <body>




        <!-- Top content -->
        <div class="top-content">
        	<div class="inner-bg h-100">
                <div class="container">
                    <div class="row justify-content-center align-self-center">
                        <div class="col-sm-8 col-sm-offset-2 text ">
                            <h1 class="text-vertical-center"><h1>HANG OUT</h1>
                        </div>
                    </div>
                    <div class="row justify-content-center align-self-center">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login NOW</h3>
                            		<p>We hope you would be satisfied :) <i class="fa fa-heart"></i> </p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">E-mail</label> 이메일 계정
			                        	<input type="text" name="userId" placeholder="E-mail address(유저아이디)" class="form-username form-control" id="userId">
			                        </div>
			                        <div class="form-group">
			                          	<label class="sr-only" for="form-password">Password</label> 비밀번호
			                        	<input type="password" name="userPwd" placeholder="Password" class="form-password form-control" id="userPwd">
			                        </div>
									<div class="form-check">
									<label class="form-check-label"> <input type="checkbox"
										class="form-check-input"> Remember Me
									</label> <br>
							
									<button id="next1" type="button" class="btn btn-next">Next</button>
									</fieldset>

							<fieldset>
								</div>
							</form>
		                    </div>
                        </div>
                    </div>
                    <div class="row justify-content-center align-self-center">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3> login with +</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-google-plus"></i> Google
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-comment"></i> KakaoTalk
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

	<script>
		$("#btn").click(function() {
			var paramIds = "userId,userPwd";
			var au = new AjaxUtil("login", paramIds);
			au.send();
		})
	</script>

	<!-- Javascript -->
        <script src="/resources/js/jquery-1.12.1.min.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>
        <script src="/resources/js/jquery.backstretch.min.js"></script>
        <script src="/resources/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>