<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
   <main role="main">
   <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
         <div class="carousel-item active">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/title1.png" alt="First slide">
         </div>
         <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/title2.png" alt="Second slide">
         </div>
         <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/title3.png" alt="Third slide">
         </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
      </a> <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
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
         <i class="fa fa-building" style="font-size: 60pt; text-align: center;"></i>
         <%--          <a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a> --%>
         <div class="card-body">
            <h5 class="card-title" style="text-align:center">Recruit</h5>
            <p class="card-text" style="text-align:center">KITRI Carpool에 지원하기!</p>
         </div>
      </div>
   </div>
   </main>
</body>
</html>