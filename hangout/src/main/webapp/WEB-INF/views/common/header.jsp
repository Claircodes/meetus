<%@page import="com.meet.together.houser.dto.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
#mainNav {
    background: rgba(0, 0, 0, 0.5); 
    color:white;
 
    }
  #mainNav .navbar-toggler {
    font-size: 12px;
    right: 0;
    padding: 13px;
    text-transform: uppercase;
    color: white;
    border: 0;
    font-family: 'Montserrat', 'Helvetica Neue', Helvetica, Arial, sans-serif; }
</style>

<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" />




<!-- Google Fonts -->
<link rel="stylesheet"
	href="<c:url value="https://fonts.googleapis.com/css?family=Passion+One"/>" />
<link rel="stylesheet"
	href="<c:url value="https://fonts.googleapis.com/css?family=Oxygen"/>" />
<link rel="icon" type="/image/png"
	href="<c:url value="/resources/images/logo.png"/>" />

<%
	UserInfo user = new UserInfo();
	boolean login = false;
	if ((UserInfo) session.getAttribute("user") != null) {
		user = (UserInfo) session.getAttribute("user");
	}
%>

<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a href="${rootPath}/" align="left"> <img width="50%"
		src="<c:url value="/resources/images/logo.png"/>" /></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <%
					if ((UserInfo) session.getAttribute("user") == null) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/create">모임 개설하기</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/golist">모임 리스트</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/signup">회원가입</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/login">로그인</a></li>
				<%
					} else {
						login = true;
				%>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/create">모임 개설하기</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/golist">모임 리스트</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/profile">My Page</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/partimylist?creator=<%=user.getUserNum()%>">My HANGOUT</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/logout">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"><%=user.getUserId()%></a></li>
				<%
					}
				%>
            
          </ul>
        </div>
      </div>
    </nav>
<%-- <!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
<div class="container">
	<a href="${rootPath}/" align="left"> <img width="50%"
		src="<c:url value="/resources/images/logo.png"/>" />
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">

				<%
					if ((UserInfo) session.getAttribute("user") == null) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/create">모임 개설하기</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/golist">모임 리스트</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/signup">회원가입</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/login">로그인</a></li>
				<%
					} else {
						login = true;
				%>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/create">모임 개설하기</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/hangout/golist">모임 리스트</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/profile">마이 페이지</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${rootPath}/user/logout">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"><%=user.getUserId()%></a></li>
				<%
					}
				%>
			</ul>

		</div>
</div>
</nav> --%>


<script>
	var JSException = function(msg) {
		alert(msg);
		console.log(msg);
	}

	var pageMove = function(page) {
		location.href = "${rootPath}/" + page;
	}

	var AjaxUtil = function(url, params, type, dataType) {
		if (!url) {
			alert("url정보가 없습니다.");
			return null;
		}
		this.url = "${rootPath}/" + url;
		var generateJSON = function(params) {
			if (!params)
				return "";
			var paramArr = params.split(",");
			var data = {};
			for (var i = 0, max = paramArr.length; i < max; i++) {
				var key = paramArr[i]
				if ($("#" + key).length > 1) {
					throw new JSException("동일 ID값이 존재함.");
				} else if ($("#" + key).length == 0) {
					throw new JSException(key + "에 해당하는 ID가 존재하지 않음.");
				}
				data[key] = $("#" + key).val();
			}
			return JSON.stringify(data);
		}
		this.type = type ? type : "POST";
		this.dataType = dataType ? dataType : "json";
		this.param = generateJSON(params);
		this.callbackSuccess = function(json) {
			var url = json.url;
			var msg = json.msg;
			if (msg) {
				alert(msg);
			}
			if (url) {
				pageMove(url);
			}
		}
		this.setCallbackSuccess = function(callback) {
			this.callbackSuccess = callback;
		}

		this.send = function() {
			$.ajax({
				type : this.type,
				url : this.url,
				dataType : this.dataType,
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
					xhr.setRequestHeader("Content-Type", "application/json");
					xhr.setRequestHeader("AJAX", true);
				},
				data : this.param,
				success : this.callbackSuccess,
				error : function(xhr, status, e) {
					if (xhr.responseJSON) {
						var obj = xhr.responseJSON;
						alert(obj.msg);
						pageMove(obj.url);
					} else {
						alert("에러 : " + e);
					}
				},
				complete : function(e) {
				}
			});
		}
	}
</script>

	<!-- Javascript -->
<script src="<c:url value='/resources/js/jquery-2.2.1.min.js' />"></script>
<script src="<c:url value='/resources/js/jquery-ui-1.9.2.custom.js' />"></script>
<script src="<c:url value='/resources/js/jquery.fileupload.js' />"></script>
<script src="<c:url value='/resources/js/jquery.iframe-transport.js' />"></script>
 <script src="<c:url value='/resources/js/jquery.backstretch.min.js'/>"></script>
  <script src="<c:url value='/resources/js/popper.min.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap4.min.js'/>"></script>
       		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script
	src="<c:url value='//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js' />"></script>