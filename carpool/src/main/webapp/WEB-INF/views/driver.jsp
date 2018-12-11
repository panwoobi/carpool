<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>

#list {
	text-align: center;
}

#write {
	text-align: right;
}

/* Bootstrap 수정 */
.table {
	width: 85%;
	margin:auto;
}
.table>thead {
	background-color: #b3c6ff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
	/* 위 속성들을 한 줄로 표기하기 */
	/* -webkit-animation: blink 1.5s ease infinite; */
}
</style>
</head>
<body>
	<div id="container">
		<div align="right">
			<!-- Login 검증 -->
			<!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
			<c:if test="${!empty sessionScope.m}">
				<%-- <%@include file="loginOk.jsp" %> --%>
			</c:if>
			<c:if test="${empty sessionScope.m}">
				<%-- <%@include file="login.jsp" %> --%>
			</c:if>
		</div>


		<form action="${pageContext.request.contextPath }/Board1SearchController?t=0" method="post">
			<input type="text" name="startPosi" placeholder="출발지역"> <input type="text" name="endPosi" placeholder="도착지역"> <input type="submit" value="Search">
		</form>

		<div id="list">
			<b>게시판 (전체 글: ${totalCount})</b>
		</div>

		<div id="write">
			<a href="${pageContext.request.contextPath }/driverWriteForm">글쓰기</a>
		</div>

		<div>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th width="5%">번호</th>
						<th width="10%">작성자</th>
						<th width="20%">제목</th>
						<th width="15%">출발</th>
						<th width="15%">도착</th>
						<th width="10%">유형</th>
						<th width="5%">자리</th>
						<th width="10%">금액</th>
						<th width="10%">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="article" items="${articles}" varStatus="status">
						<tr>
							<td>${article.articleNumber}</td>
							<td id="title">
								<c:if test="${article.depth > 0}">
	                  				&nbsp;&nbsp;
	                  			</c:if>
	                  			<a href="/bbs/content.bbs?articleNumber=${article.articleNumber}&pageNum=${pageNum}">${article.title}</a>
<%-- 	                  			<c:if test="${article.hit >= 20}"> --%>
<!-- 									<span class="hit">hit!</span> -->
<%-- 								</c:if> --%>
							</td>
							<td>${article.id}</td>
							<td>${article.writeDate}</td>
							<td>${article.hit}</td>
							
							
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
									<td><a href="${pageContext.request.contextPath }/Board1DriverDetailController?num=${b.num }">${b.title}</a></td>
									<td>${b.startPosi}</td>
									<td>${b.endPosi}</td>
									<td>${b.cate}</td>
									<td>${b.seat}/ ${b.maxSeat}</td>
									<td>${b.price}원</td>
									<td>${b.w_date}</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
					</c:forEach>
				</tbody>
			</table>

			<!-- Paging 처리 -->
			<div id="paging">${pageCode}</div>
		</div>

	</div>
</body>
</html>