<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>
</head>
<body>
	<form class="border border-primary" action="boardFEdit" method="post"
		name="f">
		<table class="table">
			<c:choose>
				<c:when test="${sessionScope.m.id==b.writer}">
					<tr>
						<th scope="row">�۹�ȣ</th>
						<td><input type="hidden" name="num" value="${b.num }"
							readonly>${b.num }</td>
					</tr>
					<tr>
						<th scope="row">�ۼ���</th>
						<td><input type="hidden" name="writer" value="${b.writer }"
							readonly>${b.writer }</td>
					</tr>
					<tr>
						<th scope="row">�ۼ���</th>
						<td><input type="hidden" name="w_date" value="${b.w_date }"
							readonly>${b.w_date }</td>
					</tr>
					<tr>
						<label for="validationCustom01">
						<th scope="row">����</th>
						</label>
						<td><textarea class="form-control" rows="1"
								id="validationCustom01" name="title" required>${b.title }</textarea></td>
					</tr>
					<tr>
						<label for="validationCustom02">
						<th scope="row">����</th>
						</label>
						<td><textarea class="form-control" rows="5"
								id="validationCustom02" name="content" required>${b.content}</textarea></td>
					</tr>
					<tr>
						<td colspan="10">
						<input class="btn btn-primary" type="submit" value="�ۼ�">
						<a href="${pageContext.request.contextPath }/boardFDel?num=${b.num }"><input class="btn btn-default" type="button" value="����"></a> 
						<input class="btn btn-default" type="button" value="���">
						
				</c:when>
				<c:when test="${sessionScope.m.id!=b.writer}">
					<tr>
						<th scope="row">�۹�ȣ</th>
						<td><input type="hidden" name="num" value="${b.num }"
							readonly>${b.num }</td>
					</tr>
					<tr>
						<th scope="row">�ۼ���</th>
						<td><input type="hidden" name="writer" value="${b.writer }"
							readonly>${b.writer }</td>
					</tr>
					<tr>
						<th scope="row">�ۼ���</th>
						<td><input type="hidden" name="w_date" value="${b.w_date }"
							readonly>${b.w_date }</td>
					</tr>
					<tr>
						<th scope="row">����</th>
						<td><textarea class="form-control" rows="1" name="title" value="${b.title }" readonly>${b.title }</textarea></td>
					</tr>
					<tr>
						<th scope="row">����</th>
						<td><textarea class="form-control" rows="5" name="content" readonly>${b.content}</textarea></td>
					</tr>
					<tr>
					<td colspan="10">
						<input class="btn btn-default" type="button" value="���">
				</c:when>
			</c:choose>
			</td>
			</tr>
		</table>
		<script>
			$('#validationCustom02').summernote({
				placeholder : '������ �ۼ��ϼ���',
				tabsize : 2,
				height : 100
			});
		</script>
		<tr>
			<%@ include file="boardFRep.jsp"%>
		</tr>
	</form>
	<br>
	<br>
</body>
</html>