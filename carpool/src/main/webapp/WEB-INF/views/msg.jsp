<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	$('document').ready(function() {
		setTimeout(function() {
			window.location.replace("${pageContext.request.contextPath }/content/main.jsp");
		}, 5000);
	});
</script>
<body>
	<br>
		<table>
			<tr>
				<td style="text-align:center">
				<img src="${pageContext.request.contextPath }/img/loading.gif"><br><br>
				${msg}<br><br>
				5�� �Ŀ� ������������ �̵��մϴ�.
				</td>
			</tr>
		</table>
	<br>
</body>
</html>