<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<form action="${pageContext.request.contextPath }/MemberEditController" method="post" enctype="multipart/form-data">
	<br>
		<table id="editInfoTable">
			<tr>
				<td style="width: 150px">���̵�<br>����  ��й�ȣ<br>�� ��й�ȣ<br>�̸�<br>�̸���<br>��ȭ��ȣ<br>����(����� ���)<br>��������<br>����<br>������</td>
				<td>
				<input type="text" name="id" value="${m.id }" readonly><br> 
				<input type="password" name="oldPwd" placeholder="�Է� �ʿ�"><br> 
				<input type="password" name="newPwd" placeholder="������ ��쿡 �Է�"><br>  
				<input type="text" name="name" value="${m.name }" readonly><br> 
				<input type="email" name="email" value="${m.email }"><br>
				<input type="tel" name="tel" value="${m.tel }"><br>
				<input type="file" name="profile"><br>
				<c:if test="${m.type == 0}">������</c:if>
				<c:if test="${m.type == 1}">������</c:if>
				<c:if test="${m.type == 2}">ž����</c:if><br>
				<c:if test="${m.sex == 0}">����</c:if>
				<c:if test="${m.sex == 1}">����</c:if><br>
				<input type="radio" name="isSmoke" value="1" <c:if test="${m.isSmoke == 1}">checked</c:if>>Yes
				<input type="radio" name="isSmoke" value="0" <c:if test="${m.isSmoke == 0}">checked</c:if>>No<br>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="EDIT" style="height: 100%; width: 100%"></td>
			</tr>
		</table>
	<br>
	</form>
</body>
</html>