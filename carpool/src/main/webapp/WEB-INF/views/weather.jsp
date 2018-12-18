
<style>
/*
Removes white gap between slides - chagnge to base color of slide images
*/
.carousel {
	background: #007aeb;
}

/*
Forces image to be 100% width and not max width of 100%
*/
.carousel-item .img-fluid {
	width: 50px;
}

/* 
anchors are inline so you need ot make them block to go full width
*/
.carousel-item a {
	display: block;
	width: 100%;
}
</style>
<br>
<script>window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 15,cityid: '1835848',appid: '6e1b0b6da113f8e45c77421c2f83a3dd',units: 'metric',containerid: 'openweathermap-widget-1',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = "utf-8";script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();</script>
<!-- <script>window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 15,cityid: '1838524',appid: '6e1b0b6da113f8e45c77421c2f83a3dd',units: 'metric',containerid: 'openweathermap-widget-2',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = "utf-8";script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();</script> -->
<!-- <script>window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 15,cityid: '1835329',appid: '6e1b0b6da113f8e45c77421c2f83a3dd',units: 'metric',containerid: 'openweathermap-widget-4',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = "utf-8";script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();</script> -->

<div class="container">
<table>
<tr><td><div id="openweathermap-widget-1"></div></td>
<!-- <td> <div id="openweathermap-widget-2"></div></td> -->
<!-- <td> <div id="openweathermap-widget-4"></div></td> -->
</tr>
</table>
</div>