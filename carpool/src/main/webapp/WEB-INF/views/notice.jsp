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
<body>
<form class="border border-primary">
	<table class="table table-borderless">
		<tr>
			<td style="text-align: left; font-size: 16pt; font-weight: bold">
				<span class="glyphicon">&#xe135;</span>Notice</td>
		</tr>
		<tr>
<%-- 			<c:if test="${sessionScope.m.type == 0}"> --%>
				<td colspan="4" style="text-align: right"><a href="${pageContext.request.contextPath }/noticeWrite">
				<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> write </button></a>
				</td>
<%-- 			</c:if> --%>
		</tr>
		<tr>
			<td>
				<table class="table table-hover">
					<thead class="thead-light">
						<tr>
							<th scope="col">번호</th>
							<th scope="col">작성자</th>
							<th scope="col">제목</th>
							<th scope="col">작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td colspan="4">게시글이 없습니다.</td>
								</tr>
							</c:when>
							<c:when test="${!empty list }">
								<c:forEach var="b" items="${list }" varStatus="status">
									<tr>
										<th scope="row">${b.num}</th>
										<td scope="row">${b.writer}</td>
										<td scope="row"><a href="${pageContext.request.contextPath }/noticeEditForm?num=${b.num }">${b.title}</a></td>
										<td scope="row">${b.w_date}</td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
			</td>
		</tr>
	</table>
</form>
	<br><br>
</body>
</html>