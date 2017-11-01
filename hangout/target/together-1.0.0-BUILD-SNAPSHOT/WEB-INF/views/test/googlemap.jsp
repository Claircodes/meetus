<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>$.geocomplete()</title>
<meta charset="UTF-8">

</head>
<body>

	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&amp;libraries=places"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

	<script src="/resources/js/jquery.geocomplete.js"></script>
	<script src="/resources/js/logger.js"></script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<form>
		<input id="geocomplete" type="text" placeholder="Type in an address"
			size="90" /> <input id="find" type="button" value="find" />
	</form>



	<pre id="logger">Log:</pre>



	<script>
		$(function() {

			$("#geocomplete").geocomplete().bind("geocode:result",
					function(event, result) {
						$.log("Result: " + result.vicinity);
					}).bind("geocode:error", function(event, status) {
				$.log("ERROR: " + status);
			}).bind("geocode:multiple", function(event, results) {
				$.log("Multiple: " + results.length + " results found");
			});  

			$("#find").click(function() {
				$("#geocomplete").trigger("geocode");
			});

			$("#examples a").click(function() {
				$("#geocomplete").val($(this).text()).trigger("geocode");
				return false;
			});

		});
	</script>
</body>
</html>