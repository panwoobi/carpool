<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
$('document').ready(function() {
	if(${chk != true} ) {
		window.location.replace("${pageContext.request.contextPath }/content/main.jsp");
	}
});
</script>
<body>
	<form action="${pageContext.request.contextPath }/CarAddController" method="post">
	<br>
		<table id="joinTable">
			<tr>
				<td style="width: 150px">���̼��� ��ȣ<br>������ȣ<br>����Ÿ�(km)<br>���Գ⵵<br>����<br>����</td>
				<td>
				<input type="text" name="license" placeholder="����11-111111-11"><br> 
				<input type="text" name="numberPlate" placeholder="11��1234"><br>
				<input type="text" name="mileage" placeholder="1000"> km<br>
				<input type="text" name="age" placeholder="1900"> ��<br>
				<input type="text" name="carName" placeholder="�ƹݶ�"><br>
				<input type="radio" name="carSize" value="0">����
				<input type="radio" name="carSize" value="1">����
				<input type="radio" name="carSize" value="2">����<br>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="REGISTER" style="height: 100%; width: 100%"></td>
			</tr>
		</table>
		<br>
	</form>
</body>
</html>