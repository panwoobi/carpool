<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@ include file="/resources/header/header.jsp"%>
<body>
	<br><br>
	<form id="f" action="" method="post">
		<table id="board2">
			<tr>
				<td style="width:20%">�ۼ���</td>
				<td style="width:80%; text-align:left"><input type="hidden" name="writer"
					name="id" value="${sessionScope.m.id }">${sessionScope.m.id}</td>
			</tr>
			<tr>
				<td style="width:20%">����</td>
				<td style="width:80%"><input type="text" name="title"></td>
			</tr>
			<tr>
				<td style="width:20%">����</td>
				<td style="width:80%"><textarea style="resize: none;" name="content" rows="15"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" id="freeBoardWrite" value="�ۼ�">
					<input type="button" id="freeBoardList" value="���">
				</td>
			</tr>
		</table>
	</form>
	<br><br>
</body>
<%@ include file="/resources/footer/footer.jsp"%>
</html>