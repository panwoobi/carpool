<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	<br>
	<br>
	<form class="border border-primary" name="f" action="boardFEdit" method="post">
		<table id="table">
			<tr>
				<th scope="row">�۹�ȣ</th>
				<td><input type="hidden" name="num" value="${b.num }" readonly>${b.num }</td>
			</tr>
			<tr>
				<th scope="row">�ۼ���</th>
				<td><input type="hidden" name="writer" value="${b.writer }"readonly>${b.writer }</td>
			</tr>
			<tr>
				<th scope="row">�ۼ���</th>
				<td><input type="hidden" name="w_date" value="${b.w_date }"readonly>${b.w_date }</td>
			</tr>
			<tr>
				<th scope="row">����</th>
				<td><textarea class="form-control" rows="1" name="title">${b.title }</textarea></td>
			</tr>
			<tr>
				<th scope="row">����</th>
				<td><textarea class="form-control" rows="5" name="content">${b.content}</textarea></td>
			</tr>
			<tr>
				<td colspan="10">
				     <c:choose>
						<c:when test="${sessionScope.m.id==b.writer}">
							<input class="btn btn-primary" type="submit" value="�ۼ�">
							<a href="${pageContext.request.contextPath }/boardFDel?num=${b.num }"><input class="btn btn-default" type="button" value="����"></a>
							<input class="btn btn-default" type="button" value="���">
						</c:when>
						<c:when test="${sessionScope.m.id!=b.writer}">
							<input class="btn btn-default" type="button" value="���">
						</c:when>
					</c:choose></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
</body>
</html>