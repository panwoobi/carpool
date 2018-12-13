<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="/carpool/resources/css/bootstrap.css"> -->
</head>
<body>
<div class="container">
    <form id="commentForm" name="commentForm" method="post">
        <div>
            <div>
              <span><strong>COMMENTS</strong></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea class="form-control"rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="fn_comment('${result.code }')" class="btn pull-right btn btn-primary">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="b_code" name="b_code" value="${result.code }" />        
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
</div>
 

</body>
</html>