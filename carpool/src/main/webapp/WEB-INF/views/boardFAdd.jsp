<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
.table {
	width: 85%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px;
}
</style>

<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>

<body>
	<form class="border border-primary" action="boardFAdd" method="post" name="f">
		<table class="table">
			<tr>
				<th scope="row">작성자</th>
<!-- 				<td><input name="writer" type="text"></td> -->
          <td><input type="hidden" name="writer" value="${sessionScope.m.id }">${sessionScope.m.id}</td> 
			</tr>
			<tr>
				<th scope="row"><label for="validationCustom01">제목</label></th>
				<td><textarea class="form-control" rows="1" name="title" id="validationCustom01" required></textarea>
					<div class="invalid-feedback">Please provide a valid title.</div></td>
			</tr>
			<tr>
				<th scope="row"><label for="validationCustom02">내용</label></th>
				<td><textarea class="form-control" rows="5" name="content" id="validationCustom02" required></textarea>
					<div class="invalid-feedback">Please provide a valid content.</div></td>

			</tr>
			<tr>
				<td colspan="2"><input class="btn btn-primary" type="submit" value="작성"> <a href="${pageContext.request.contextPath }/boardFList"><input class="btn btn-default" type="button" value="목록"></a></td>
			</tr>
		</table>
		<script>
      $('#validationCustom02').summernote({
        placeholder: '내용을 입력하세요',
        tabsize: 2,
        height: 100
      });
    </script>
	</form>
	<br>
	<br>
</body>
</html>