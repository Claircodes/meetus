<%@page import="com.meet.together.user.dto.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>"/>

<script src="<c:url value='/resources/js/jquery.min.js' />"></script>
<script src="<c:url value='/resources/js/jquery-ui-1.9.2.custom.js' />"></script>
<script src="<c:url value='/resources/js/jquery.fileupload.js' />"></script>
<script src="<c:url value='/resources/js/jquery.iframe-transport.js' />"></script>
<script src="<c:url value='//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js' />"></script>

<!-- Website Font style -->
<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"/>"/>

<!-- Google Fonts -->
<link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Passion+One"/>"/>
<link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Oxygen"/>"/>
		<%
		UserInfo user=new UserInfo();
		boolean login = false;
		if((UserInfo)session.getAttribute("user")!=null){		
			user=(UserInfo)session.getAttribute("user");
			}
		%>	


    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
      <div class="container">
        <a href="/main" align="left">
        <img width="50%" src="/resources/images/logo.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
            <%if((UserInfo)session.getAttribute("user")==null){ %>
            <li class="nav-item">
              <a class="nav-link" href="${rootPath}/create">모임 개설하기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${rootPath}/signup">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${rootPath}/login">로그인</a>
            </li>
            <% }else{ 
			login = true;%>
			<li class="nav-item">
              <a class="nav-link" href="${rootPath}/create">모임만들기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link"  href="${rootPath}/logout">로그아웃</a>
            </li>
			<li class="nav-item"><a class="nav-link js-scroll-trigger" ><%=user.getUserId()%></a></li><%} %>
          </ul>
          
        </div>
        
      </div>
    </nav>
    </br></br></br></br>

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
		var hangoutList=json.list;
    	var url = json.url;
    	var msg = json.msg;
    	if(msg){
    		alert(msg);
    	}
    	if(url){
        	pageMove(url);
    	}
    	if(hangoutList){
    		var result="";
    		for(var i=0, max=hangoutList.length;i<max;i++){
    			var list=hangoutList[i];
 
    		    result+="<div class='container'>";
    		    result+="<div class='row justify-content-center align-self-center'>";
    		    	result+="<div class='[ col-xs-12 col-sm-offset-2 col-sm-8 ]'>";
    		    		result+="<ul class='event-list'>";
    		    			result+="<li>";
    		    				result+="<time datetime='2014-07-20'>";
    		    					result+="<span class='day'>" + list.hangoutDate + "</span>";
    		    					result+="<span class='month'>Jul</span>";
    		    						result+="<span class='year'>2014</span>";
    		    							result+="</time>";
    		    								result+="<img alt='Independence Day' src='https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg' />";
    		    									result+="<div class='info'>";
    		    										result+="<h2 class='title'>" + list.hangoutName + "</h2>";
    		    										result+="<p class='desc'>" + list.hangoutContent+ "</p>";
    		    										result+="</div>";
    		    											result+="</li>";
    		    												result+="</ul>";
    		    													result+="</div>";
    		    														result+="</div>";
    		    															result+="</div>";
    		}
    		$("#list_body").html(result);
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
	        xhr.setRequestHeader("AJAX",true);
	    }
	    ,   data     : this.param
	    ,   success : this.callbackSuccess
	    ,   error : function(xhr, status, e) {
	    	if(xhr.responseJSON){
	    		var obj = xhr.responseJSON;
	    		alert(obj.msg);
	    		pageMove(obj.url);
	    	}else{
		    	alert("에러 : "+e);
	    	}
		},
		complete : function(e) {
		}
		});
	}
}
</script>