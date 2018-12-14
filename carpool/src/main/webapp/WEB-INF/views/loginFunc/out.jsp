
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="outProc" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body" style="padding: 40px 50px;">
					<form action="${pageContext.request.contextPath}/outProc" method="post">
						<div class="form-group">
							<p class="text-right">
								KoreanKoreanKoreanKoreanKoreanKorean<br>
								<br>KoreanKoreanKoreanKorean 작성하신 게시글 내역 또한 함께 삭제됩니다.<br>
								<br> <input type="password" name="pwd" placeholder="비밀번호"><br>
								<br> 위 안내사항을 모두 확인하였으며, 이에 동의하시면 탈퇴 진행을 위하여 "OUT" 버튼을 눌러주세요.<br>
							</p>
						</div>

						<button type="submit" class="btn btn-success btn-block">
							<span class="glyphicon glyphicon-off"></span> OUT
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
  $(document).ready(function() {
      $("#outProc").modal();
  });
</script>
