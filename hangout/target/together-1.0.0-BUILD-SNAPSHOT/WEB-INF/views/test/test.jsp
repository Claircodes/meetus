<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->

		<link rel="stylesheet" href="/resources/css/form-elements.css">
        <link rel="stylesheet" href="/resources/css/style.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

</style>

<div class="interior container clearfix">
   <div class="row"> 

      <div class="col-xs-12 col-sm-6 col-md-4 moreBox" >
         <div class="item">
            <img src="https://www.solodev.com/assets/fancy/travel5.jpg">
            <div class="blogTxt">
               <div class="blogCategory">
                  <a href="/">Virtual Reality</a>
               </div>
               <h2>
                  2222222222222222222222222222
               </h2>
               <p class="post_intro hidden-xs">
                  2`2`2`2`2`2`2`2`2
               </p>
            </div>
         </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-4 moreBox" >
         <div class="item">
            <img src="https://www.solodev.com/assets/fancy/travel6.jpg">
            <div class="blogTxt">
               <div class="blogCategory">
                  <a href="/">Internet of Things (IoT)</a>
               </div>
               <h2>
                  333333333333333333
               </h2>
               <p class="post_intro hidden-xs">
                  `3`3`3`3`3`3`3`3
               </p>
            </div>
         </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-4 moreBox" >
         <div class="item">
            <img src="https://www.solodev.com/assets/fancy/travel9.jpg">
            <div class="blogTxt">
               <div class="blogCategory">
                  <a href="/">Artifical Intelligence</a>
               </div>
               <h2>
                  4444444444444444444
               </h2>
               <p class="post_intro hidden-xs">
                  `4`4`4`4`4`4`4`4
               </p>
            </div>
         </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-4 moreBox" style="display: none;">
         <div class="item">
            <img src="https://www.solodev.com/assets/fancy/travel7.jpg">
            <div class="blogTxt">
               <div class="blogCategory">
                  <a href="/">Big Data</a>
               </div>
               <h2>
                 5555555555555555555
               </h2>
               <p class="post_intro hidden-xs">
                 `5`5`5`5`5`5`5`5`5`5`5
               </p>
            </div>
         </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-4 moreBox" style="display: none;">
         <div class="item">
            <img src="https://www.solodev.com/assets/fancy/travel8.jpg">
            <div class="blogTxt">
               <div class="blogCategory">
                  <a href="/">Growth Hacking</a>
               </div>
               <h2>
                 6666666666666666666
               </h2>
               <p class="post_intro hidden-xs">
                 `66`6`6`6`6`6`6`6`6`6`6
               </p>
            </div>
         </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-4 moreBox" style="display: none;">
         <div class="item">
            <img src="https://www.solodev.com/assets/fancy/travel2.jpg">
            <div class="blogTxt">
               <div class="blogCategory">
                  <a href="/">Content Marketing</a>
               </div>
               <h2>
                  7777777777777777777777
               </h2>
               <p class="post_intro hidden-xs">
                  ``7`7`7`7`7`77`7`7`7`7`7`7`
               </p>
            </div>
         </div>
      </div>
      <div id="loadMore" style="">
         <a href="#"><button type="button" class="btn">load more</button></a>
      </div>
   </div>
</div>



<script>
$( document ).ready(function () {
		$(".moreBox").slice(0, 9).show();
		$("#loadMore").on('click', function (e) {
			e.preventDefault();
			$(".moreBox:hidden").slice(0, 9).slideDown();
			if ($(".moreBox:hidden").length == 0) {
				$("#loadMore").fadeOut('slow');
			}
		});
	});
</script>

 

</html>