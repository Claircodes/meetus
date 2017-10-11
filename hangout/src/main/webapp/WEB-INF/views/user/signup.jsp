<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="/resources/css/signup.css">

<title>HangOut</title>
</head>
<body>
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">HANG.OUT.</h1>
					<img src="/resources/images/koreanHanbok.jpg">
					<hr />
				</div>
			</div>
			<div class="main-login main-center">
				<form class="form-horizontal" method="post" action="#">
					<h1 class="title">SIGN UP</h1>
						<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Create
							New ID</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="text" class="form-control" name="userId" id="userId"
									placeholder="아이디를 만들어 주세요." />
								<button type="button" class="btn m-progress btn-xs btn-primary" id="overlapBtn">중복검사</button>
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
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span> <input type="text" class="form-control"
									name="userName" id="userName" placeholder="이름을 적어주세요." />
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
								<span class="input-group-addon"><i class="fa fa-phone fa"
									aria-hidden="true"></i></span> <input type="text" class="form-control"
									name="userPhone" id="userPhone" placeholder="연락처를 적어주세요." />
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
								<div id="radioBtn" class="form-control"  >
    					<a id="userGender"  class="btn btn-login btn-sm active" data-toggle="happy" data-title="Y">남/Male</a>
    					<a id="userGender" class="btn btn-login btn-sm notActive" data-toggle="happy" data-title="N">여/Female</a>
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
									
									
									<select class="selectpicker" data-style="btn-danger" id="userCountry">
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
						</div>
						<br></br>
						<div class="form-group ">
							<button type="button" id="signupbtn"
								class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
						
				</form>
			</div>
		</div>
	</div>
</body>

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


$("#signupbtn").click(function() 
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
	checkValue = true;
}
</script>
</html>