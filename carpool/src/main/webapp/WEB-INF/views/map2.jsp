<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=xXLVpp7s9U_1DSsciPkB&amp;submodules=panorama"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=xXLVpp7s9U_1DSsciPkB&submodules=geocoder"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=xXLVpp7s9U_1DSsciPkB&amp;submodules=drawing"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/map.css">
<div id="wrap" class="section">
	<div id="map" style="width: 100%; height: 600px;">
		<div class="buttons">
			<input id="startM" type="button" value="출발지로" class="control-btn" /> <input id="endM" type="button" value="도착지로" class="control-btn" />
		</div>
	</div>
	<code id="snippet" class="snippet"></code>
</div>
<script type="text/javascript">
    var sx = Number(parent.document.getElementById("sx").value);
    var sy = Number(parent.document.getElementById("sy").value);
    var ex = Number(parent.document.getElementById("ex").value);
    var ey = Number(parent.document.getElementById("ey").value);

    var map = new naver.maps.Map("map", {
    center : new naver.maps.LatLng(37.3595316, 127.1052133),
    zoom : 10,
    mapTypeControl : true
    });
    
	var coord1 = {lat: sy, lng: sx};
	var coord2 = {lat: ey, lng: ex};


    $("#endM").on("click", function(e) {
      e.preventDefault();
      map.panTo(coord2);
    });
  
    $("#startM").on("click", function(e) {
      e.preventDefault();
      map.panTo(coord1);
    });


    function initGeocoder() {

      polyline = new naver.maps.Polyline({
      map : map,
      path : [ [ sx, sy ], [ ex, ey ] ],
      strokeColor : '#5347AA',
      strokeWeight : 2
      });
      var point1 = new naver.maps.Point(sx, sy);
      var point2 = new naver.maps.Point(ex, ey);

      mark1 = new naver.maps.Marker({
      map : map,
      position : point1
      });
      mark2 = new naver.maps.Marker({
      map : map,
      position : point2
      });

      mark1.setIcon({
      url : '${pageContext.request.contextPath}/resources/img/start.png',
      size : new naver.maps.Size(70, 60),
      });
      mark2.setIcon({
	  url : '${pageContext.request.contextPath}/resources/img/end.png',
      size : new naver.maps.Size(70, 60),
      });
    }

    naver.maps.onJSContentLoaded = initGeocoder;
  </script>
<div>
	<input type="hidden" id="src1"> <input type="hidden" id="des1"> <input type="hidden" id="src2"> <input type="hidden" id="des2">
</div>