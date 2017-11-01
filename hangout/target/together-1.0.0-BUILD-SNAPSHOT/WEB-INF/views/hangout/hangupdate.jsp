<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
					<h1 class="my-4">${ListInfo.hangoutName}</h1>
					<img class="card-img-top"
						src="https://pbs.twimg.com/media/Cq5tz18VUAAFT5q.jpg"
						alt="Card image cap">

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

				<!-- Pagination -->
				<p></p>
				<ul class="pagination justify-content-center mb-4">
					<li class="page-item"><a class="page-link" href="#">←
							Older</a></li>
					<li class="page-item disabled"><a class="page-link" href="#">Newer
							→</a></li>
				</ul>

			</div>
			
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