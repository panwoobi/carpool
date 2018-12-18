<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 24,cityid: '1835848',appid: '6e1b0b6da113f8e45c77421c2f83a3dd',units: 'metric',containerid: 'openweathermap-widget-24',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = "utf-8";script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();</script>

<footer class="text-muted">
<br>
	<div class="container">
		<div id="openweathermap-widget-24" style="float:left"></div>
	<div style="float:right"> &copy; 2018 Company, Inc. KITRI &middot; <a href="${pageContext.request.contextPath }/privacy">Privacy</a> &middot; <a href="${pageContext.request.contextPath }/terms">Terms</a>
	</div>
	</div>	
</footer>