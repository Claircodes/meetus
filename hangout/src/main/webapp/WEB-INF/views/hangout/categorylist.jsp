<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<br><br><br><br><br>
<!-- Javascript -->

<script src="/resources/js/jquery-1.12.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.backstretch.min.js"></script>
<script src="/resources/js/scripts_list.js"></script>

<!--  CSS -->
<link href="<c:url value='/resources/css/bootstrap.css"'/>"	rel="stylesheet" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"	rel="stylesheet">
<link href="<c:url value="/resources/css/album.css"/>" rel="stylesheet">


<!-- 검색 bar -->
<div class="row justify-content-center align-self-center">
	<div class="span6" style="float: none; margin: 0 auto;">
		<p></p>
		<div class="text-vertical-center">
			<h1>Search more CateGory</h1>

			<p></p>
			<div class="dropdown">
		        <select class="dropdown-select-version select" name="options" id="hangoutCategory">
			        <option value=""></option>
			        <c:forEach items="${categoryList}" var="cl">		    
			            <option value="${cl.text}">${cl.text}</option>      
			        </c:forEach>
		        </select>
		        <button class="btn btn-lg btn-dark" type="button" id="searchCg">Search</button>
		    </div>
			<p></p>
		</div>
	</div>
</div>
<!-- 모임 리스트 -->
<div id="list_body" class="row justify-content-center align-self-center"></div>
<script>
function callbackSql(results)
{
	var hangoutList = results;
	var str = "";
	for(var i = 0, max = hangoutList.length; i < max; i++)
	{
		var list = hangoutList[i];
		str += "<div class='col-sm-3'><div class='card'>";						
        str += "<img src=\"<c:url value='http://img.insight.co.kr/static/2017/06/23/700/u0bn4swj5g5dp29xzp74.jpg'/>\" >";											
        str += "<h4>"+list.hangoutName+"</h4>";							
        str += "</div></div>";
	}
	$("#list_body").html(str);
}

$("#searchCg").click(function(){
	var param = "hangoutCategory";
	var au = new AjaxUtil("select/category", param);
	au.setCallbackSuccess(callbackSql);
	au.send();
});

</script>
</html>