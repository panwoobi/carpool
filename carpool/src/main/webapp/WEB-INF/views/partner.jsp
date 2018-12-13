<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<table id="boardTable">
		<tr>
			<td style="text-align: left; font-size: 16pt; font-weight: bold"><br>
				<img src="${pageContext.request.contextPath }/img/point.png">
				Partner</td>
		</tr>
		<tr>
			<td>
				<table id="list">
					<tr>
						<td id="listSubject" style="width: 10%">제목</td>
						<td id="listSubject" style="width: 15%">출발</td>
						<td id="listSubject" style="width: 15%">도착</td>
						<td id="listSubject" style="width: 10%">출발시간</td>
						<td id="listSubject" style="width: 10%">운전자</td>
						<td id="listSubject" style="width: 10%">탑승자1</td>
						<td id="listSubject" style="width: 10%">탑승자2</td>
						<td id="listSubject" style="width: 10%">탑승자3</td>
						<td id="listSubject" style="width: 10%">금액</td>
					</tr>
					<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="9">파트너가 없습니다.</td>
							</tr>
						</c:when>
						<c:when test="${!empty list }">
							<c:forEach var="b" items="${list }" varStatus="status">
								<tr>
									<c:choose>
										<c:when test="${b.type eq 0 }">
											<td><a
												href="${pageContext.request.contextPath }/Board1DriverDetailController?num=${b.num }">${b.title}</a></td>
										</c:when>
										<c:when test="${b.type eq 1 }">
											<td><a
												href="${pageContext.request.contextPath }/Board1PassengerDetailController?num=${b.num }">${b.title}</a></td>
										</c:when>
									</c:choose>
									<td>${b.startPosi}</td>
									<td>${b.endPosi}</td>
									<td>${b.startTime}</td>
									<td><a
										href="${pageContext.request.contextPath}/MemberDetailController?id=${b.driver}">${b.driver}</a></td>
									<td><a
										href="${pageContext.request.contextPath}/MemberDetailController?id=${b.passenger1}">${b.passenger1}</a></td>
									<c:choose>
										<c:when test="${b.passenger2!=null }">
											<td><a
												href="${pageContext.request.contextPath}/MemberDetailController?id=${b.passenger2}">${b.passenger2}</a></td>
										</c:when>
										<c:when test="${b.passenger2==null }">
											<td>-</td>
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${b.passenger3!=null }">
											<td><a
												href="${pageContext.request.contextPath}/MemberDetailController?id=${b.passenger3}">${b.passenger3}</a></td>
										</c:when>
										<c:when test="${b.passenger3==null }">
											<td>-</td>
										</c:when>
									</c:choose>
									<td>${b.price}원</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</table>
			</td>
		</tr>
	</table>
	<br>
	<br>
</body>
</html>