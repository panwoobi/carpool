<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script type="text/javascript"
	src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
(function() {
  'use strict';

  window.addEventListener('load', function() {
    var form = document.getElementById('needs-validation');
    form.addEventListener('submit', function(event) {
      if (form.checkValidity() === false) {
        event.preventDefault();
        event.stopPropagation();
      }
      form.classList.add('was-validated');
    }, false);
  }, false);
})();
</script>

<body>
	<form class="border border-primary" action="boardFAdd" method="post" name="f"  id="needs-validation" novalidate >
		<table class="table">
			<tr>
				<th scope="row">작성자</th>
				  <td><input type="text" name="writer"></td>
<!-- 				<td><input type="hidden" name="writer" -->
<%-- 					value="${sessionScope.m.id }">${sessionScope.m.id}</td> --%>
			</tr>
			<tr>
<<<<<<< HEAD
				<label for="validationCustom03"><th scope="row">제목</th></label>
=======
				<th scope="row">����</th>
>>>>>>> branch 'master' of https://github.com/panwoobi/carpool.git
				<td><textarea class="form-control" rows="1"  name="title" id="validationCustom03"></textarea>
       </td>
			</tr>
			<tr>
				<th scope="row">내용</th>
				<td><textarea class="form-control" rows="5"  name="content"> </textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<input class="btn btn-primary" type="submit"value="작성"> 
				<input class="btn btn-default" type="button"value="목록"></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
</body>
</html>