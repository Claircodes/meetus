<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
   if (login == true) {
%>
<!DOCTYPE html>
<head>



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Multi Step Registration Form Template</title>

<!-- CSS -->
<link rel="stylesheet"
   href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
   href="resources/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/form-elements.css">
<link rel="stylesheet" href="resources/assets/css/style.css">


<!-- Javascript -->
<script src="resources/assets/js/jquery-1.11.1.min.js"></script>
<script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/assets/js/jquery.backstretch.min.js"></script>
<script src="resources/assets/js/retina-1.1.0.min.js"></script>
<script src="resources/assets/js/scripts.js"></script>


</head>

<body>


   <!-- Top content -->
   <div class="top-content">
      <div class="inner-bg">
         <div class="container">
            <div class="row">
               <div class="col-sm-8 col-sm-offset-2 text">
                  <h1>
                     <strong>Hang out</strong> 모임 개설하기
                  </h1>
                  <div class="description">
                     <p>내가 원하는 카테고리로 내가 원하는 HANG OUT 만들기!</p>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-6 col-sm-offset-3 form-box">

                  <form role="form" action="" method="post"
                     class="registration-form">

                     <fieldset>
                        <div class="form-top">
                           <div class="form-top-left">
                              <h3>지역 선택</h3>
                              <p>모임을 개최하고자하는 위치를 선택하여 주세요.</p>
                           </div>
                           <div class="form-top-right">
                              <i class="fa fa-user"></i>
                           </div>
                        </div>
                        
                        <div class="form-bottom">
                              <button type="button" class="btn2 btn2-default btn-lg">
                                    서울
                                 </button>
                                 <button type="button" class="btn2 btn2-default btn-lg">
                                    인천
                                 </button>
                                 <button type="button" class="btn2 btn2-default btn-lg">
                                    부산
                                 </button>
                                 <button type="button" class="btn2 btn2-default btn-lg">
                                    부산
                                 </button>
                                    <button type="button" class="btn2 btn2-default btn-lg">
                                    부산
                                 </button>
                                    <button type="button" class="btn2 btn2-default btn-lg">
                                    부산
                                 </button>
                                    <button type="button" class="btn2 btn2-default btn-lg">
                                    부산
                                 </button>
                           
                           </div>
                           
                           <div class="form-bottom">
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
                              <div class="col-md-6">
                                 <td>선택 지역 : </td><input type="text" name="cityname" id="cityname" >
                                 <div class="funkyradio">
                                    <div class="funkyradio-default">
                                       <input type="checkbox" name="chk_cate[]" id="checkbox_ca1"
                                          value="PET" /> <label for="checkbox_ca1">PET</label>
                                    </div>
                                    <div class="funkyradio-primary">
                                       <input type="checkbox" name="chk_cate[]" id="checkbox_ca2"
                                          value="MUSIC" /> <label for="checkbox_ca2">MUSIC</label>
                                    </div>
                                    <div class="funkyradio-success">
                                       <input type="checkbox" name="chk_cate[]" id="checkbox_ca3"
                                          value="LANGUAGE" /> <label for="checkbox_ca3">LANGUAGE</label>
                                    </div>
                                    <div class="funkyradio-danger">
                                       <input type="checkbox" name="chk_cate[]" id="checkbox_ca4"
                                          value="DRINK" /> <label for="checkbox_ca4">DRINK</label>
                                    </div>
                                    <div class="funkyradio-warning">
                                       <input type="checkbox" name="chk_cate[]" id="checkbox_ca5"
                                          value="BOOK" /> <label for="checkbox_ca5">BOOK</label>
                                    </div>
                                    <div class="funkyradio-info">
                                       <input type="checkbox" name="chk_cate[]" id="checkbox_ca6"
                                          value="FOOD" /> <label for="checkbox_ca6">FOOD</label>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <button type="button" class="btn btn-previous">Previous</button>
                           <button id="next2" type="button" class="btn btn-next">Next</button>
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
                           <td>선택 지역 : </td><input type="text" name="cityname2" id="cityname2" >
                           <td>선택 카테고리 : </td><input type="text" name="catename" id="catename" >
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-twitter">Category</label> <input
                                 type="text" name="form-twitter" placeholder="Twitter..."
                                 class="form-twitter form-control" id="form-twitter">
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-google-plus">Title</label> <input
                                 type="text" name="form-google-plus"
                                 placeholder="Google plus..."
                                 class="form-google-plus form-control" id="form-google-plus">
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-content">Content</label> <input
                                 type="text" name="form-content" placeholder="Content..."
                                 class="form-content form-control" id="form-content">
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
   <script>
   var rowid = '';         //체크된 지역 값들
   var rowid_ca = ''; //체크된 카테고리 값들
   $("#next1").click(function() {
   var chk = document.getElementsByName("chk_unit[]"); // 체크박스객체를 담는다
   var len = chk.length;    //체크박스의 전체 개수
   var checkRow = '';      //체크된 체크박스의 value를 담기위한 변수
   var checkCnt = 0;        //체크된 체크박스의 개수
   var checkLast = '';      //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기위한 변수                
   var cnt = 0;

   for(var i=0; i<len; i++){

   if(chk[i].checked == true){
   checkCnt++;        //체크된 체크박스의 개수
   checkLast = i;     //체크된 체크박스의 인덱스
   }
   } 

   for(var i=0; i<len; i++){

   if(chk[i].checked == true){  //체크가 되어있는 값 구분
   checkRow = chk[i].value;
   
   if(checkCnt == 1){                            //체크된 체크박스의 개수가 한 개 일때,
      rowid += "'"+checkRow+"'";        //'value'의 형태 (뒤에 ,(콤마)가 붙지않게)
      }else{                                            //체크된 체크박스의 개수가 여러 개 일때,
      if(i == checkLast){                     //체크된 체크박스 중 마지막 체크박스일 때,
      rowid += "'"+checkRow+"'";  //'value'의 형태 (뒤에 ,(콤마)가 붙지않게)
      }else{
      rowid += "'"+checkRow+"',";    //'value',의 형태 (뒤에 ,(콤마)가 붙게)                  
      }
   }
   cnt++;
   alert(checkRow);
   checkRow="";
   }
   $("#cityname").val(rowid);
   }
   });
   
      $("#next2").click(function() {
   var chk_ca = document.getElementsByName("chk_cate[]"); // 체크박스객체를 담는다
   var len_ca = chk_ca.length;    //체크박스의 전체 개수
   var checkRow_ca = '';      //체크된 체크박스의 value를 담기위한 변수
   var checkCnt_ca = 0;        //체크된 체크박스의 개수
   var checkLast_ca = '';      //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기위한 변수                            
   var cnt_ca = 0;
   
   for(var i=0; i<len_ca; i++){

   if(chk_ca[i].checked == true){
   checkCnt_ca++;        //체크된 체크박스의 개수
   checkLast_ca = i;     //체크된 체크박스의 인덱스
   }
   } 

   for(var i=0; i<len_ca; i++){

   if(chk_ca[i].checked == true){  //체크가 되어있는 값 구분

   checkRow_ca = chk_ca[i].value;

   if(checkCnt_ca == 1){                            
      rowid_ca += "'"+checkRow_ca+"'";        
      }else{                                            
      if(i == checkLast_ca){                     
      rowid_ca += "'"+checkRow_ca+"'"; 
      }else{
      rowid_ca += "'"+checkRow_ca+"',";          
      }
   }
   cnt_ca++;
   alert(checkRow_ca);
   checkRow_ca="";
   }
   $("#cityname2").val(rowid);
   $("#catename").val(rowid_ca);
   }
   });
   </script>

   <%
      } else {
   %>
   <script>
                alert("로그인을 해주세요");
                location.href = ${rootPath}"/login";
             </script>
   <%
      }
   %>
</body>
</html>s