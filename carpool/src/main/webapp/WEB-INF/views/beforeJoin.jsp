<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
  $(document).ready(function() {
    setTimeout(function() {
      //alert($('#capt').attr("path"));
      $('#capt').attr("src", "img/" + $('#capt').attr("path"));
    }, 5000);
  });
</script>
<body>
	<form
		action="${pageContext.request.contextPath }/CaptchaResultController"
		method="post">
		<input type="hidden" name="key" value="${key }"> <br>
		<table style="text-align: center">
			<tr>
				<td><img src="" id="capt" path="${img }"></td>
			</tr>
			<tr>
				<td><input type="text" name="input"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="SUBMIT"></td>
			</tr>
		</table>
		<br>
	</form>
</body>
</html>