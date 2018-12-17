<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>
</head>
<body>
	<br>
	<br>
	<form class="border border-primary" action="noticeEdit" method="post" name="f">
	<c:choose>
	   <c:when test="${sessionScope.m.id==b.writer}">
		<table class="table">
			
					<tr>
						<th scope="row">글번호</th>
						<td><input type="hidden" name="num" value="${b.num }" readonly>${b.num }</td>
					</tr>
					<tr>
						<th scope="row">작성자</th>
						<td><input type="hidden" name="writer" value="${b.writer }" readonly>${b.writer }</td>
					</tr>
					<tr>
						<th scope="row">작성일</th>
						<td><input type="hidden" name="w_date" value="${b.w_date }" readonly>${b.w_date }</td>
					</tr>
					<tr>
						<th scope="row"><label for="validationCustom01">제목</label></th>
						<td><textarea class="form-control" rows="1" id="validationCustom01" name="title" required>${b.title }</textarea></td>
					</tr>
					<tr>
						<th scope="row"><label for="validationCustom02">내용</label></th>
						<td><textarea class="form-control" rows="5" id="validationCustom02" name="content" required>${b.content}</textarea></td>
					</tr>
					<tr>
						<td colspan="10">
						<input class="btn btn-primary" type="submit" value="수정"> 
						<a href="${pageContext.request.contextPath }/noticeDel?num=${b.num }"><input class="btn btn-default" type="button" value="삭제"></a> 
						<a href="${pageContext.request.contextPath }/notice"><input class="btn btn-default" type="button" value="목록"></a>
						</td>
					</tr>
		         </table>
				</c:when>
				<c:when test="${sessionScope.m.id!=b.writer}">
				<table class="table">

					<tr>
						<th scope="row">글번호</th>
						<td><input type="hidden" name="num" value="${b.num }" readonly>${b.num }</td>
					</tr>
					<tr>
						<th scope="row">작성자</th>
						<td><input type="hidden" name="writer" value="${b.writer }" readonly>${b.writer }</td>
					</tr>
					<tr>
						<th scope="row">작성일</th>
						<td><input type="hidden" name="w_date" value="${b.w_date }" readonly>${b.w_date }</td>
					</tr>
					<tr>
						<th scope="row">제목</th>
						<td><c:out value="${b.title}" escapeXml="false"><textarea class="form-control" rows="1" name="title" readonly>${b.title }</textarea></c:out></td>
					</tr>
					<tr>
					    <th scope="row">내용</th>
						<td><c:out value="${b.content}" escapeXml="false"><textarea class="form-control" rows="5" name="content" readonly>${b.content}</textarea></c:out></td>
					</tr>
					<tr>
						<td colspan="10">
						<a href="${pageContext.request.contextPath }/notice"><input class="btn btn-default" type="button" value="목록"></a>
						</td>
					</tr>
		         </table>

				</c:when>
			</c:choose>
			
		<script>
			$('#validationCustom02').summernote({
				placeholder : '내용을 작성하세요',
				tabsize : 2,
				height : 100
			});
		</script>
	</form>
	<br>
	<br>
</body>
</html>