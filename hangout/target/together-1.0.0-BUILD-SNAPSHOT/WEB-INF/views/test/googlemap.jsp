<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	<div id="map"></div>
	<script>
		var map;
		function initMap() {
			var myLatlng = new google.maps.LatLng(37.564615, 126.98420299999998);
			var myOptions = {
				zoom : 19,
				center : myLatlng,
				mapTypeId : google.maps.MapTypeId.ROADMAP
			}

			map = new google.maps.Map(document.getElementById("map"), myOptions);
			//클릭했을 때 이벤트
			google.maps.event.addListener(map, 'click', function(event) {
				
				alert(event.latLng);
//마커			placeMarker(event.latLng);
//				infowindow.setContent("latLng: " + event.latLng); // 인포윈도우 안에 클릭한 곳위 좌표값을 넣는다.
//				infowindow.setPosition(event.latLng); // 인포윈도우의 위치를 클릭한 곳으로 변경한다.
			});
			//클릭 했을때 이벤트 끝
			//인포윈도우의 생성
/**			var infowindow = new google.maps.InfoWindow(
					{
						content : '<br><b>원하는 위치을 클릭</b>하면 좌표값생성<br> <b>복사하여 좌료값 입력</b>하십시요',
						size : new google.maps.Size(50, 50),
						position : myLatlng
					});
			infowindow.open(map);
			**/
		} // function initialize() 함수 끝

		// 마커 생성 합수
/**		function placeMarker(location) {
			var clickedLocation = new google.maps.LatLng(location);
			var marker = new google.maps.Marker({
				position : location,
				map : map
			});
			map.setCenter(location);
		}
		**/
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnNHGDeUJba3qaZeX2cGp4M1WTf1QGLGI&callback=initMap"
		async defer></script>

</body>
</html>