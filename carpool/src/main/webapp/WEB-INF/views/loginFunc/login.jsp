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
<meta name="google-signin-client_id" content="696132996010-3koghf38vkb6s0fiqcjj2156p4e4l79e.apps.googleusercontent.com">
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="loginProc" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="padding: 40px 50px;">
					<form action="${pageContext.request.contextPath}/myLogin" method="post">
						<div class="form-group">
							<label for="id"><span class="glyphicon glyphicon-user"></span> Username</label> <input type="text" class="form-control" name="id" placeholder="Enter email">
						</div>
						<div class="form-group">
							<label for="pw"><span class="glyphicon glyphicon-eye-open"></span> Password</label> <input type="text" class="form-control" name="pw" placeholder="Enter password">
						</div>
						<div>
							<label>Forgot <a href="#">Password?</a></label>
						</div>
						<button type="submit" class="btn btn-success btn-block">
							<span class="glyphicon glyphicon-off"></span> Login
						</button>
						<div style="padding: 3px;"></div>
						<div class="g-signin2" data-onsuccess="onSignIn" style="height: 36px; width: 398px;"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>