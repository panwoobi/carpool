<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	margin: auto;
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
		<form action="${pageContext.request.contextPath }/driverListSearch" method="post">
			<input type="text" name="startPosi" placeholder="출발지역"> <input type="text" name="endPosi" placeholder="도착지역"> <input type="submit" value="Search">
		</form>

		<div id="list">
			<b>게시판 (전체 글: ${totalCount})</b>
		</div>

		<div id="write">
			<a class="btn btn-default right" href="${pageContext.request.contextPath }/driverWriteForm">글쓰기</a>
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
									<td><img id="viewProfile" src="${b.profile }" class="img-thumbnail"><br>${b.writer}</td>
									<td><a href="${pageContext.request.contextPath }/driverDetail?num=${b.num }">${b.title}</a></td>
									<td>${b.start_posi}</td>
									<td>${b.end_posi}</td>
									<td>${b.cate}</td>
									<td>${b.seat}/${b.maxSeat}</td>
									<td>${b.price}원</td>
									<td>${b.w_date}</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>