<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@ include file="/resources/header/header.jsp"%>
<body>
	<br>
	<br>
	<table id="memberTable">
		<tr>
			<td style="width:60%" rowspan="7"><img style="height: 400px; width: auto;"
				src="${pageContext.request.contextPath }/img/${m.profile }"></td>
			<td style="width:20%">ID</td>
			<td style="width:20%">${m.id }</td>
		</tr>
		<tr>
			<td>E-mail</td>
			<td>${m.email }</td>
		</tr>
		<tr>
			<td>Name</td>
			<td>${m.name}</td>
		</tr>
		<tr>
			<td>Tel</td>
			<td>${m.tel}</td>
		</tr>
		<tr>
			<td>Sex</td>
			<c:choose>
				<c:when test="${m.sex ==0 }">
					<td>MAN</td>
				</c:when>
				<c:otherwise>
					<td>WOMAN</td>
				</c:otherwise>
			</c:choose>
		</tr>
		<tr>
			<td>Smoke</td>
			<c:choose>
				<c:when test="${m.isSmoke ==0 }">
					<td>NO</td>
				</c:when>
				<c:otherwise>
					<td>YES</td>
				</c:otherwise>
			</c:choose>
		</tr>
		<tr>
			<td colspan="2" style="text-align: right">
			<c:if test="${chkCar eq true }"><input type="hidden" id="w" value="${m.id}"><input type="button" id="car" value="차량보기"> </c:if>
			<input type="button" id="partnerList" value="목록"></td>
		</tr>
	</table>
	<br>
	<br>
</body>
<%@ include file="/resources/footer/footer.jsp"%>
</html>