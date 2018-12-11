<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="joinProc" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="padding: 40px 50px;">
					<form action="${pageContext.request.contextPath }/captchaResult" method="post">


						<div class="form-group row">
							<label class="col-sm-2 col-form-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="id" placeholder="ID">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" name="pw" placeholder="Password">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name" placeholder="Name">
							</div>
						</div>


						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email" placeholder="Email">
							</div>
						</div>


						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Tel</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="tel" placeholder="Tel">
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<label class="col-sm-2 col-form-label">IsSmoke</label>
								<div class="col-sm-10">
									<select name="isSmoke" class="form-control">
										<option selected value="0">No</option>
										<option value="1">Yes</option>
									</select>
								</div>

							</div>
						</div>
						
						<div class="form-group">
							<div class="row">
								<label class="col-sm-2 col-form-label">Sex</label>
								<div class="col-sm-10">
									<select name="sex" class="form-control">
										<option selected value="0">Man</option>
										<option value="1">Woman</option>
									</select>
								</div>

							</div>
						</div>
						
						<div class="form-group">
							<div class="row">
								<label class="col-sm-2 col-form-label">Type</label>
								<div class="col-sm-10">
									<select name="type" class="form-control">
										<option selected value="1">Passenger</option>
										<option value="2">Driver</option>
									</select>
								</div>

							</div>
						</div>

						<div class="form-group row">
							<div class="container">
								<img src="" id="capt" style="margin-left: auto; margin-right: auto; display: block;">
							</div>
						</div>
						<div class="form-group row">
							<label for="captcha" class="col-sm-2 col-form-label">Captcha</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="input" id="input" placeholder="Captcha">

							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-10">
								<button type="submit" class="btn btn-primary" style="float: right;">Sign up</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
  $(document).ready(function() {
    $("#join").click(function() {
      $('#capt').attr("src", "");
      var img = "";
      $.ajax({
      url : "${pageContext.request.contextPath }/captchaImg",
      type : "POST",
      contentType : "application/json",
      success : function(data) {
        img = data.img;
      }
      });

      $("#joinProc").modal({
        refresh: true
      });

      setTimeout(function() {
        //alert($('#capt').attr("path"));
        $('#capt').attr("src", img);
      }, 1000);
    });
  });
</script>
