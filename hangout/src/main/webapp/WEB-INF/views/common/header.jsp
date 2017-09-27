<%@page import="com.meet.together.user.dto.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/jquery-ui-1.9.2.custom.js"></script>
<script src="/resources/js/jquery.fileupload.js"></script>
<script src="/resources/js/jquery.iframe-transport.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">



<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>


	 <!-- Navigation -->	
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="${rootPath}/main">HANG OUT</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
		<%
		UserInfo user=new UserInfo();
		if((UserInfo)session.getAttribute("user")==null){

		%>	
			<li class="nav-item">
			<a class="nav-link js-scroll-trigger" href="${rootPath}/signup">회원가입</a></li>
			<li class="nav-item">
			<a class="nav-link js-scroll-trigger" href="${rootPath}/login">로그인</a></li>
		<%	}else{			user=(UserInfo)session.getAttribute("user");
		%>
			<li class="nav-item">
			<a class="nav-link js-scroll-trigger" href="${rootPath}/login">로그아웃</a></li>
			<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact"><%=user.getUserId()%>님이 로그인</a></li><%} %>
			
          </ul>
        </div>
      </div>
    </nav>
	
	
	
	
<script >
var JSException = function(msg){
   alert(msg);
   console.log(msg);
}

var pageMove = function(page){
   location.href = "${rootPath}/" + page;
}

var AjaxUtil = function (url, params, type, dataType){
	if(!url){
		alert("url정보가 없습니다.");
		return null;
	}
	this.url = "${rootPath}/" + url;
	var generateJSON = function(params){
		if(!params) return "";
		var paramArr = params.split(",");
		var data = {};
		for(var i=0,max=paramArr.length;i<max;i++){
			var key = paramArr[i]
			if($("#" + key).length>1){
				throw new JSException("동일 ID값이 존재함.");
			}else if($("#" + key).length==0){
				throw new JSException(key+"에 해당하는 ID가 존재하지 않음.");
			}
			data[key] = $("#" + key).val();
		}
		return  JSON.stringify(data);
	}
	this.type = type?type:"POST";
	this.dataType = dataType?dataType:"json";
	this.param = generateJSON(params);
	this.callbackSuccess = function(json){
    	var url = json.url;
    	var data = json.data;
    	var msg = json.msg;
    	if(msg){
    		alert(msg);
    	}
    	if(url){
        	pageMove(url);
    	}
	}
	
	this.setCallbackSuccess = function(callback){
		this.callbackSuccess = callback;
	}
	
	this.send = function(){
		$.ajax({ 
	        type     : this.type
	    ,   url      : this.url
	    ,   dataType : this.dataType 
	    ,   beforeSend: function(xhr) {
	        xhr.setRequestHeader("Accept", "application/json");
	        xhr.setRequestHeader("Content-Type", "application/json");
	    }
	    ,   data     : this.param
	    ,   success : this.callbackSuccess
	    ,   error : function(xhr, status, e) {
		    	alert("에러 : "+e);
		},
		complete : function(e) {
		}
		});
	}
}
</script>