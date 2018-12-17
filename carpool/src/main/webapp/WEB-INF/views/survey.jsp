<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<h1>설문조사</h1>
<form action="${pageContext.request.contextPath }/SurveyController" method="post" enctype="multipart/form-data">
	<br>
		<table id="surveyTable" align="center" >
			<tr>
				<td style="width: 150px">
				작성자 아이디</td><td>	<input type="text" name="member" placeholder="hong@naver.com" required></td>
				</tr>
				<tr>
				<td style="width: 150px">
				탑승한 운전자</td><td><input type="text" name="driver" placeholder="홍길동"></td>
				</tr>
				<tr>
				<td style="width: 150px">
				평점(5점 만점)</td><td><input type="text" name="star" placeholder="3"></td> 
				</tr>
				<tr>
				<td style="width: 150px">
				불편사항</td><td><input type="text" name="complain" placeholder="의견을 적어주세요"></td> 
				</tr>
				<tr>
				<td style="width: 150px">
				기타의견</td><td><input type="text" name="opinion" placeholder="기타 의견을 적어주세요"></td> 
			
				
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="설문 작성 완료" style="height: 100%; width: 100%"></td>
			</tr>
		</table>
		<br>
	</form>
<!--    </main> -->
</body>
</html>