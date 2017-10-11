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
                           <input type="radio" class="btn btn-default btn-lg"
                              name="chk_unit" value="서울" id="radio0">서울 </input> <input
                              type="radio" class="btn btn-default btn-lg" name="chk_unit"
                              value="인천" id="radio1"> 인천 </input> <input type="radio"
                              class="btn btn-default btn-lg" name="chk_unit" value="부산"
                              id="radio2"> 부산 </input> <input type="radio"
                              class="btn btn-default btn-lg" name="chk_unit" value="대전"
                              id="radio3"> 대전 </input> <input type="radio"
                              class="btn btn-default btn-lg" name="chk_unit" value="대구"
                              id="radio4"> 대구 </input> <input type="radio"
                              class="btn btn-default btn-lg" name="chk_unit" value="광주"
                              id="radio5"> 광주 </input> <input type="radio"
                              class="btn btn-default btn-lg" name="chk_unit" value="울산"
                              id="radio6"> 울산 </input>

                        </div>

                        <div class="form-bottom">
                           <button id="next1" type="button" class="btn btn-next">Next</button>


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
                                 <td>선택 지역 :</td> <input type="text" name="cityname"
                                    id="cityname">
                                 <div class="funkyradio">
                                    <div class="funkyradio-default">
                                       <input type="radio" name="chk_cate[]" id="checkbox_ca1"
                                          value="PET" /> <label for="checkbox_ca1">PET</label>
                                    </div>
                                    <div class="funkyradio-primary">
                                       <input type="radio" name="chk_cate[]" id="checkbox_ca2"
                                          value="MUSIC" /> <label for="checkbox_ca2">MUSIC</label>
                                    </div>
                                    <div class="funkyradio-success">
                                       <input type="radio" name="chk_cate[]" id="checkbox_ca3"
                                          value="LANGUAGE" /> <label for="checkbox_ca3">LANGUAGE</label>
                                    </div>
                                    <div class="funkyradio-danger">
                                       <input type="radio" name="chk_cate[]" id="checkbox_ca4"
                                          value="DRINK" /> <label for="checkbox_ca4">DRINK</label>
                                    </div>
                                    <div class="funkyradio-warning">
                                       <input type="radio" name="chk_cate[]" id="checkbox_ca5"
                                          value="BOOK" /> <label for="checkbox_ca5">BOOK</label>
                                    </div>
                                    <div class="funkyradio-info">
                                       <input type="radio" name="chk_cate[]" id="checkbox_ca6"
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
                              <td>선택 지역 :</td> <input type="text" name="hangoutArea"
                                 id="hangoutArea" readonly></br>
                              <td>선택 카테고리 :</td> <input type="text" name="hangoutCategory"
                                 id="hangoutCategory" readonly></br>
                              <td>작성자 :</td> <input type="text" name="hangoutCreator"
                                 id="hangoutCreator" value=<%=user.getUserId()%>  readonly>
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-google-plus">Title</label> <input
                                 type="text" name="hangoutName" placeholder="Title..."
                                 class="form-google-plus form-control" id="hangoutName">
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-content">Content</label> <input
                                 type="text" name="hangoutContent" placeholder="Content..."
                                 class="form-content form-control" id="hangoutContent" >
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-content">OpenDate</label> <input
                                 type="text" name="hangoutOpenDate" placeholder="OpenDate..."
                                 class="form-content form-control" id="hangoutOpenDate">
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-twitter">CloseDate</label> <input
                                 type="text" name="hangoutCloseDate" placeholder="CloseDate..."
                                 class="form-twitter form-control" id="hangoutCloseDate">
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-twitter">Date</label> <input
                                 type="text" name="hangoutDate" placeholder="Date..."
                                 class="form-twitter form-control" id="hangoutDate">
                           </div>
                           <div class="form-group">
                              <label class="sr-only" for="form-twitter">Tag</label> <input
                                 type="text" name="hangoutTag" placeholder="Tag..."
                                 class="form-twitter form-control" id="hangoutTag">
                           </div>

                           <button type="button" class="btn btn-previous">Previous</button>
                           <button id="hang_signup" type="button" class="btn">Sign me up!</button>
                        </div>
                     </fieldset>

                  </form>

               </div>
            </div>
         </div>
      </div>

   </div>
   <script>
   var checkRow = '';         //체크된 지역 값들
   var checkRow_ca = ''; //체크된 카테고리 값들
   
   $("#next1").click(function() {
   var chk = document.getElementsByName("chk_unit"); // 체크박스객체를 담는다
   var len = chk.length;    //체크박스의 전체 개수
   var checkCnt = 0;        //체크된 체크박스의 개수                

   for(var i=0; i<len; i++){

   if(chk[i].checked == true){
      checkCnt++;
      if(checkCnt == 1){                           
         checkRow = chk[i].value;        
         }
      alert(checkRow);
   }
   }
   if(checkCnt==0){
      alert("지역을 선택하시오");
      location.reload();
   }
   $("#cityname").val(checkRow);
   });
   
      $("#next2").click(function() {
   var chk_ca = document.getElementsByName("chk_cate[]"); // 체크박스객체를 담는다
   var len_ca = chk_ca.length;    //체크박스의 전체 개수
   var checkCnt_ca = 0;
   
   for(var i=0; i<len_ca; i++){

   if(chk_ca[i].checked == true){
      checkCnt_ca++;
      if(checkCnt_ca==1){
         checkRow_ca = chk_ca[i].value;   
      }
      alert(checkRow_ca);
   }
   }
   if(checkCnt_ca==0){
      alert("카테고리를 선택하시오");
   }
  
   $("#hangoutArea").val(checkRow);
   $("#hangoutCategory").val(checkRow_ca);
   });
      
   $("#hang_signup").click(function() {
          var paramIds = "hangoutArea,hangoutCategory,hangoutCreator,hangoutName,hangoutContent,hangoutOpenDate,hangoutCloseDate,hangoutDate,hangoutTag";
          var au = new AjaxUtil("insert/list",paramIds);
          au.send();
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
</html>