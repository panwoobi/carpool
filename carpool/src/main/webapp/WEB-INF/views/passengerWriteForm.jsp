<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@ include file="/resources/header/header.jsp"%>
<link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>
<script type="text/javascript">
  $(function() {
    $('.datetimepicker').appendDtpicker({
      'locale' : 'ko'
    });
  });
</script><body>
	<br><br>
	<form id="f" action="" method="post">
		<input type="hidden" id="spx" name="spx">
		<input type="hidden" id="spy" name="spy">
		<input type="hidden" id="epx" name="epx">
		<input type="hidden" id="epy" name="epy">
		<table id="board1">
			<tr>
				<td style="width:10%">����</td>
				<td style="width:40%;text-align: left">
					<select name="cate" id="cate">
						<option value="���" selected>���</option>
						<option value="���">���</option>
						<option value="����">����</option>
						<option value="����">����</option>
						<option value="��Ÿ">��Ÿ</option>
					</select>
				</td>
				<td style="width:50%" rowspan="9"><div id=div1></div></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="title" placeholder="����"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea rows="10" name="content" style="resize: none" placeholder="EX) ��ſ� īǮ ���ؿ�"></textarea></td>
			</tr>
			<tr>
				<td>��� ��ġ</td>
				<td><input type="text" name="startPosi" id="sp1" placeholder="���� �������� �����ϼ���" readonly>
				</td>
			</tr>
			<tr>
				<td>���� ��ġ</td>
				<td>
				<input type="text" name="endPosi" id="ep1" placeholder="���� �������� �����ϼ���" readonly>
				</td>
			</tr>
			<tr>
				<td>��� �ð�</td>
				<td><input type="text" class="datetimepicker" name="startTime"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="price" placeholder="��"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" id="passengerWrite" value="�ۼ�">
					<input type="button" id="passengerList" value="���">
				</td>
			</tr>
		</table>
	</form>
	<br><br>
</body>
<%@ include file="/resources/footer/footer.jsp"%>
</html>