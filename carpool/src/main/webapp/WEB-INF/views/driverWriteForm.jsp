<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<!-- <link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css"> -->
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> -->
<!-- <script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script> -->
<head>
<script type="text/javascript">
  $(function() {
    $('.datetimepicker').appendDtpicker({
      'locale' : 'ko'
    });
  });
</script>
<style>

#list {
	text-align: center;
}

#write {
	text-align: right;
}

/* Bootstrap ���� */
.table {
	width: 85%;
	margin:auto;
}
.table>thead {
	background-color: #b3c6ff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
	/* �� �Ӽ����� �� �ٷ� ǥ���ϱ� */
	/* -webkit-animation: blink 1.5s ease infinite; */
}
</style>
</head>
<body>
	<div id="container">
		<form id="f" action="" method="post">
			<input type="hidden" id="spx" name="spx"> <input type="hidden" id="spy" name="spy"> <input type="hidden" id="epx" name="epx"> <input type="hidden" id="epy" name="epy">

			<table class="table table-striped table-bordered">
				<tr>
					<th style="width: 10%">����</th>
					<th style="width: 40%; text-align: left"><select name="cate" id="cate">
							<option value="���" selected>���</option>
							<option value="���">���</option>
							<option value="����">����</option>
							<option value="����">����</option>
							<option value="��Ÿ">��Ÿ</option>
					</select></th>
					<th style="width: 50%" rowspan="10"><div id=div1></div></th>
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
					<td><input type="text" name="startPosi" id="sp1" placeholder="���� �������� �����ϼ���" readonly></td>
				</tr>
				<tr>
					<td>���� ��ġ</td>
					<td><input type="text" name="endPosi" id="ep1" placeholder="���� �������� �����ϼ���" readonly></td>
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
					<td>���� �ο�</td>
					<td style="text-align: left"><select name="maxSeat">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="driverWrite" value="�ۼ�"> <input type="button" id="driverList" value="���"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>