<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% if(login == true) {%>
<!DOCTYPE html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Multi Step Registration Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/css/form-elements.css">
        <link rel="stylesheet" href="resources/assets/css/style.css">


    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Hang out</strong> 모임 개설하기</h1>
                            <div class="description">
                            	<p>
	                            	내가 원하는 카테고리로 내가 원하는 HANG OUT 만들기!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	
                        	<form role="form" action="" method="post" class="registration-form">
                        		
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
				                    	<div class="form-group">
				                    		<div id="radioBtn" class="form-control"  >
    					<a id="city"  class="btn btn-login btn-sm active" data-toggle="happy" data-title="서울">서울</a>
    					<a id="city" class="btn btn-login btn-sm notActive" data-toggle="happy" data-title="인천">인천</a>
    					<a id="city" class="btn btn-login btn-sm notActive" data-toggle="happy" data-title="인천">경기</a>
    				   	</div>  				
				                        </div>
				                        <button type="button" class="btn btn-next">Next</button>
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
				                        	<label class="sr-only" for="form-email">Email</label>
				                        	<div name="form-email" placeholder="Email..." class="form-email form-control" id="form-email">
				                        	<select class="form-group">
				                        		<option>여행</option>
				                        		</select>
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
				                    		<label class="sr-only" for="form-facebook">City</label>
				                        	<input type="text" name="form-facebook" placeholder="Facebook..." class="form-facebook form-control" id="form-facebook">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-twitter">Category</label>
				                        	<input type="text" name="form-twitter" placeholder="Twitter..." class="form-twitter form-control" id="form-twitter">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-google-plus">Title</label>
				                        	<input type="text" name="form-google-plus" placeholder="Google plus..." class="form-google-plus form-control" id="form-google-plus">
				                        </div>
				                         <div class="form-group">
				                        	<label class="sr-only" for="form-content">Content</label>
				                        	<input type="text" name="form-content" placeholder="Content..." class="form-content form-control" id="form-content">
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


        <!-- Javascript -->
        <script src="resources/assets/js/jquery-1.11.1.min.js"></script>
        <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/jquery.backstretch.min.js"></script>
        <script src="resources/assets/js/retina-1.1.0.min.js"></script>
        <script src="resources/assets/js/scripts.js"></script>
       	<%} else {%>
       		<script>
       			alert("로그인을 해주세요");
       			location.href = ${rootPath}"/login";
       		</script>
       	<%} %>
		<script>
		$('#radioBtn a').on('click', function(){
		    var sel = $(this).data('title');
		    var tog = $(this).data('toggle');
		    $('#'+tog).val(sel);
		    if(sel=="서울"){
		     $("#city").val("서울");
		    }else if(sel=="인천"){
		     $("#city").val("인천");
		    }else{
		    	$("#city").val("경기");
		    }
		    
		    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
		    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
		})
		
		(document).ready(function()
		{
			var param = {};
			param["liCity"] = "서울";
			param["liKategorie"] = "게임";
			param["liTitle"] = "test";
			param["liContent"] = "test";
			param["liMeetTime"] = "11월20일";
			param["creUser"] = "박용성";
			var au = new AjaxUtil("insert/list");
			au.param = JSON.stringify(param);
			au.send();
		})
		</script>
    </body>
</html>