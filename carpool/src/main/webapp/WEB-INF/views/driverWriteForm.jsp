<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>
<style>

/* Bootstrap 수정 */
.table {
	width: 85%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px;
}
</style>
</head>
<script>

$(function() {
  $('#datetimepicker').appendDtpicker({
    'locale' : 'ko'
  });
});
</script>
<body>
	<div id="container">
		<form id="f" action="" method="post">
			<input type="hidden" id="spx" name="spx"> <input type="hidden" id="spy" name="spy"> <input type="hidden" id="epx" name="epx"> <input type="hidden" id="epy" name="epy">
			<table class="table table-striped table-bordered">
				<tr>
					<td style="width: 10%">유형</td>
					<td style="width: 40%; text-align: left"><select name="cate" id="cate" class="form-control">
							<option value="출근" selected>출근</option>
							<option value="퇴근">퇴근</option>
							<option value="여가">여가</option>
							<option value="여행">여행</option>
							<option value="기타">기타</option>
					</select></td>
					<td style="width: 50%" rowspan="10">
					<%@ include file="map.jsp"%></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="title" placeholder="제목"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea class="form-control" rows="10" name="content" style="resize: none" placeholder="EX) 즐거운 카풀 원해요"></textarea></td>
				</tr>
				<tr>
					<td>출발 위치</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="start_posi" id="sp1" placeholder="옆의 지도에서 선택하세요" readonly></td>
				</tr>
				<tr>
					<td>도착 위치</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="end_posi" id="ep1" placeholder="옆의 지도에서 선택하세요" readonly></td>
				</tr>
				<tr>
					<td>출발 시간</td>
					<td>
						<input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" id="datetimepicker" name="start_time">
					</td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="price" placeholder="원"></td>
				</tr>
				<tr>
					<td>수용 인원</td>
					<td style="text-align: left">
							<select name="maxSeat" class="form-control">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" class="btn btn-info" id="driverWrite" value="작성"> <input type="button" class="btn btn-info" id="driverList" value="목록"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>