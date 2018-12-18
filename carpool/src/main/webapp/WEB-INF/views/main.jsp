<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
/*
Removes white gap between slides - chagnge to base color of slide images
*/
.carousel {
  background:#007aeb;
}

/*
Forces image to be 100% width and not max width of 100%
*/
.carousel-item .img-fluid {
  width:100%;
}

/* 
anchors are inline so you need ot make them block to go full width
*/
.carousel-item a {
  display: block;
  width:100%;
}
</style>
</head>
<body>
	<div id="carousel-2" class="carousel slide carousel-fade" data-ride="carousel" data-interval="6000">
		<div class="carousel-inner" role="listbox">

			<div class="carousel-item active carousel-item-left">
				<img src="${pageContext.request.contextPath}/resources/img/title1.png" alt="Los Angeles" class="d-block img-fluid">
			</div>
			<div class="carousel-item carousel-item-next carousel-item-left">
				<img src="${pageContext.request.contextPath}/resources/img/title2.png" alt="Los Angeles" class="d-block img-fluid">
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/resources/img/title3.png" alt="Los Angeles" class="d-block img-fluid">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carousel-2" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carousel-2" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>

	<div class="card-group">
   <div style="padding: 7px;"></div>
      <div class="card">
         <div style="padding: 10px;"></div>
         <i class="fa fa-car" style="font-size: 60pt; text-align: center;"></i>
         <%--          <a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a> --%>
         <div class="card-body">
            <h5 class="card-title" style="text-align:center">Registration</h5>
            <p class="card-text" style="text-align:center">차량등록하여 이용하기!</p>
         </div>
      </div>
      <div class="card">
      <div style="padding: 10px;"></div>
         <i class="fa fa-question" style="font-size: 60pt; text-align: center;"></i>
         <div class="card-body">
            <h5 class="card-title" style="text-align:center" >Carpool?</h5>
            <p class="card-text" style="text-align:center">카풀이란?</p>
         </div>
      </div>
      <div class="card">
      <div style="padding: 10px;"></div>
         <i class="fa fa-comments" style="font-size: 60pt; text-align: center;"></i>
         <%--          <a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/introduce.png" alt="Card image cap"></a> --%>
         <div class="card-body">
            <h5 class="card-title" style="text-align:center">Community</h5>
            <p class="card-text" style="text-align:center">사용자들과 의사소통하기!</p>
         </div>
      </div>
           
      <div class="card">
         <div style="padding: 10px;"></div>
         <i class="fa fa-sun-o" style="font-size: 60pt; text-align: center;"></i>
<%--                   <a href="${pageContext.request.contextPath }/weather.jsp"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/weather.png" alt="Card image cap"></a> --%>
         <div class="card-body">
            <h5 class="card-title" style="text-align:center">weather</h5>
           <a href="${pageContext.request.contextPath }/weather" ><p class="card-text" style="text-align:center">날씨 확인 하기!</p></a>
         </div>
      </div>
      
      <div class="card">
         <div style="padding: 10px;"></div>
         <i class="fa fa-building" style="font-size: 60pt; text-align: center;"></i>
         <%--          <a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a> --%>
         <div class="card-body">
            <h5 class="card-title" style="text-align:center">Recruit</h5>
            <p class="card-text" style="text-align:center">KITRI Carpool에 지원하기!</p>
         </div>
      </div>
   </div>
<!--    </main> -->
</body>
</html>