<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
.table {
  width: 85%;
  margin-left:auto;
  margin-right:auto;
  margin-top:50px;
  margin-bottom:50px;
}
</style>
<head>
</head>
<body>
	<br>
	<br>
	<form class="border border-primary" action="noticeEdit" method="post" name="f" >
		<table class="table">
		    <tr>
				<th scope="row">글번호</th>
				<td><input type="hidden" name="num" value="${b.num }" readonly>${b.num }</td>
			</tr>
			<tr>
				<th scope="row">작성자</th>
				<td><input type="hidden" name="writer" value="${b.writer }"readonly>${b.writer }</td>
			</tr>
			<tr>
				<th scope="row">작성일</th>
				<td><input type="hidden" name="w_date" value="${b.w_date }"readonly>${b.w_date }</td>
			</tr>
			<tr>
				<th scope="row">제목</th>
				<td><textarea class="form-control" rows="1" name="title">${b.title }</textarea></td>
			</tr>
			<tr>
				<th scope="row">내용</th>
				<td><textarea class="form-control" rows="5" name="content">${b.content}</textarea></td>
			</tr>
			<tr>
				<td colspan="10">
				     <c:choose>
						<c:when test="${sessionScope.m.id==b.writer}">
							<input class="btn btn-primary" type="submit" value="작성">
							<a href="${pageContext.request.contextPath }/noticeDel?num=${b.num }"><input class="btn btn-default" type="button" value="삭제"></a>
							<input class="btn btn-default" type="button" value="목록">
						</c:when>
						<c:when test="${sessionScope.m.id!=b.writer}">
							<input class="btn btn-default" type="button" value="목록">
						</c:when>
					</c:choose></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
</body>
</html>