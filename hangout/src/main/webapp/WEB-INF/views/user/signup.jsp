<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->

		<link rel="stylesheet" href="/resources/css/form-elements.css">
        <link rel="stylesheet" href="/resources/css/style.css">
           <link rel="stylesheet" href="/resources/css/dropdown.css">

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
								<h3>SIGNUP NOW</h3>
								<p>
									We hope you would be satisfied :) <i class="fa fa-heart"></i>
								</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="form-bottom">
							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">Create
									ID</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="userId" id="userId"
											placeholder="아이디를 만들어 주세요." />
										<button type="button"
											class="btn m-progress btn-xs btn-primary" id="overlapBtn">중복검사</button>
									</div>
								</div>
							</div>


							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">Your
									Password</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="userPwd"
											id="userPwd" placeholder="비밀번호를 입력해주세요." />
									</div>
								</div>
							</div>


							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Your
									Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="userName"
											id="userName" placeholder="이름을 적어주세요." />
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="email" class="cols-sm-2 control-label">Your
									Email</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="userEmail"
											id="userEmail" placeholder="이메일 주소를 입력하세요." />
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="confirm" class="cols-sm-2 control-label">Your
									Phone Number</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-phone fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="userPhone"
											id="userPhone" placeholder="연락처를 적어주세요." />
									</div>
								</div>
							</div>


							<div class="form-group">
								<label for="username" class="cols-sm-2 control-label">Your
									Gender</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="fa fa-users fa" aria-hidden="true"></i></span>
										<div id="radioBtn" class="form-control">
										<div class="col-sm-5">
												<input type="radio" name="userGender" value="M"><label for="M">남/Male</label><br>
											</div>
											<div class="col-sm-5">
												<input type="radio" name="userGender" value="F"><label for="F">여/Female</label><br>
												</div>
										</div>
									</div>
								</div>
							</div>





							<div class="form-group">
								<label for="confirm" class="cols-sm-2 control-label">Where
									were you born?</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="fa  fa-map-marker fa" aria-hidden="true"></i></span>
											 <select
											class="selectpicker size" data-style="btn-danger" id="userCountry" >
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
										</select>


									</div>
								</div><br>
								<form role="form" action="" method="post" class="login-form">
									<button type="button" class="btn" id="btn">회원가입</button>
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
<!-- 아이디 중복처리에 정상적으로 실패할경우 false 성공한경우 true -->
var overlapCheck = false;

$('#radioBtn a').on('click', function(){
    var sel = $(this).data('title');
    var tog = $(this).data('toggle');
    $('#'+tog).val(sel);
    if(sel=="Y"){
     $("#userGender").val("남자");
    }else{
     $("#userGender").val("여자");
    }
    
    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
})


$("#btn").click(function() 
{
	<!-- 아이디 중복체크를 성공했을 경우 -->
	if(overlapCheck == true)
	{
		var paramIds = "userId,userPwd,userName,userEmail,userPhone,userGender,userCountry";
		var au = new AjaxUtil("signup/insert",paramIds);
		au.send();
	}
	<!-- 아이디 중복체크를 안눌렀을경우 && 아이디 중복체크에 실패했는데 회원가입 버튼을 눌렀을경우 -->
	else
	{
		alert("아이디 중복체크를 눌러주세요! \nPlease click the duplicate ID check");
		document.getElementById("userId").focus();
	}
});
   
$("#overlapBtn").click(function()
{
	var id = $("#userId").val();
	if(id == "")
	{
		alert("아이디를 입력하시고 눌러주세요. \nPlease enter your ID and press.");
		document.getElementById("userId").focus();
	}
	var au = new AjaxUtil("overlapId", "userId");
	au.setCallbackSuccess(overlapIdCheck);
	au.send();
});

function overlapIdCheck(results)
{
	var id = $("#userId").val();
	
	for(var i = 0; i < results.length; i++)
	{
		if(results[i].userId == id)
		{
			alert(id + "는 사용하실수 없는 아이디입니다. \n" + id + " You can not use ID.");
			document.getElementById("userId").focus();
			return;
		}
	}
	alert(id + "는 사용하실수 있는 아이디입니다." + id + " You can use ID.");
	overlapCheck = true;
}
</script>

	<!-- Javascript -->
        <script src="/resources/js/jquery-1.12.1.min.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>
        <script src="/resources/js/jquery.backstretch.min.js"></script>
        <script src="/resources/js/scripts_signup.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>