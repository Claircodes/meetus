<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
    
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/list.css">

</body>

    <div class="container">
    <p></p><p></p><br></br><p></p><p></p>
       <div style="background: #fff; background : rgba(0, 0, 0, 0.5);">
	
		<!-- 검색 bar -->
		<body class="container-fluid">
			<div class="row justify-content-center align-self-center">
				<div class="span6" style="float: none; margin: 0 auto;">
					<p></p>
					<div class="text-vertical-center">
						<h1>Search more HANG OUT</h1>
					
					<p></p>
					<input type="text-center" class="form-control"
						placeholder="원하시는 모임의 이름을 검색 해보세요." id="hangoutName">
						<p></p>
						 <a href="#" class="btn btn-lg btn-dark" type="button" id="searchLists">모임 알아보기</a>
					<p></p>
				</div>
				</div>
			</div>
		</body>


<!-- 모임 리스트 -->
         <div id="list_body">
         </div>
		

</div>
	</div>

      <!-- Javascript -->
        <script src="resources/assets/js/jquery-1.11.1.min.js"></script>
        <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/jquery.backstretch.min.js"></script>
        <script src="resources/assets/js/retina-1.1.0.min.js"></script>
        <script src="resources/assets/js/scripts-list.js"></script>
        

    </body>
    <script>
    $(document).ready(function(){
    	var paramIds="hangoutName";
    	var au = new AjaxUtil("select/list",paramIds);
        au.send();
    });
    $("#searchLists").click(function(){
    	var hangoutName= $("#hangoutName").val().trim();
		if(hangoutName==""){
			alert("모임이름을 입력해주세요");
			return
		}
		var paramIds="hangoutName";
    	var au = new AjaxUtil("select/list",paramIds);
        au.send();
    });
    </script>
</html>