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
<body>
	<br>
	<br>
	<form class="border border-primary" action="boardFAdd" method="post" name="f" >
		<table class="table">
			<tr>
				<th scope="row">�ۼ���</th>
				  <td><input type="text" name="writer"></td>
<!-- 				<td><input type="hidden" name="writer" -->
<%-- 					value="${sessionScope.m.id }">${sessionScope.m.id}</td> --%>
			</tr>
			<tr>
				<th scope="row">����</th>
				<td><textarea class="form-control" rows="1"  name="title"></textarea></td>
			</tr>
			<tr>
				<th scope="row">����</th>
				<td><textarea class="form-control" rows="5"  name="content"> </textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<input class="btn btn-primary" type="submit"value="�ۼ�"> 
				<input class="btn btn-default" type="button"value="���"></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
</body>
</html>