<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% if(login == true) {%>
<!DOCTYPE html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Multi Step Registration Form Template</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
	href="resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/form-elements.css">
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/css/radio.css">

	<!-- Javascript -->
	<script src="resources/assets/js/jquery-1.11.1.min.js"></script>
	<script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/jquery.backstretch.min.js"></script>
	<script src="resources/assets/js/retina-1.1.0.min.js"></script>
	<script src="resources/assets/js/scripts.js"></script>


</head>

<body>
	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong>Hang out</strong> 모임 개설하기
						</h1>
						<div class="description">
							<p>내가 원하는 카테고리로 내가 원하는 HANG OUT 만들기!</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">

						<form role="form" action="" method="post"
							class="registration-form">

							<fieldset>
								<div class="form-top">
									<div class="form-top-left">
										<h3>지역 선택</h3>
										<p>여행 갈 지역을 선택하세요 :)</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-user"></i>
									</div>
								</div>
								<div class="form-bottom">
									<div class="col-md-6">
									
										<div class="funkyradio">
											<div class="funkyradio-default">
												<input type="checkbox" name="chk_unit[]" id="checkbox1"
													value="서울" /> <label for="checkbox1">서울</label>
											</div>
											<div class="funkyradio-primary">
												<input type="checkbox" name="chk_unit[]" id="checkbox2"
													value="인천" /> <label for="checkbox2">인천</label>
											</div>
											<div class="funkyradio-success">
												<input type="checkbox" name="chk_unit[]" id="checkbox3"
													value="울산" /> <label for="checkbox3">울산</label>
											</div>
											<div class="funkyradio-danger">
												<input type="checkbox" name="chk_unit[]" id="checkbox4"
													value="부산" /> <label for="checkbox4">부산</label>
											</div>
											<div class="funkyradio-warning">
												<input type="checkbox" name="chk_unit[]" id="checkbox5"
													value="광주 " /> <label for="checkbox5">광주</label>
											</div>
											<div class="funkyradio-info">
												<input type="checkbox" name="chk_unit[]" id="checkbox6"
													value="대구" /> <label for="checkbox6">대구</label>
											</div>
										</div>
									</div>
									<button id="next1" type="button" class="btn btn-next">Next</button>
								</div>
							</fieldset>

							<fieldset>
								<div class="form-top">
									<div class="form-top-left">
										<h3>카테고리 선택</h3>
										<p>카테고리를 선택하세요 :)</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-key"></i>
									</div>
								</div>
								<div class="form-bottom">
									<div class="form-group">
									<div class="col-md-6">
									
										<div class="funkyradio">
											<div class="funkyradio-default">
												<input type="checkbox" name="checkbox" id="checkbox1"
												 value="서울"/> <label for="checkbox1">서울</label>
											</div>
											<div class="funkyradio-primary">
												<input type="checkbox" name="checkbox" id="checkbox2"
													value="인천" /> <label for="checkbox2">인천</label>
											</div>
											<div class="funkyradio-success">
												<input type="checkbox" name="checkbox" id="checkbox3"
													value="울산" /> <label for="checkbox3">울산</label>
											</div>
											<div class="funkyradio-danger">
												<input type="checkbox" name="checkbox" id="checkbox4"
													value="부산" /> <label for="checkbox4">부산</label>
											</div>
											<div class="funkyradio-warning">
												<input type="checkbox" name="checkbox" id="checkbox5"
													value="광주" /> <label for="checkbox5">광주</label>
											</div>
											<div class="funkyradio-info">
												<input type="checkbox" name="checkbox" id="checkbox6"
													value="대구" /> <label for="checkbox6">대구</label>
											</div>
										</div>
									</div>
									</div>
									<button type="button" class="btn btn-previous">Previous</button>
									<button type="button" class="btn btn-next">Next</button>
								</div>
							</fieldset>

							<fieldset>
								<div class="form-top">
									<div class="form-top-left">
										<h3>모임 생성</h3>
										<p>모임을 만드세요 :)</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-twitter"></i>
									</div>
								</div>
								<div class="form-bottom">
									<div class="form-group">
										<label class="sr-only" for="form-facebook">City</label> <input
											type="text" name="form-facebook" placeholder="Facebook..."
											class="form-facebook form-control" id="form-facebook">
									</div>
									<div class="form-group">
										<label class="sr-only" for="form-twitter">Category</label> <input
											type="text" name="form-twitter" placeholder="Twitter..."
											class="form-twitter form-control" id="form-twitter">
									</div>
									<div class="form-group">
										<label class="sr-only" for="form-google-plus">Title</label> <input
											type="text" name="form-google-plus"
											placeholder="Google plus..."
											class="form-google-plus form-control" id="form-google-plus">
									</div>
									<div class="form-group">
										<label class="sr-only" for="form-content">Content</label> <input
											type="text" name="form-content" placeholder="Content..."
											class="form-content form-control" id="form-content">
									</div>

									<button type="button" class="btn btn-previous">Previous</button>
									<button type="submit" class="btn">Sign me up!</button>
								</div>
							</fieldset>

						</form>

					</div>
				</div>
			</div>
		</div>

	</div>
		<script>
	$("#next1").click(function() {
	var chk = document.getElementsByName("chk_unit[]"); // 체크박스객체를 담는다
	var len = chk.length;    //체크박스의 전체 개수
	var checkRow = '';      //체크된 체크박스의 value를 담기위한 변수
	var checkCnt = 0;        //체크된 체크박스의 개수
	var checkLast = '';      //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기위한 변수                

	for(var i=0; i<len; i++){

	if(chk[i].checked == true){
	checkCnt++;        //체크된 체크박스의 개수
	checkLast = i;     //체크된 체크박스의 인덱스
	}
	} 

	for(var i=0; i<len; i++){

	if(chk[i].checked == true){  //체크가 되어있는 값 구분

	checkRow = chk[i].value;

	alert(checkRow);
	}
	checkRow='';
	}
	})
	</script>

	<%} else {%>
	<script>
       			alert("로그인을 해주세요");
       			location.href = ${rootPath}"/login";
       		</script>
	<%} %>
</body>
</html>