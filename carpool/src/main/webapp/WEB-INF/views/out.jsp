<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<form action="${pageContext.request.contextPath }/MemberOutController" method="post">
		<br>
		<table id="outTable">
			<tr>
				<td style="text-align:center">
				ȸ�� Ż�� �Ͻø� ȸ�� ���Խ�<br>
				�Է��Ͻ� ��� ������ �����˴ϴ�.<br><br>
				�׿� ���ÿ� KITRI Carpool �� ����ϸ鼭<br>
				�ۼ��Ͻ� �Խñ� ���� ���� �Բ� �����˴ϴ�.<br><br>
				<input type="password" name="pwd" placeholder="��й�ȣ"><br><br>
				�� �ȳ������� ��� Ȯ���Ͽ�����, �̿� �����Ͻø� Ż�� ������ ���Ͽ� "OUT" ��ư�� �����ּ���.<br><br><br>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="OUT" style="height: 100%; width: 100%"></td>
			</tr>
		</table>
		<br>
	</form>
</body>
</html>