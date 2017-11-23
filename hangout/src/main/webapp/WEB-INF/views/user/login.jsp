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
        
        <!--  google sign -->
         <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">

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
	                        	<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
	                        
	                        	<!--  구글로그인 버튼 
	                        	<div id="my-signin2"></div>
	                        	-->
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '{1878934302134845}',
      cookie     : true,
      xfbml      : true,
      version    : '{v2.10}'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.11&appId=1878934302134845';
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
	
	
	<!--  구글로그인 코드 -->
<script>
    function onSuccess(googleUser) {
      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
    }
    function onFailure(error) {
      console.log(error);
    }
    function renderButton() {
      gapi.signin2.render('my-signin2', {
        'scope': 'profile email',
        'width': 240,
        'height': 50,
        'longtitle': true,
        'theme': 'dark',
        'onsuccess': onSuccess,
        'onfailure': onFailure
      });
    }
  </script>

  <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
        <script src="<c:url value='/resources/js/scripts.js' />"></script>


    </body>

</html>