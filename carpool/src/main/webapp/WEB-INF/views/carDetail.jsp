<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/img/favicon.ico"
	type="image/x-icon" />
<link rel="icon"
	href="${pageContext.request.contextPath }/img/favicon.ico"
	type="image/x-icon" />
<title>${c.owner} �� ��������</title>
<style>

#listSubject {
	text-align: center;
	background-color: #d9d9d9;
}

table#carDetail {
	text-align: center;
	margin: auto;
	width: 100%;
	margin-top : 0px;
	text-align: center;
}

</style>
</head>
<body>
		<c:choose>
			<c:when test="${c==null}">
				<tr><td>������ ������� �ʾ���</td></tr>
			</c:when>
			<c:otherwise>
			<table id="carDetail">
				<tr>
					<td id="listSubject" style="width:5%">���̼��� ��ȣ</td>
					<td id="listSubject" style="width:5%">������ȣ</td>
					<td id="listSubject" style="width:5%">����Ÿ�</td>
					<td id="listSubject" style="width:5%">���Գ⵵</td>
					<td id="listSubject" style="width:5%">������</td>
					<td id="listSubject" style="width:5%">����</td>
				</tr>
				<tr>
							<td>${c.license}</td>
							<td>${c.numberPlate}</td>
							<td>${c.mileage} km</td>
							<td>${c.age} ��</td>
							<td>${c.carName}</td>
							<td>
							<c:choose><c:when test="${c.carSize eq 0}">����</c:when><c:when test="${c.carSize eq 1}">����</c:when><c:when test="${c.carSize eq 2}">����</c:when></c:choose></td>
				</tr>
			</table>
			</c:otherwise>
		</c:choose>
</body>
</html>