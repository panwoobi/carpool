<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/resources/library/library.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/carpool.css">
</head>
<body>
	<%@ include file="/resources/header/header.jsp"%>




	<main role="main">




	<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/title1.png" alt="First slide">
				<div class="container">
					<div class="carousel-caption text-left">
						<h1>같은길, 함께가는 즐거움 KITRI Carpool</h1>
						<p>You are happy to have a co-worker to accompany me on my way to work.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/title2.png" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>언제 어디서든, 24시간 매칭 서비스 지원</h1>
						<p>Select the desired origin and destination and click on the matching option.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/title3.png" alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>


	<div class="card-group">
		<div class="card">
	<div class="card" style="width: 18rem;">
		<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/registration.png" alt="Card image cap"></a>
		<div class="card-body">
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		</div>
	</div>
	</div>

		<div class="card">
	<div class="card" style="width: 18rem;">
		<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/recruit1.png" alt="Card image cap"></a>
		<div class="card-body">
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		</div>
	</div>
	</div>

		<div class="card">
	<div class="card" style="width: 18rem;">
		<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/introduce.png" alt="Card image cap"></a>
		<div class="card-body">
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		</div>
	</div>
	</div>
		<div class="card">
	<div class="card" style="width: 18rem;">
		<a href="${pageContext.request.contextPath }/CarChkController"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/img/introduce.png" alt="Card image cap"></a>
		<div class="card-body">
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		</div>
	</div>
	</div>
	</div>
	<td style="background-color: #333f50; width: 20%; text-align: center; text-size: 30pt; color: #ffffff">Quick Menu</td>
	<td style="background-color: #e0e9f3; width: 20%; text-align: center; margin-top: 20px"><a href="intro.jsp"><img src="../img/introduce.png"></a></td>
	<td style="background-color: #e0e9f3; width: 20%; text-align: center"></td>
	<td style="background-color: #e0e9f3; width: 20%; text-align: center"><a href="recruit.jsp"><img src="../img/recruit1.png"></a></td>
	<td style="background-color: #e0e9f3; width: 20%; text-align: center"><a href="${pageContext.request.contextPath }/Board2FreeBoardListController"><img src="../img/community.png"></a></td>

	<div class="card-group">
		<div class="card">
			<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
				<div class="card-header">Header</div>
				<div class="card-body">
					<h5 class="card-title">Primary card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>

		<div class="card">
			<div class="card text-white bg-secondary mb-3" style="max-width: 18rem;">
				<div class="card-header">Header</div>
				<div class="card-body">
					<h5 class="card-title">Secondary card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				</div>
			</div>

		</div>
		<div class="card">
			<div class="card text-white bg-success mb-3" style="max-width: 18rem;">
				<div class="card-header">Header</div>
				<div class="card-body">
					<h5 class="card-title">Success card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card text-white bg-success mb-3" style="max-width: 18rem;">
				<div class="card-header">Header</div>
				<div class="card-body">
					<h5 class="card-title">Success card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
	</div>







	</div>
	<!-- /.container --> <!-- FOOTER --> <footer class="container">
		<p class="float-right">
			<a href="#">Back to top</a>
		</p>
		<p>
			&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a>
		</p>
	</footer> </main>




	<div id="mainPage">
		<table>
			<tr>
				<td style="background-color: #333f50; width: 20%; text-align: center; text-size: 30pt; color: #ffffff">Quick Menu</td>
				<td style="background-color: #e0e9f3; width: 20%; text-align: center; margin-top: 20px"><a href="intro.jsp"><img src="../img/introduce.png"></a></td>
				<td style="background-color: #e0e9f3; width: 20%; text-align: center"><a href="${pageContext.request.contextPath }/CarChkController"><img src="../img/registration.png"></a></td>
				<td style="background-color: #e0e9f3; width: 20%; text-align: center"><a href="recruit.jsp"><img src="../img/recruit1.png"></a></td>
				<td style="background-color: #e0e9f3; width: 20%; text-align: center"><a href="${pageContext.request.contextPath }/Board2FreeBoardListController"><img src="../img/community.png"></a></td>
			</tr>
		</table>
		<table>
			<tr>
				<td id="b2"><a href="http://www.kma.go.kr"><img src="../img/weather.png"></img></a></td>
				<td id="b2"><a href="https://search.naver.com/search.naver?where=nexearch&sm=top_sly.hst&fbm=1&acr=1&ie=utf8&query=%EC%98%A4%EB%8A%98%EC%9D%98%EC%9A%B4%EC%84%B8"><img src="../img/fortune.png"></img></a></td>
				<td id="b2"><a href="https://www.carhistory.or.kr"><img src="../img/accident.png"></img></a></td>
				<td id="b2"><a href="http://www.kitri.re.kr"><img src="../img/kitri.png"></img></a></td>
			</tr>
		</table>
	</div>
	<%@ include file="/resources/footer/footer.jsp"%>
</body>
</html>