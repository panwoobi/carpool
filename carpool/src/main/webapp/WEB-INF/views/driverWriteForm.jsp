<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/moment.min.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
$(function () {
    $('#datetimepicker1').datetimepicker();
});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<style>

/* Bootstrap ���� */
.table {
	width: 85%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px;
}
</style>
</head>
<body>
	<div id="container">
		<form id="f" action="" method="post">
			<input type="hidden" id="spx" name="spx"> <input type="hidden" id="spy" name="spy"> <input type="hidden" id="epx" name="epx"> <input type="hidden" id="epy" name="epy">
			<table class="table table-striped table-bordered">
				<tr>
					<td style="width: 10%">����</td>
					<td style="width: 40%; text-align: left"><select name="cate" id="cate" class="form-control">
							<option value="���" selected>���</option>
							<option value="���">���</option>
							<option value="����">����</option>
							<option value="����">����</option>
							<option value="��Ÿ">��Ÿ</option>
					</select></td>
					<td style="width: 50%" rowspan="10">
					<%@ include file="map.jsp"%></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="title" placeholder="����"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><textarea class="form-control" rows="10" name="content" style="resize: none" placeholder="EX) ��ſ� īǮ ���ؿ�"></textarea></td>
				</tr>
				<tr>
					<td>��� ��ġ</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" type="text" name="startPosi" id="sp1" placeholder="���� �������� �����ϼ���" readonly></td>
				</tr>
				<tr>
					<td>���� ��ġ</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="endPosi" id="ep1" placeholder="���� �������� �����ϼ���" readonly></td>
				</tr>
				<tr>
					<td>��� �ð�</td>
					<td>
						<div class='input-group date' id='datetimepicker1'>
							<input type='text' class="form-control" name="startTime" /> <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="price" placeholder="��"></td>
				</tr>
				<tr>
					<td>���� �ο�</td>
					<td style="text-align: left">
							<select name="maxSeat" class="form-control">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" class="btn btn-info" id="driverWrite" value="�ۼ�"> <input type="button" class="btn btn-info" id="driverList" value="���"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>