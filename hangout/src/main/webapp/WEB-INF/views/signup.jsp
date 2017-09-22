<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="/resources/css/signup.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">HANG.OUT.</h1>
	               		<img src="https://cdn.pixabay.com/photo/2017/08/06/00/44/korean-2587180_960_720.jpg" >
	               		<hr />
	               	</div>
	               	
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
					             		<h1 class="title">SING UP</h1>
					             		<br></br>
					           	<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Create New ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="userId" id="userId"  placeholder="아이디를 만들어 주세요."/>
								</div>
							</div>
						</div>
						
				
					<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Your Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="user_pwd" id="user_pwd"  placeholder="비밀번호를 입력해주세요."/>
								</div>
							</div>
						</div>
					
					
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="이름을 적어주세요."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="이메일 주소를 입력하세요."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Your Phone Number</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="user_phone" id="user_phone"  placeholder="연락처를 적어주세요."/>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Your Gender</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="user_gender" id="user_gender"  placeholder="성별을 선택하세요."/>
								</div>
							</div>
						</div>

					<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Where were you born?</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="country" id="country"  placeholder="당신의 국적을 선택해주세요."/>
								</div>
							</div>
						</div>
						

		
	
			
						
						

						<div class="form-group ">
							<button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
						<div class="login-register">
				            <a href="index.php">Login</a>
				         </div>
					</form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
	</body>
</html>