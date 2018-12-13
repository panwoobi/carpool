<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				5초 후에 메인페이지로 이동합니다.
				</td>
			</tr>
		</table>
	<br>
</body>
</html>