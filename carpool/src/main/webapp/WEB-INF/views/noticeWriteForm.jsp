<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
.table {
  width: 85%;
  margin-left:auto;
  margin-right:auto;
  margin-top:50px;
  margin-bottom:50px;
}

</style>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.cleditor.css"/>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="resources/js/jquery.cleditor.min.js">
$(document).ready(function () {
	$('textarea#validationCustom04').cleditor(); 
});
</script>
<body>
	<form class="border border-primary" action="noticeWrite" method="post" name="f">
			<table class="table">
			<tr>
				<th scope="row">작성자</th>
				  <td><input type="text" name="writer"></td>
<!-- 				<td><input type="hidden" name="writer" -->
<%-- 					value="${sessionScope.m.id }">${sessionScope.m.id}</td> --%>
			</tr>
			<tr>
				<label for="validationCustom03"><th scope="row">제목</th></label>
				<td><textarea class="form-control" rows="1"  name="title" id="validationCustom03" required></textarea>
				<div class="invalid-feedback">Please provide a valid title.</div></td>
			</tr>
			<tr>
				<label for="validationCustom04"><th scope="row">내용</th></label>
				<td><textarea class="form-control" rows="5"  name="content"  id="validationCustom04" required></textarea>
				<div class="invalid-feedback">Please provide a valid content.</div></td>
			</tr>
			<tr>
				<td colspan="2">
				<input class="btn btn-primary" type="submit"value="작성"> 
				<a href="${pageContext.request.contextPath }/notice"><input class="btn btn-default" type="button"value="목록"></a></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
</body>
</html>