<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	$(document).ready(function() {
		$("#login").click(function() {
			$("#loginProc").modal();
		});

		$('#findPwd').click(function() {
			var value = prompt("임시 비밀번호를 보낼 아이디를 입력하세요");

			var obj = new Object();
			obj.id = value;
			var jsonData = JSON.stringify(obj);

			if (value) {

				$.ajax({
					url : "${pageContext.request.contextPath }/find",
					type : "POST",
					dataType : "json",
					data : jsonData,
					contentType : "application/json",
					success : function(responseData) {
						if (responseData == true) {
							alert("해당 이메일에 임시 비밀번호를 보냅니다");
						} else {
							alert("발송 실패");
						}
					}
				});

			} else {

			}

		});

	});
</script>
</head>
<body>
<body>
	<div class="container">
		<!-- Modal -->
		<div class="modal fade" id="loginProc" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">

					<div class="modal-body" style="padding: 40px 50px;">
						<form action="${pageContext.request.contextPath}/myLogin" method="post">
							<div class="form-group">
								<label for="ID"><span class="glyphicon glyphicon-user">ID</span></label> <input type="text" class="form-control" name="id" id="ID" placeholder="ID를 입력하세요." required oninvalid="this.setCustomValidity('유효한 ID를 입력하세요')" oninput="setCustomValidity('')">
							</div>
							<div class="form-group">
								<label for="Password"><span class="glyphicon glyphicon-eye-open">Password</span></label> <input type="password" class="form-control" name="pw" id="Password" placeholder="PW를 입력하세요." required oninvalid="this.setCustomValidity('유효한 Password를 입력하세요')" oninput="setCustomValidity('')">

							</div>
							<div>
								<label><a href="#" id="findPwd">비밀번호 찾기</a></label>
							</div>
							<button type="submit" class="btn btn-primary btn-block">
								<span class="glyphicon glyphicon-off"></span> 로그인
							</button>
							<div style="padding: 10px;"></div>
							<a href="${google_url}">
								<button type="button" id="btnJoinGoogle" class="btn btn-primary btn-block">
									<i class="fa fa-google" aria-hidden="true"></i> Google Login
								</button>
							</a>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>