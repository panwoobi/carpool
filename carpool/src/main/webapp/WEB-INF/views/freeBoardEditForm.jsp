<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<br>
	<br>
	<form id="f" action="" method="post">
		<table id="board2">
			<tr>
				<td>�۹�ȣ</td>
				<td style="text-align:left"><input type="hidden" name="num" value="${b.num }" readonly>${b.num }</td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td style="text-align:left"><input type="hidden" name="writer" value="${b.writer }" readonly>${b.writer }</td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td style="text-align:left"><input type="hidden" name="w_date" value="${b.w_date }" readonly>${b.w_date }</td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="title" value="${b.title }"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea style="resize: none;" name="content" rows="15">${b.content }</textarea></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<c:choose>
						<c:when test="${sessionScope.m.id==b.writer}"><input type="button" value="����" id="freeBoardEdit">
										<input type="button" value="����" id="freeBoardDel">
						</c:when>
					</c:choose>
					<input type="button" value="���" id="freeBoardList">
				</td>
			</tr>
		</table>
	</form>
	<br>
	<br>
</body>
</html>