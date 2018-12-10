<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="joinProc" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="padding: 40px 50px;">
					<form action="${pageContext.request.contextPath }/CaptchaResult" method="post">
						<input type="hidden" name="key" value="${key }"> 
						<img src="" id="capt" path="${img }"><br> 
						<input type="text" name="input"><br>
						<input type="submit" value="SUBMIT">

					</form>

				</div>
			</div>
		</div>
	</div>
</div>

<script>
  $(document).ready(function() {
    $("#join").click(function() {
      $("#joinProc").modal();
    });
    
    setTimeout(function() {
      //alert($('#capt').attr("path"));
      $('#capt').attr("src", "img/" + $('#capt').attr("path"));
    }, 5000);
  });
</script>
