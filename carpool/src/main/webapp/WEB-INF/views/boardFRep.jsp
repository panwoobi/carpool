<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.each($('div'), function(){
		var board_num = $(this).attr("id").split('_')[1];
		var param = "board_num="+board_num;
	});
});
$(document).ready(function(){
		$('.btn pull-right btn btn-primary').click(function (){
			alert("board_num");
		});
});	
		
</script>

<!-- <link rel="stylesheet" href="/carpool/resources/css/bootstrap.css"> -->
</head>
<body>
<!-- 댓글작성 -->
	<div class="container">
		<form id="commentForm" name="commentForm" method="post">
			<div>
				<div>
					<span><strong>COMMENTS</strong></span> <span id="cCnt"></span>
				</div>
				<div>
					<table class="table">
						<tr>
							<td><textarea class="form-control" rows="3" cols="30"
									id="content_${b.num }" name="comment" placeholder="댓글을 입력하세요"></textarea>
								<br>
								<div>
									<a href='#' id="btnRep" class="btn pull-right btn btn-primary" num="${b.num }">등록</a>
								</div></td>
						</tr>
					</table>
				</div>
			</div>
			<%--         <input type="hidden" name="writer" value="${b.writer }"/> --%>
			<input type="hidden" id="b_code" name="b_code" value="${result.code }" />
		</form>
	</div>
<!-- 	 댓글작성내용 뿌려주는 공간 -->
	<div class="container"> 
		<form id="commentListForm" name="commentListForm" method="post">
			<div id="r_${i.num }"></div>
		</form>
	</div>


</body>
</html>