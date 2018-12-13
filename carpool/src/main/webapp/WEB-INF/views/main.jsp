<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
		<div class="card">
			<i class="fa fa-car" style="font-size: 100pt; text-align: center;"></i>
			<%-- 			<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a> --%>
			<div class="card-body">
				<h5 class="card-title">Driver Vehicle Registration</h5>
				<p class="card-text">지금 바로 차량을 등록하여 운전자로서 카풀 시스템을 만끽하세요!</p>
			</div>
		</div>
		<div class="card">
			<i class="fa fa-question" style="font-size: 100pt; text-align: center;"></i>
			<div class="card-body">
				<h5 class="card-title" >What is Carpool?</h5>
				<p class="card-text" >카풀이 무엇인지 궁금하시다구요? 지금 확인해보세요!</p>
			</div>
		</div>
		<div class="card">
			<i class="fa fa-comments" style="font-size: 100pt; text-align: center;"></i>
			<%-- 			<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/introduce.png" alt="Card image cap"></a> --%>
			<div class="card-body">
				<h5 class="card-title">Community</h5>
				<p class="card-text">사용자들과 의사소통을 할 수 있습니다!</p>
			</div>
		</div>
		<div class="card">
			<i class="fa fa-building" style="font-size: 100pt; text-align: center;"></i>
			<%-- 			<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a> --%>
			<div class="card-body">
				<h5 class="card-title">Recruit</h5>
				<p class="card-text">KITRI Carpool 에서 함께 일하고 싶으신가요?</p>
			</div>
		</div>
	</div>
	</main>
</body>
</html>