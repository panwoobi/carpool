<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
  $(document).ready(function() {
    $("#v").click(function() {
      $("#validateProc").modal();
    });

    $('#activationBtn').click(function() {
      var obj = new Object();
      obj.input = $('#activationInput').val();
      var jsonData = JSON.stringify(obj);

      $.ajax({
      url : "${pageContext.request.contextPath }/activation",
      type : "POST",
      dataType : "json",
      data : jsonData,
      contentType : "application/json",
      success : function(responseData) {
        if (responseData == true) {
          alert("Success");
          window.location.href = "${pageContext.request.contextPath }/";
        } else {
          alert("Not Correct");
          window.location.href = "${pageContext.request.contextPath }/";
        }
      }
      });
    });

  });
</script>

<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="validateProc" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="padding: 40px 50px;">
					<div>
						<label>이메일을 확인하세요</label>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="activationInput" name="activationInput" placeholder="ACTIVATION KEY">
					</div>
					<button type="button" id="activationBtn" class="btn btn-success btn-block">
						<span class="glyphicon glyphicon-off"></span> 등록
					</button>
				</div>
			</div>
		</div>
	</div>
</div>