<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
	<table id="boardTable">
		<tr>
			<td style="text-align: left; font-size: 16pt; font-weight: bold"><br>
				<img src="${pageContext.request.contextPath }/img/point.png">
				Passenger</td>
		</tr>
		<tr>
			<td style="text-align: left">
				<form action="${pageContext.request.contextPath }/Board1SearchController?t=1" method="post">
					<input type="text" name="startPosi" placeholder="출발지역"> 
					<input type="text" name="endPosi" placeholder="도착지역">
					<input type="submit" value="Search">
				</form>
			</td>
		</tr>
		<%--여기부터 --%>
		<c:choose>
			<c:when test="${sessionScope.m.type eq 2 }">
				<tr>
					<td style="text-align: right">
						<a href="${pageContext.request.contextPath }/content/passengerWriteForm.jsp">
							<img src="${pageContext.request.contextPath }/img/write.png">
						</a>
					</td>
				</tr>
			</c:when>
		</c:choose>
		<%--여기까지 --%>
		<tr>
			<td>
				<table id="list">
					<tr>
						<td id="listSubject" style="width:5%">번호</td>
						<td id="listSubject" style="width:10%">작성자</td>
						<td id="listSubject" style="width:20%">제목</td>
						<td id="listSubject" style="width:15%">출발</td>
						<td id="listSubject" style="width:15%">도착</td>
						<td id="listSubject" style="width:10%">유형</td>
						<td id="listSubject" style="width:5%">자리</td>
						<td id="listSubject" style="width:10%">금액</td>
						<td id="listSubject" style="width:10%">작성일</td>
					</tr>
					<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="9">게시글이 없습니다.</td>
							</tr>
						</c:when>
						<c:when test="${!empty list }">
							<c:forEach var="b" items="${list }" varStatus="status">
								<tr>
									<td>${b.num}</td>
									<td><img id="viewProfile" src="${pageContext.request.contextPath }/img/${b.profile }"><br>${b.writer}</td>
									<td><a href="${pageContext.request.contextPath }/Board1PassengerDetailController?num=${b.num }">${b.title}</a></td>
									<td>${b.startPosi}</td>
									<td>${b.endPosi}</td>
									<td>${b.cate}</td>
									<td>${b.seat} / ${b.maxSeat}</td>
									<td>${b.price}원</td>
									<td>${b.w_date}</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</table>
			</td>
		</tr>
	</table>
	<br><br>
</body>
</html>