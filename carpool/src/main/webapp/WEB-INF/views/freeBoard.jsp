<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@ include file="/resources/header/header.jsp"%>
<body>
	<table id="boardTable">
		<tr>
			<td style="text-align: left; font-size: 16pt; font-weight: bold"><br>
				<img src="${pageContext.request.contextPath }/img/point.png">
				FreeBoard</td>
		</tr>
		<tr>
			<c:if test="${!empty sessionScope.m.type }">
				<td colspan="4" style="text-align: right"><a
					href="${pageContext.request.contextPath }/content/freeBoardWriteForm.jsp"> <img
						src="${pageContext.request.contextPath }/img/write.png"></a></td>
			</c:if>
		</tr>
		<tr>
			<td>
				<table id="list">
					<tr>
						<td id="listSubject" style="width:10%">��ȣ</td>
						<td id="listSubject" style="width:15%">�ۼ���</td>
						<td id="listSubject" style="width:60%">����</td>
						<td id="listSubject" style="width:15%">�ۼ���</td>
					</tr>
					<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="4">�Խñ��� �����ϴ�.</td>
							</tr>
						</c:when>
						<c:when test="${!empty list }">
							<c:forEach var="b" items="${list }" varStatus="status">
								<tr>
									<td>${b.num}</td>
									<td>${b.writer}</td>
									<td><a href="${pageContext.request.contextPath }/Board2FreeBoardDetailController?num=${b.num }">${b.title}</a></td>
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
<%@ include file="/resources/footer/footer.jsp"%>
</html>