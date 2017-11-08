<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Create Hangout</title>

<%
   if (login == true) {
	} else {
%>
<script>
	alert("로그인을 해주세요");
	location.href = ${rootPath}"/user/login";
</script>
<%	}%>


<!-- CSS -->
<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css'/>" >
<link rel="stylesheet" href="<c:url value='/resources/css/style-create.css'/>" >

<!-- 달력관련 script -->
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/tags/bootstrap-tags.css'/>" >
<script type="text/javascript"	src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js'"></script>
<script src="<c:url value='/resources/tags/bootstrap-tags.min.js' />"></script>
<script src="<c:url value='/resources/tags/bootstrap-tags.js' />"></script>




</head>
<body>

<br></br><p></p>
	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row justify-content-center align-self-center">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong>CREATE NEW HANGOUT! </strong>
						</h1>
					</div>
				</div>
				<div class="row justify-content-center align-self-center">
					<div class="col-sm-6 col-sm-offset-3 form-box">

						<form role="form" action="" method="post"
							class="registration-form">

							<fieldset>
								<div class="form-top">
									<div class="form-top-left">
										<h3>새 모임 생성하기</h3>
										<p>모임을 개최하고자하는 위치를 선택하여 주세요.</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-heart"></i>
									</div>
								</div>

								<div class="form-bottom">
									<div class="row justify-content-center align-self-center">
										<div class="col-sm-7">
											<input type="text-center" class="form-control btn"
												placeholder="대한민국 서울특별시" id="geocomplete">
										</div>
									</div>
								</div>
								<div class="form-bottom text-right">
									<button id="next1" type="button"
										class="btn btn-next align-right">Next</button>


								</div>
							</fieldset>

							<fieldset>
								<div class="form-top">
									<div class="form-top-left">
										<h3>카테고리 선택</h3>
										<p>생성하고자하는 모임의 성격을 체크해주세요!</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-tag"></i>
									</div>
								</div>
								<div class="form-bottom">
									<div class="form-group">
										<div class="funkyradio">
										<div class="row">
												<div class="col-sm-6">
												<div class="funkyradio-default">
													<input type="radio" name="chk_cate[]" id="checkbox_ca1"
														value="PET" /> <label for="checkbox_ca1">PET</label>
												</div>
												<div class="funkyradio-primary">
													<input type="radio" name="chk_cate[]" id="checkbox_ca2"
														value="MUSIC" /> <label for="checkbox_ca2">MUSIC</label>
												</div>
												<div class="funkyradio-success">
													<input type="radio" name="chk_cate[]" id="checkbox_ca3"
														value="LANGUAGE" /> <label for="checkbox_ca3">LANGUAGE</label>
												</div>
												<div class="funkyradio-danger">
													<input type="radio" name="chk_cate[]" id="checkbox_ca4"
														value="DRINK" /> <label for="checkbox_ca4">DRINK</label>
												</div>
												<div class="funkyradio-warning">
													<input type="radio" name="chk_cate[]" id="checkbox_ca5"
														value="BOOK" /> <label for="checkbox_ca5">BOOK</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="FOOD" /> <label for="checkbox_ca6">FOOD</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="ART" /> <label for="checkbox_ca6">ART</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="GAME" /> <label for="checkbox_ca6">GAME</label>
												</div>
												</div>
												<div class="col-sm-6 pull-right">
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="MOVIE" /> <label for="checkbox_ca6">MOVIE</label>
												</div>
												
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="RELIGION" /> <label for="checkbox_ca6">RELIGION</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="SPORT" /> <label for="checkbox_ca6">SPORT</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="EDUCATION" /> <label for="checkbox_ca6">EDUCATION</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="TECHNICAL" /> <label for="checkbox_ca6">TECHNICAL</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="DANCE" /> <label for="checkbox_ca6">DANCE</label>
												</div>
												<div class="funkyradio-info">
													<input type="radio" name="chk_cate[]" id="checkbox_ca6"
														value="PHOTO" /> <label for="checkbox_ca6">PHOTO</label>
												</div>
											</div>
								</div></div>
									</div>
									<button type="button" class="btn btn-previous text-left">Previous</button>
									
									<button id="next2" type="button" class="btn btn-next pull-right" >Next</button>
								</div>
							</fieldset>

							<fieldset>
								<div class="form-top">
									<div class="form-top-left">
										<h3>모임 생성 마무리단계</h3>
										<p>당신의 모임에 대해서 알려주세요.</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-check"></i>
									</div>
								</div>
								<div class="form-bottom">
								<center>
									<div class="form-group">
									<button class="btn-dark disabled">
										AREA : <input type="button" name="hangoutArea"
											id="hangoutArea" class="btn-dark" readonly >
										CATEGORY : <input type="button" name="hangoutCategory"
											id="hangoutCategory" class="btn-dark" readonly >
										<input type="hidden" name="hangoutCreator"
											id="hangoutCreator" class="btn-dark" value=<%=user.getUserNum()%> readonly>
									</input>
									</div>
								</center>
								<p>
									<div class="form-group">
										<label class="sr-only" for="form-google-plus"></label> <input
											type="text" name="hangoutName" placeholder="모임의 이름을 지어주세요."
											class="form-google-plus form-control" id="hangoutName">
									</div>
									<div class="form-group">
										<label class="sr-only" for="form-content"></label> <input
											type="text" name="hangoutContent" placeholder="모임을 간략히 소개해주세요.(50자이내)"
											class="form-content form-control" id="hangoutContent">
									</div>
									<div class="form-group">
										<div class="input-group date" data-provide="datepicker">
											<input type="text" class="form-control" placeholder="모임의 날짜를 선택해주세요." id="hangoutDate" disabled>
											<div class="input-group-addon">선택
												
											</div>
										</div>
									</div>
									<br><p>
									<!-- 지도차단 
									<div class="bootstrap-iso">
										<div class="container-fluid">
											<div class="row justify-content-center align-self-center">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form action="https://formden.com/post/MlKtmY4x/"
														class="form-horizontal" method="post">
														<div class="form-group ">
															<label class="control-label col-sm-2 requiredField"
																for="date"> Open Date <span
																class="asteriskField"> * </span>
															</label>
															<div class="col-sm-10">
																<div class="input-group">
																	<div class="input-group-addon">
																		<i class="fa fa-calendar"> </i>
																	</div>
																	<input class="form-control" id="hangoutOpenDate"
																		name="date" placeholder="YYYY/MM/DD/" type="text" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-10 col-sm-offset-2">
																<input name="_honey" style="display: none" type="text" />
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>

									<div class="bootstrap-iso">
										<div class="container-fluid">
											<div class="row justify-content-center align-self-center">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form action="https://formden.com/post/MlKtmY4x/"
														class="form-horizontal" method="post">
														<div class="form-group ">
															<label class="control-label col-sm-2 requiredField"
																for="date"> Close Date <span
																class="asteriskField"> * </span>
															</label>
															<div class="col-sm-10">
																<div class="input-group">
																	<div class="input-group-addon">
																		<i class="fa fa-calendar"> </i>
																	</div>
																	<input class="form-control" id="hangoutCloseDate"
																		name="date" placeholder="YYYY/MM/DD/" type="text" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-10 col-sm-offset-2">
																<input name="_honey" style="display: none" type="text" />
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									
									<div class="bootstrap-iso">
										<div class="container-fluid">
											<div class="row justify-content-center align-self-center">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form action="https://formden.com/post/MlKtmY4x/"
														class="form-horizontal" method="post">
														<div class="form-group ">
															<label class="control-label col-sm-2 requiredField"
																for="date"> Date <span
																class="asteriskField"> * </span>
															</label>
															<div class="col-sm-10">
																<div class="input-group">
																	<div class="input-group-addon">
																		<i class="fa fa-calendar"> </i>
																	</div>
																	<input class="form-control" id="hangoutDate"
																		name="date" placeholder="YYYY/MM/DD/" type="text" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-10 col-sm-offset-2">
																<input name="_honey" style="display: none" type="text" />
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
-->
	
									<button type="button" class="btn btn-previous">Previous</button>
									<button id="hang_signup" type="button" class="btn pull-right">Done</button>
								</div>
							</fieldset>

						</form>

					</div>
				</div>
			</div>
		</div>

	</div>
	<script>

   var checkRow_ca = ''; //체크된 카테고리 값들
   $("#hangoutArea").val( "서울특별시");
   
   $("#next2").click(function() {
   var chk_ca = document.getElementsByName("chk_cate[]"); // 체크박스객체를 담는다
   var len_ca = chk_ca.length;    //체크박스의 전체 개수
   var checkCnt_ca = 0;
	   	for (var i = 0; i < len_ca; i++) {
				if (chk_ca[i].checked == true) {
					checkCnt_ca++;
					if (checkCnt_ca == 1) {
						checkRow_ca = chk_ca[i].value;
					}
				}
			}
			if (checkCnt_ca == 0) {
				alert("카테고리를 선택하시오");
				return false;
			} else
				$("#hangoutCategory").val(checkRow_ca);
		});

		$("#hang_signup")
				.click(
						function() {
							if (document.getElementById("hangoutName").value == ""
									|| document
											.getElementById("hangoutContent").value == ""
									|| document.getElementById("hangoutDate").value == "") {
								alert("입력하지 않은 영역이 있습니다.");
								return false;
							} else
								var paramIds = "hangoutArea,hangoutCategory,hangoutCreator,hangoutName,hangoutContent,hangoutDate";
							var au = new AjaxUtil("hangout/insert", paramIds);
							au.setCallbackSuccess(callbackCreate);
							au.send();
						});
		function callbackCreate(results) {
			alert(results.msg);
			location.href = "/" + results.url;
		}
	</script>

</body>
</html>


<script>
	$(document).ready(function(){
		var date_input=$('input[name="date"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		})
	})
</script>


		<!-- 구글맵 도시검색 -->
	<script>
	   $(document).ready(function() {

				$("#geocomplete").geocomplete().bind("geocode:result",
						function(event, result) {
					 $("#hangoutArea").val( result.vicinity);
						}).bind("geocode:error", function(event, status) {
				}).bind("geocode:multiple", function(event, results) {
					});
				$("#examples a").click(function() {
					$("#geocomplete").val($(this).text()).trigger("geocode");
					return false;
				});
	    });
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&libraries=places"></script>
	<script src="<c:url value='/resources/js/scripts-create.js'/>"></script>
	<script src="<c:url value='/resources/js/jquery.geocomplete.js' />"></script>
	<script src="<c:url value='/resources/js/logger.js' />"></script>