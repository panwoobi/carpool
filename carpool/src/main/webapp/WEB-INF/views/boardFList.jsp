<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
				<span class="glyphicon">&#x2709;</span>FreeBoard</td>
		</tr>
		<tr>
		    <td colspan="4" style="text-align: right">
<%-- 			<c:if test="${!empty sessionScope.m.type }"> --%>
				<a href="${pageContext.request.contextPath }/boardFAdd">
				<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-pencil"></span> write </button>
				</a>
<%-- 			</c:if> --%>
			</td>
		</tr>
		<tr>
		<td>
				<table class="table table-hover">
					<thead class="thead-light">
						<tr>
							<th scope="col">��ȣ</th>
							<th scope="col">�ۼ���</th>
							<th scope="col">����</th>
							<th scope="col">�ۼ���</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td colspan="4">�Խñ��� �����ϴ�.</td>
								</tr>
							</c:when>
							<c:when test="${!empty list }">
								<c:forEach var="b" items="${list }" varStatus="status">
									<tr>
										<th scope="row">${b.num}</th>
										<td scope="row">${b.writer}</td>
										<td scope="row"><a href="${pageContext.request.contextPath }/boardFEditForm?num=${b.num }">${b.title}</a></td>
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
	<br>
	<br>
</body>
</html>