<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>
<style>

/* Bootstrap 수정 */
.table {
	width: 85%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px;
}
</style>
</head>
<script type="text/javascript">
	$(function() {
		$('#datetimepicker').appendDtpicker({
			'locale' : 'ko'
		});
	});
</script>
<body>
	<c:if test="${!(sessionScope.m.id eq b.writer)}">
		<c:set var="readonly" value="readonly" />
	</c:if>
	<div id="container">
		<form id="f" action="" method="post">
			<input type="hidden" name="num" value="${b.num }"> <input type="hidden" id="w" name="writer" value="${b.writer }"> <input type="hidden" name="seat" value="${b.seat}"> <input type="hidden" name="passenger1" value="${b.passenger1}"> <input type="hidden" name="passenger2" value="${b.passenger2}"> <input type="hidden" name="passenger3" value="${b.passenger3}"> <input type="hidden" id="sx" name="spx" value="${b.start_x }"> <input type="hidden" id="sy" name="spy" value="${b.start_y }"> <input type="hidden" id="ex" name="epx" value="${b.end_x }"> <input type="hidden" id="ey" name="epy" value="${b.end_y }">
			<table class="table table-striped table-bordered">
				<tr>
					<td style="width: 10%">작성자</td>
					<td style="width: 40%; text-align: left">${b.writer } <input type="button" class="btn btn-info" value="차량보기" id="car"></td>
					<td style="width: 50%" rowspan="11"><c:choose>
							<c:when test="${sessionScope.m.id eq b.writer}">
								<div id=div1></div>
							</c:when>
							<c:otherwise>
								<div id=div2></div>
							</c:otherwise>
						</c:choose></td>
				</tr>
				<tr>
					<td>유형</td>
					<td style="text-align: left"><c:choose>
							<c:when test="${sessionScope.m.id eq b.writer}">
								<select name="cate" id="cate">
									<c:choose>
										<c:when test="${b.cate eq '출근'}">
											<option value="출근" selected>출근</option>
											<option value="퇴근">퇴근</option>
											<option value="여가">여가</option>
											<option value="여행">여행</option>
											<option value="기타">기타</option>
										</c:when>
										<c:when test="${b.cate eq '퇴근'}">
											<option value="출근">출근</option>
											<option value="퇴근" selected>퇴근</option>
											<option value="여가">여가</option>
											<option value="여행">여행</option>
											<option value="기타">기타</option>
										</c:when>
										<c:when test="${b.cate eq '여가'}">
											<option value="출근">출근</option>
											<option value="퇴근">퇴근</option>
											<option value="여가" selected>여가</option>
											<option value="여행">여행</option>
											<option value="기타">기타</option>
										</c:when>
										<c:when test="${b.cate eq '여행'}">
											<option value="출근">출근</option>
											<option value="퇴근">퇴근</option>
											<option value="여가">여가</option>
											<option value="여행" selected>여행</option>
											<option value="기타">기타</option>
										</c:when>
										<c:when test="${b.cate eq '기타'}">
											<option value="출근">출근</option>
											<option value="퇴근">퇴근</option>
											<option value="여가">여가</option>
											<option value="여행">여행</option>
											<option value="기타" selected>기타</option>
										</c:when>
									</c:choose>
								</select>
							</c:when>
							<c:otherwise>
						${b.cate}
						</c:otherwise>
						</c:choose></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" class="form-control" aria-label="Default" name="title" value="${b.title }" placeholder="제목" ${readonly}></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea class="form-control" rows="10" name="content" style="resize: none" placeholder="EX) 즐거운 카풀 원해요" ${readonly}>${b.content }</textarea></td>
				</tr>
				<tr>
					<td>출발 위치</td>
					<td><input type="text" class="form-control" aria-label="Default" name="start_posi" value="${b.start_posi }" id="sp1" placeholder="옆의 지도에서 선택하세요" readonly></td>
				</tr>
				<tr>
					<td>도착 위치</td>
					<td><input type="text" class="form-control" aria-label="Default" name="end_posi" id="ep1" value="${b.end_posi }" placeholder="옆의 지도에서 선택하세요" readonly></td>
				</tr>
				<tr>
					<td>출발 시간</td>
					<td><c:choose>
							<c:when test="${sessionScope.m.id eq b.writer}">
								<input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" id="datetimepicker" name="start_time" value="${b.start_time }">
							</c:when>
							<c:otherwise>
								<input type="hidden" id="datetimepicker" name="start_time" value="${b.start_time }">
								<input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" id="datetimepicker" value="${b.start_time }" readonly>
							</c:otherwise>
						</c:choose></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" class="form-control" aria-label="Default" name="price" placeholder="원" value="${b.price }" ${readonly}></td>
				</tr>
				<tr>
					<td>수용 인원</td>
					<td style="text-align: left">${b.seat} / <c:choose>
							<c:when test="${sessionScope.m.id eq b.writer}">
								<c:choose>
									<c:when test="${b.maxSeat eq 1}">
										<select name="maxSeat">
											<c:choose>
												<c:when test="${b.seat eq 2}">
													<option value="2" selected>2</option>
													<option value="3">3</option>
												</c:when>
												<c:when test="${b.seat eq 3}">
													<option value="3" selected>3</option>
												</c:when>
												<c:otherwise>
													<option value="1" selected>1</option>
													<option value="2">2</option>
													<option value="3">3</option>
												</c:otherwise>
											</c:choose>
										</select>
									</c:when>
									<c:when test="${b.maxSeat eq 2}">
										<select name="maxSeat">
											<c:choose>
												<c:when test="${b.seat eq 2}">
													<option value="2" selected>2</option>
													<option value="3">3</option>
												</c:when>
												<c:when test="${b.seat eq 3}">
													<option value="3" selected>3</option>
												</c:when>
												<c:otherwise>
													<option value="1">1</option>
													<option value="2" selected>2</option>
													<option value="3">3</option>
												</c:otherwise>
											</c:choose>
										</select>
									</c:when>
									<c:when test="${b.maxSeat eq 3}">
										<select name="maxSeat">
											<c:choose>
												<c:when test="${b.seat eq 2}">
													<option value="2">2</option>
													<option value="3" selected>3</option>
												</c:when>
												<c:when test="${b.seat eq 3}">
													<option value="3" selected>3</option>
												</c:when>
												<c:otherwise>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3" selected>3</option>
												</c:otherwise>
											</c:choose>
										</select>
									</c:when>
								</c:choose>
							</c:when>
							<c:otherwise>
						${b.maxSeat}
						</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td>신청자</td>
					<td style="text-align: left">신청자 1 : ${b.passenger1} <c:if test="${b.maxSeat > 1}">
							<br>신청자 2 : ${b.passenger2}
					</c:if> <c:if test="${b.maxSeat > 2}">
							<br>신청자 3 : ${b.passenger3}
					</c:if>
					</td>
				</tr>
				<tr>
					<td colspan="2"><c:choose>
							<c:when test="${sessionScope.m.id eq b.writer}">
								<input type="button" class="btn btn-info" id="driverEdit" value="수정">
								<input type="button" class="btn btn-info" id="driverDel" value="삭제">
							</c:when>
							<c:when test="${(sessionScope.m.type eq 2) && (b.seat < b.maxSeat) && !((sessionScope.m.id eq b.passenger1) || (sessionScope.m.id eq b.passenger2) || (sessionScope.m.id eq b.passenger3))}">
								<input type="button" class="btn btn-info" id="driverRequestAdd" value="신청">
							</c:when>
							<c:when test="${ !empty sessionScope.m && ((sessionScope.m.id eq b.passenger1) || (sessionScope.m.id eq b.passenger2) || (sessionScope.m.id eq b.passenger3))}">
								<input type="button" class="btn btn-info" id="driverRequestDel" value="신청취소">
							</c:when>
						</c:choose> <input type="button" class="btn btn-info" id="driverList" value="목록"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>