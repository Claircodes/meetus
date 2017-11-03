<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login HANGOUT</title>

        <!-- CSS -->

		<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css' />">
        <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">

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
			                    		<label class="sr-only" for="form-username">E-mail</label>
			                        	<input type="text" name="userId" placeholder="E-mail address(유저아이디)" class="form-username form-control" id="userId">
			                        </div>
			                        <div class="form-group">
			                          	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="userPwd" placeholder="Password" class="form-password form-control" id="userPwd">
			                        </div>
									<div class="form-check">
									<label class="form-check-label"> <input type="checkbox"
										class="form-check-input"> Remember Me
									</label> <br>
									<button type="button" class="btn" id="btn">로그인</button>
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
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '{718650078344310}',
      cookie     : true,
      xfbml      : true,
      version    : '{v2.10}'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
	<script>
		$("#btn").click(function() {
			var paramIds = "userId,userPwd";
			var au = new AjaxUtil("user/login", paramIds);
			au.setCallbackSuccess(callbackMain);
			au.send();
		})
		function callbackMain(results)
		{
			alert(results.msg);
			location.href = "/" + results.url;
		}
	</script>

	<!-- Javascript -->
        <script src="<c:url value='/resources/js/jquery-1.12.1.min.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
        <script src="<c:url value='/resources/js/scripts.js' />"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>