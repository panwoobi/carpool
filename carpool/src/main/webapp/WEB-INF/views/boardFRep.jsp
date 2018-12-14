<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
//댓글등록하기
function fn_comment(code){
    $.ajax({
        type:'POST',
        url : "<c:url value='/boardFRep'/>",
        data:$("#commentForm").serialize(),
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#boardFRep").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
//초기페이지시 댓글 불러오기
$(function(){
    getCommentList();  
});

//댓글불러오기
function getCommentList(){
	$.ajax({
        type:'GET',
        url : "<c:url value='/boardFRepList'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
        	 var html = "";
             var cCnt = data.length;
             
             if(data.length > 0){
                 
                 for(i=0; i<data.length; i++){
                     html += "<div>";
                     html += "<div><table class='table'><h6><strong>"+data[i].writer+"</strong></h6>";
                     html += data[i].comment + "<tr><td></td></tr>";
                     html += "</table></div>";
                     html += "</div>";
                 }
                 
             } else {
                 
                 html += "<div>";
                 html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                 html += "</table></div>";
                 html += "</div>";
                 
             }
             
             $("#cCnt").html(cCnt);
             $("#commentList").html(html);
             
         },
         error:function(request,status,error){
             
        }
         
     });
 }
        	
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
							<td><textarea class="form-control" rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
								<br>
								<div>
									<a href='#' onClick="fn_comment('${result.code }')" id="btnRep" class="btn pull-right btn btn-primary" num="${b.num }">등록</a>
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