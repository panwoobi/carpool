<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<%@ include file="../loginFunc/login.jsp"%>
<%@ include file="../loginFunc/captcha.jsp"%>
<%@ include file="../loginFunc/validation.jsp"%>

<script type="text/javascript">
  $('document').ready(function() {

    $('#noticeWrite').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/noticeWrite");
      $('#f').submit();
    });
    $('#noticeEdit').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/noticeEdit");
      $('#f').submit();
    });
    $('#noticeDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/noticeDel");
      $('#f').submit();
    });
    $('#noticeList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/noticeList");
      $('#f').submit();
    });

    $('#freeBoardWrite').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/freeBoardWrite");
      $('#f').submit();
    });
    $('#freeBoardEdit').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/freeBoardEdit");
      $('#f').submit();
    });
    $('#freeBoardDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/freeBoardDel");
      $('#f').submit();
    });
    $('#freeBoardList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/freeBoardList");
      $('#f').submit();
    });
    $('#passengerList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/passengerList");
      $('#f').submit();
    });
    $('#passengerDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/passengerDelete");
      $('#f').submit();
    });

    $('#driverDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/driverDelete");
      $('#f').submit();
    });
    $('#driverList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/driverList");
      $('#f').submit();
    });

    $('#driverRequestAdd').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/driverRequestAdd");
      $('#f').submit();
    });
    $('#driverRequestDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/driverRequestDel");
      $('#f').submit();
    });

    $('#passengerRequestAdd').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/passengerRequestAdd");
      $('#f').submit();
    });
    $('#passengerRequestDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/passengerRequestDel");
      $('#f').submit();
    });

    $('#logout').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/logout");
      $('#info').submit();
    });
    $('#carAdd').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/carChk");
      $('#info').submit();
    });
    $('#carDel').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/carDel");
      $('#info').submit();
    });
    $('#out').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/out");
      $('#info').submit();
    });
    

  });

  function menuClick(num) {
    switch (num) {
    case 1:
      window.location.href = "${pageContext.request.contextPath }/intro";
      break;
    case 2:
      window.location.href = "${pageContext.request.contextPath }/passengerList";
      break;
    case 3:
      window.location.href = "${pageContext.request.contextPath }/driverList";
      break;
    case 4:
      window.location.href = "${pageContext.request.contextPath }/notice";
      break;
    case 5:
      window.location.href = "${pageContext.request.contextPath }/boardFList";
      break;
    }
  };
</script>

<header>
<br>
	<div id="container" class="naviBar">
		<div class="row">
			<div class="col-md-9">
				<a href="${pageContext.request.contextPath }"><i class="fa fa-car" aria-hidden="true" style="font-size: 35px"> Carpool</i></a>
			</div>
			<div class="col-md-3" style="text-align:right">
				<c:choose>
					<c:when test="${empty sessionScope.m }">
						<button type="button" class="btn btn-default " id="login">Sign in</button>
						<button type="button" class="btn btn-default " id="join">Sign up</button>
					</c:when>
					<c:when test="${!empty sessionScope.m && sessionScope.m.isValidate eq 0}">
						<form id="info" action="" method="post">
							<p style="font-size: 18px">
								<a href="#" id="v">계정 활성화가 되지 않았습니다</a>
							</p>
							<a href="#" class="badge badge-primary" id="logout">Logout</a>
						</form>
					</c:when>

					<c:when test="${!empty sessionScope.m && sessionScope.m.type eq 1 && sessionScope.m.isValidate eq 1}">
						<form id="info" action="" method="post">
							<p style="font-size: 18px">
								<a href="${pageContext.request.contextPath }/menu">${sessionScope.m.name } (${sessionScope.m.id })</a>
							</p>
							<a href="#" class="badge badge-primary" id="logout">Logout</a>
						</form>
					</c:when>
					<c:when test="${!empty sessionScope.m && sessionScope.m.type eq 0 && sessionScope.m.isValidate eq 1}">
						<form id="info" action="" method="post">
							<p style="font-size: 18px">
								<a href="${pageContext.request.contextPath }/admin">${sessionScope.m.name } (${sessionScope.m.id })</a>
							</p>
							<a href="#" class="badge badge-primary" id="logout">Logout</a>
						</form>
					</c:when>
					<c:when test="${!empty sessionScope.m && sessionScope.m.type eq 2 && sessionScope.m.isValidate eq 1}">
						<form id="info" action="" method="post">
							<p style="font-size: 18px">
								<a href="${pageContext.request.contextPath }/menu">${sessionScope.m.name } (${sessionScope.m.id })</a>
							</p>
							<a href="#" class="badge badge-primary" id="logout">Logout</a>
						</form>
					</c:when>
				</c:choose>
			</div>
		</div>
		<br>
		</div>
		
	<div id="container">
		<nav class="nav nav-pills flex-column flex-md-row" style="font-size: 18px; background-color: #e3f2fd;">
			<a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(1)">Carpool?</a> <a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(2)">Passenger</a> <a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(3)">Driver</a> <a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(4)">Notice</a> <a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(5)">Board</a>
		</nav>

	</div>

</header>