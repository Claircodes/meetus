<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="/resources/css/hangout.css" rel="stylesheet">
</head>

<body>

   <div id="fb-root"></div>
   <script>
      
   </script>
   <!-- Navigation -->

   <!-- Page Content -->
   <div class="container">

      <div class="row">

         <!-- Blog Entries Column -->
         <div class="col-md-8">


            <!-- Blog Post -->
            <div class="card mb-4">
               <h1 class="my-4">모임이름：</h1><input id="hangoutName" class='btn-link-2'/>
               <form method='post' enctype='multipart/form-data' action='imgup.jsp' ><input type='file' name='userPicture' class='btn-link-2'></form><input id='userPicture' class='btn-link-2' type='submit' value='upload' class='btn-link-2'>


               <div class="card-body">
                  <p class="card-text">${ListInfo.hangoutContent}<br>
                  ${ListInfo.hangoutCategory}
                  </p>
                  
                  
               </div>
               <div class="card-footer text-muted">
                  모임 기간 : ${ListInfo.hangoutOpenDate}- ${ListInfo.hangoutCloseDate}<br>
                  모임 날짜 : ${ListInfo.hangoutDate}
               </div>
            </div>

         <center><button class="btn btn-secondary" type="button" id="update">확인</button></center>
         
         <!-- Bootstrap core JavaScript -->
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
      integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
      crossorigin="anonymous"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
      integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
      crossorigin="anonymous"></script>