<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="joinProc" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="padding: 40px 50px;">
					<form action="${pageContext.request.contextPath }/captchaResult" method="post" enctype="multipart/form-data">


						<div class="form-group row">
							<div class="container">
									<div style="width: 200px; height: 200px; overflow: hidden border-radius: 100px; margin-left: auto; margin-right: auto; display: block;">
										<img id="pf" class="rounded-circle" src="${pageContext.request.contextPath }/resources/img/default_profile.jpg" style="width: 200px; height: 200px; margin-left: auto; margin-right: auto; display: block;">
									</div>
							</div>
						</div>


						<div class="form-group row">
							<label class="col-sm-2 col-form-label">프로필</label>
							<div class="col-sm-10">
								<input type="file" id="ff"  name="ff">
							</div>
						</div>



						<div class="form-group row">
							<label class="col-sm-2 col-form-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="id" placeholder="사용하실 ID를 입력하세요"  data-minlength="6" pattern=".{6,}" required title="6 글자이상" oninvalid="this.setCustomValidity('유효한 ID를 입력하세요')" oninput="setCustomValidity('')">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" name="pw" placeholder="영어와 숫자 조합, 특수문자 반드시 포함, 6자 이상" data-minlength="6" pattern=".{6,}" required title="6 글자이상" oninvalid="this.setCustomValidity('유효한 PW를 입력하세요')" oninput="setCustomValidity('')">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name" placeholder="홍길동"  required oninvalid="this.setCustomValidity('유효한 닉네임을 입력하세요')" oninput="setCustomValidity('')">
							</div>
						</div>


						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email" placeholder="Email"  required oninvalid="this.setCustomValidity('유효한 Email를 입력하세요')" oninput="setCustomValidity('')">
							</div>
						</div>


						<div class="form-group row">
							<label class="col-sm-2 col-form-label">연락처</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="tel" placeholder="'-'를 제외한 숫자만 입력"  required oninvalid="this.setCustomValidity('유효한 연락처를 입력하세요')" oninput="setCustomValidity('')">
							</div>
						</div>


						<div class="form-group">
							<div class="row">
								<label class="col-sm-2 col-form-label">흡연여부</label>
								<div class="col-sm-10">
									<select name="isSmoke" class="form-control">
										<option selected value="0">비흡연</option>
										<option value="1">흡연</option>
									</select>
								</div>

							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<label class="col-sm-2 col-form-label">성별</label>
								<div class="col-sm-10">
									<select name="sex" class="form-control">
										<option selected value="0">남자</option>
										<option value="1">여자</option>
									</select>
								</div>

							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<label class="col-sm-2 col-form-label">유형</label>
								<div class="col-sm-10">
									<select name="type" class="form-control">
										<option selected value="2">Passenger</option>
										<option value="1">Driver</option>
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
        refresh : true
      });

      setTimeout(function() {
        //alert($('#capt').attr("path"));
        $('#capt').attr("src", img);
      }, 1000);
    });

    var readURL = function(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
          $('#pf').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
      }
    }

    $("#ff").on('change', function() {
      readURL(this);
    });

    $(".upload-button").on('click', function() {
      $(".file-upload").click();
    });

  });
</script>
