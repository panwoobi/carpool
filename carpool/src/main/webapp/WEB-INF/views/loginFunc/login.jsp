<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
   $(document).ready(function() {
      $("#login").click(function() {
         $("#loginProc").modal();
      });
   });
   
   
   function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
      }

</script>
<!-- <meta name="google-signin-client_id" content="696132996010-3koghf38vkb6s0fiqcjj2156p4e4l79e.apps.googleusercontent.com"> -->
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="loginProc" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="padding: 40px 50px;">
					<form action="${pageContext.request.contextPath}/myLogin" method="post">
						<div class="form-group">
							<label for="ID"><span class="glyphicon glyphicon-user">ID</span></label> <input type="text" class="form-control" name="id" id="ID" placeholder="ID를 입력하세요."  required oninvalid="this.setCustomValidity('유효한 ID를 입력하세요')" oninput="setCustomValidity('')">		
						</div>
						<div class="form-group">
							<label for="Password"><span class="glyphicon glyphicon-eye-open">Password</span></label> <input type="text" class="form-control" name="pw" id="Password" placeholder="PW를 입력하세요." required oninvalid="this.setCustomValidity('유효한 Password를 입력하세요')" oninput="setCustomValidity('')">
						
						</div>
						<div>
							<label><a href="#">비밀번호 찾기</a></label>
						</div>
						<button type="submit" class="btn btn-primary btn-block">
							<span class="glyphicon glyphicon-off"></span> 로그인
						</button>
						<div style="padding: 10px;"></div>
						<div class="g-signin2" data-onsuccess="onSignIn" style="height: 36px; width: 398px;"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>