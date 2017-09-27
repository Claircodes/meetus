<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="/resources/css/hangoutList.css">

<style>
.box1 { background: orange }
.inner1 { background: transparent }
</style>
<html>
  <body>

<br></br>

<div class="container">
    <!-- Callout -->
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>	HANG OUT</h1>
        <h2>	마음에 드는 모임을 찾아보세요!</h2>
      </div>
    </aside>
 	<div id="search" class="call-to-action bg-primary text-white">
      <div class="container">
    <!-- banner -->
     <div class="text-vertical-center">
    <h3>Searach more HANG OUT</h3>
    <div class="searchbar">
      <div class="row">
        <div class="col-lg-6 col-sm-6">
          <input type="text" class="form-control" placeholder="Search of Hangout's Title ">
          <div class="row">
            <div class="col-lg-6 col-sm-6">
              <select class="form-control">
                <option>Seoul</option>
                <option>Busan</option>
                <option>Daegu</option>
              </select>
            </div>
            <div class="col-lg-6 col-sm-6">
              <select class="form-control">
                <option>Category</option>
                <option>$150,000 - $200,000</option>
                <option>$200,000 - $250,000</option>
                <option>$250,000 - $300,000</option>
                <option>$300,000 - above</option>
              </select>
            </div>
              <div class="col-lg-3 col-sm-4">
              <button class="btn btn-success"  onclick="'">Find Now</button>
              </div>
          </div>
          
          
        </div>
        <div class="col-lg-5 col-lg-offset-1 col-sm-6 ">
          <p>Join now and get updated with all the properties deals.</p>
           <a href="#" class="btn btn-lg btn-dark" >모임 알아보기</a>
                 </div>
      </div>
    </div>
  </div>
</div>
 	</div>
 	
    <div class="row">
          <div class="col-md-6">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-xs-3 col-md-3 text-center">
                        <img src="http://bootsnipp.com/apple-touch-icon-114x114-precomposed.png" alt="bootsnipp"
                            class="img-rounded img-responsive" />
                    </div>
                    <div class="col-xs-9 col-md-9 section-box">
                        <h3>
                            모임제목1 <a href="http://bootsnipp.com/" target="_blank"><span class="glyphicon glyphicon-new-window">
                            </span></a>
                        </h3>
                        <p>
                           여기다가 해당모임정보 콘텐츠 잘라불러오기</p>
                        <hr />
                        <div class="row rating-desc">
                            <div class="col-md-12">
                                행사 날짜 불러오기
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-xs-3 col-md-3 text-center">
                          <img src="http://bootsnipp.com/apple-touch-icon-114x114-precomposed.png" alt="bootsnipp"
                            class="img-rounded img-responsive" />
                    
                    </div>
                    <div class="col-xs-9 col-md-9 section-box">
                        <h3>
                            모임제목2 <a href="http://www.naver.com/" target="_blank"><span class="glyphicon glyphicon-new-window">
                            </span></a>
                        </h3>
                        <p>
                           행사내용불러오기1</p>
                            <hr />
                        <div class="row rating-desc">
                            <div class="col-md-12">
                                행사날짜불러오기
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <p>--넣어야 되는기능-----------------<p>
    <br>태그에 해당하는 모임제목, 내용 불러오기.
    <br>박스별로 클릭시 해당 모임 페이지로 이동하는 링크연결~~!</p>
    <br>모임에서 올린 대표프로필 사진 불러오기~~~!
    <br>
        <br><p></p><p></p><p></p><p></p><p></p>
            <br>
                <br>
                    
    <br>
</div>
</body>
</html>


