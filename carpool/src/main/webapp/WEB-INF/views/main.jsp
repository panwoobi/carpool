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
		<div class="card">
			<i class="fa fa-car" style="font-size: 100pt; text-align: center;"></i>
			<%-- 			<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a> --%>
			<div class="card-body">
				<h5 class="card-title">Driver Vehicle Registration</h5>
				<p class="card-text">吏�湲� 諛�濡� 李⑤���� �깅����� �댁����濡��� 移댄�� ���ㅽ���� 留��쏀���몄��!</p>
			</div>
		</div>
		<div class="card">
			<i class="fa fa-question" style="font-size: 100pt; text-align: center;"></i>
			<div class="card-body">
				<h5 class="card-title" >What is Carpool?</h5>
				<p class="card-text" >移댄���� 臾댁���몄� 沅�湲������ㅺ뎄��? 吏�湲� ���명�대낫�몄��!</p>
			</div>
		</div>
		<div class="card">
			<i class="fa fa-comments" style="font-size: 100pt; text-align: center;"></i>
			<%-- 			<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/introduce.png" alt="Card image cap"></a> --%>
			<div class="card-body">
				<h5 class="card-title">Community</h5>
				<p class="card-text">�ъ�⑹���ㅺ낵 ���ъ���듭�� �� �� ���듬����!</p>
			</div>
		</div>
		<div class="card">
			<i class="fa fa-building" style="font-size: 100pt; text-align: center;"></i>
			<%-- 			<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a> --%>
			<div class="card-body">
				<h5 class="card-title">Recruit</h5>
				<p class="card-text">KITRI Carpool ���� �④� �쇳��怨� �띠�쇱��媛���?</p>
			</div>
		</div>
	</div>
	</main>
</body>
</html>