<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>	
<script type="text/javascript">
  $(function() {
    $('.datetimepicker').appendDtpicker({
      'locale' : 'ko'
    });
  });
</script>
<body>
	<c:if test="${!(sessionScope.m.id eq b.writer)}">
		<c:set var="readonly" value="readonly" />
	</c:if>
	<br><br>
	<form id="f" action="" method="post">
		<input type="hidden" name="num" value="${b.num }">
		<input type="hidden" id="w" name="writer" value="${b.writer }">
		<input type="hidden" name="seat" value="${b.seat}">
		<input type="hidden" name="passenger1" value="${b.passenger1}">
		<input type="hidden" name="passenger2" value="${b.passenger2}">
		<input type="hidden" name="passenger3" value="${b.passenger3}">
		<input type="hidden" id="sx" name="spx" value="${b.startX }">
		<input type="hidden" id="sy" name="spy" value="${b.startY }">
		<input type="hidden" id="ex" name="epx" value="${b.endX }">
		<input type="hidden" id="ey" name="epy" value="${b.endY }">
		<table id="board1">
			<tr>
				<td style="width:10%">�ۼ���</td>
				<td style="width:40%;text-align: left">${b.writer } <input type= "button" value="��������"  id= car></td>
				<td style="width:50%" rowspan="11"><c:choose>
						<c:when test="${sessionScope.m.id eq b.writer}">
							<div id=div1></div>
						</c:when>
						<c:otherwise>
							<div id=div2></div>
						</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<td>����</td>
				<td style="text-align: left"><c:choose>
						<c:when test="${sessionScope.m.id eq b.writer}">
							<select name="cate" id="cate">
								<c:choose>
									<c:when test="${b.cate eq '���'}">
										<option value="���" selected>���</option>
										<option value="���">���</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="��Ÿ">��Ÿ</option>
									</c:when>
									<c:when test="${b.cate eq '���'}">
										<option value="���">���</option>
										<option value="���" selected>���</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="��Ÿ">��Ÿ</option>
									</c:when>
									<c:when test="${b.cate eq '����'}">
										<option value="���">���</option>
										<option value="���">���</option>
										<option value="����" selected>����</option>
										<option value="����">����</option>
										<option value="��Ÿ">��Ÿ</option>
									</c:when>
									<c:when test="${b.cate eq '����'}">
										<option value="���">���</option>
										<option value="���">���</option>
										<option value="����">����</option>
										<option value="����" selected>����</option>
										<option value="��Ÿ">��Ÿ</option>
									</c:when>
									<c:when test="${b.cate eq '��Ÿ'}">
										<option value="���">���</option>
										<option value="���">���</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="��Ÿ" selected>��Ÿ</option>
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
				<td>����</td>
				<td><input type="text" name="title" value="${b.title }" placeholder="����" ${readonly}></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea rows="10" name="content"
						style="resize: none" placeholder="EX) ��ſ� īǮ ���ؿ�" ${readonly}>${b.content }</textarea></td>
			</tr>
			<tr>
				<td>��� ��ġ</td>
				<td><input type="text" name="startPosi" value="${b.startPosi }"	id="sp1" placeholder="���� �������� �����ϼ���" readonly>
				</td>
			</tr>
			<tr>
				<td>���� ��ġ</td>
				<td>
				<input type="text" name="endPosi" id="ep1" value="${b.endPosi }" placeholder="���� �������� �����ϼ���" readonly>
				</td>
			</tr>
			<tr>
				<td>��� �ð�</td>
				<td><c:choose>
						<c:when test="${sessionScope.m.id eq b.writer}">
							<input type="text" class="datetimepicker" name="startTime"
								value="${b.startTime }">
						</c:when>
						<c:otherwise>
							<input type="hidden" class="datetimepicker" name="startTime"
								value="${b.startTime }">
							<input type="text" value="${b.startTime }" readonly>
						</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="price" placeholder="��"
					value="${b.price }" ${readonly}></td>
			</tr>
			<tr>
				<td>���� �ο�</td>
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
				<td>��û��</td>
				<td style="text-align: left">
					��û�� 1 : ${b.passenger1}
					<c:if test="${b.maxSeat > 1}">
						<br>��û�� 2 : ${b.passenger2}
					</c:if>
					<c:if test="${b.maxSeat > 2}">
						<br>��û�� 3 : ${b.passenger3}
					</c:if>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<c:choose>
						<c:when test="${sessionScope.m.id eq b.writer}">
							<input type="button" id="driverEdit" value="����">
							<input type="button" id="driverDel" value="����">
						</c:when>
						<c:when
							test="${(sessionScope.m.type eq 2) && (b.seat < b.maxSeat) && !((sessionScope.m.id eq b.passenger1) || (sessionScope.m.id eq b.passenger2) || (sessionScope.m.id eq b.passenger3))}">
							<input type="button" id="driverRequestAdd" value="��û">
						</c:when>
						<c:when
							test="${ !empty sessionScope.m && ((sessionScope.m.id eq b.passenger1) || (sessionScope.m.id eq b.passenger2) || (sessionScope.m.id eq b.passenger3))}">
							<input type="button" id="driverRequestDel" value="��û���">
						</c:when>
					</c:choose> <input type="button" id="driverList" value="���">
				</td>
			</tr>
		</table>
	</form>
	<br><br>
</body>
</html>