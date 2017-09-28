<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
		                        			<h3>Step 1 / 3</h3>
		                            		<p>Tell us who you are:</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-user"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-first-name">First name</label>
				                        	<input type="text" name="form-first-name" placeholder="First name..." class="form-first-name form-control" id="form-first-name">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-last-name">Last name</label>
				                        	<input type="text" name="form-last-name" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-about-yourself">About yourself</label>
				                        	<textarea name="form-about-yourself" placeholder="About yourself..." 
				                        				class="form-about-yourself form-control" id="form-about-yourself"></textarea>
				                        </div>
				                        <button type="button" class="btn btn-next">Next</button>
				                    </div>
			                    </fieldset>
			                    
			                    <fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Step 2 / 3</h3>
		                            		<p>Set up your account:</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-key"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-email">Email</label>
				                        	<input type="text" name="form-email" placeholder="Email..." class="form-email form-control" id="form-email">
				                        </div>
				                        <div class="form-group">
				                    		<label class="sr-only" for="form-password">Password</label>
				                        	<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-repeat-password">Repeat password</label>
				                        	<input type="password" name="form-repeat-password" placeholder="Repeat password..." 
				                        				class="form-repeat-password form-control" id="form-repeat-password">
				                        </div>
				                        <button type="button" class="btn btn-previous">Previous</button>
				                        <button type="button" class="btn btn-next">Next</button>
				                    </div>
			                    </fieldset>
			                    
			                    <fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Step 3 / 3</h3>
		                            		<p>Social media profiles:</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-twitter"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-facebook">Facebook</label>
				                        	<input type="text" name="form-facebook" placeholder="Facebook..." class="form-facebook form-control" id="form-facebook">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-twitter">Twitter</label>
				                        	<input type="text" name="form-twitter" placeholder="Twitter..." class="form-twitter form-control" id="form-twitter">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-google-plus">Google plus</label>
				                        	<input type="text" name="form-google-plus" placeholder="Google plus..." class="form-google-plus form-control" id="form-google-plus">
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
        

    </body>

</html>