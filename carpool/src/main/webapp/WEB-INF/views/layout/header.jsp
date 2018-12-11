<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<%@ include file="../loginFunc/login.jsp"%>
<%@ include file="../loginFunc/captcha.jsp"%>

<script type="text/javascript">
  $('document').ready(function() {
    $('#div1').append("<iframe id='m' src='${pageContext.request.contextPath }/map' scrolling='no' frameborder='0' framespacing='0' margin='0' padding='0' vspace='0'></iframe>");
    $('#div2').append("<iframe id='m' src='${pageContext.request.contextPath }/map2' scrolling='no' frameborder='0' framespacing='0' margin='0' padding='0' vspace='0'></iframe>");

    $('#car').click(function() {
      window.open("${pageContext.request.contextPath}/CarDetailController?owner=" + $('#w').val(), "", "width=740, height=130, top=100, left=100, scrollbars=no");
    });

    $('#noticeWrite').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2NoticeAddController");
      $('#f').submit();
    });
    $('#noticeEdit').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2NoticeEditController");
      $('#f').submit();
    });
    $('#noticeDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2NoticeDelController");
      $('#f').submit();
    });
    $('#noticeList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2NoticeListController");
      $('#f').submit();
    });

    $('#freeBoardWrite').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2FreeBoardAddController");
      $('#f').submit();
    });
    $('#freeBoardEdit').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2FreeBoardEditController");
      $('#f').submit();
    });
    $('#freeBoardDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2FreeBoardDelController");
      $('#f').submit();
    });
    $('#freeBoardList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board2FreeBoardListController");
      $('#f').submit();
    });

    $('#passengerWrite').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1PassengerAddController");
      $('#f').submit();
    });
    $('#passengerList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1PassengerListController");
      $('#f').submit();
    });
    $('#passengerDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1PassengerDelController");
      $('#f').submit();
    });
    $('#passengerEdit').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1PassengerEditController");
      $('#f').submit();
    });

    $('#driverWrite').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1DriverAddController");
      $('#f').submit();
    });
    $('#driverEdit').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1DriverEditController");
      $('#f').submit();
    });
    $('#driverDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1DriverDelController");
      $('#f').submit();
    });
    $('#driverList').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1DriverListController");
      $('#f').submit();
    });

    $('#driverRequestAdd').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1DriverRequestAddController");
      $('#f').submit();
    });
    $('#driverRequestDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1DriverRequestDelController");
      $('#f').submit();
    });

    $('#passengerRequestAdd').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1PassengerRequestAddController");
      $('#f').submit();
    });
    $('#passengerRequestDel').click(function() {
      $('#f').attr("action", "${pageContext.request.contextPath}/Board1PassengerRequestDelController");
      $('#f').submit();
    });

    $('#logout').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/MemberLogoutController");
      $('#info').submit();
    });
    $('#carAdd').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/CarChkController");
      $('#info').submit();
    });
    $('#carDel').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/CarDelController");
      $('#info').submit();
    });
    $('#out').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/out");
      $('#info').submit();
    });
    $('#edit').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/editInfo");
      $('#info').submit();
    });
    $('#partner').click(function() {
      $('#info').attr("action", "${pageContext.request.contextPath }/Board1PartnerListController");
      $('#info').submit();
    });
    
    $('#partnerList').click(function() {
      window.location.href = "${pageContext.request.contextPath }/Board1PartnerListController";
    });
  });

  function menuClick(num) {
    switch (num) {
    case 1:
      window.location.href = "${pageContext.request.contextPath }/intro";
      break;
    case 2:
      window.location.href = "${pageContext.request.contextPath }/Board1PassengerListController";
      break;
    case 3:
      window.location.href = "${pageContext.request.contextPath }/Board1DriverListController";
      break;
    case 4:
      window.location.href = "${pageContext.request.contextPath }/Board2NoticeListController";
      break;
    case 5:
      window.location.href = "${pageContext.request.contextPath }/boardFList";
      break;
    }
  };
</script>

<header>
	<div id="container">
		<div class="row">
			<div class="col-md-10">
				<a href="${pageContext.request.contextPath }"><i class="fa fa-car" aria-hidden="true" style="font-size: 35px"> Carpool</i></a>
			</div>
			<div class="col-md-2">
				<c:choose>
					<c:when test="${empty sessionScope.m }">
						<button type="button" class="btn btn-default " id="login">Sign in</button>
						<button type="button" class="btn btn-default " id="join">Sign up</button>
					</c:when>
					<c:when test="${!empty sessionScope.m && sessionScope.m.type eq 1}">
						<c:choose>
							<c:when test="${empty sessionScope.c}">
								<form id="info" action="" method="post">
									${sessionScope.m.name } (${sessionScope.m.id })님 안녕하세요.<br> ${sessionScope.c.carName } 차량정보가 없습니다. 차량을 등록해주세요.<br> <br> <input type="button" id="partner" value="Partner"> <input type="button" id="carAdd" value="CarAdd"> <input type="button" id="edit" value="Edit"> <input type="button" id="out" value="Out"> <input type="button" id="logout" value="Logout">
								</form>
							</c:when>
							<c:when test="${!empty sessionScope.c}">
								<form id="info" action="" method="post">
									${sessionScope.m.name } (${sessionScope.m.id })님 안녕하세요.<br> 차량정보 [번호 : ${sessionScope.c.numberPlate} / 연식 : ${sessionScope.c.age}년 / 차명 : ${sessionScope.c.carName}]<br> <br> <input type="button" id="partner" value="Partner"> <input type="button" id="carDel" value="CarDel"> <input type="button" id="edit" value="Edit"> <input type="button" id="out" value="Out"> <input type="button" id="logout" value="Logout">
								</form>
							</c:when>
						</c:choose>
					</c:when>
					<c:when test="${!empty sessionScope.m && sessionScope.m.type eq 0}">
						<form id="info" action="" method="post">
							${sessionScope.m.name } (${sessionScope.m.id })님 안녕하세요.<br> <br> <input type="button" id="edit" value="Edit"> <input type="button" id="out" value="Out"> <input type="button" id="logout" value="Logout">
						</form>
					</c:when>
					<c:when test="${!empty sessionScope.m && sessionScope.m.type eq 2}">
						<form id="info" action="" method="post">
							${sessionScope.m.name } (${sessionScope.m.id })님 안녕하세요.<br> <br> <input type="button" id="partner" value="Partner"> <input type="button" id="edit" value="Edit"> <input type="button" id="out" value="Out"> <input type="button" id="logout" value="Logout">
						</form>
					</c:when>
				</c:choose>
			</div>
		</div>
		<br>


		<nav class="nav nav-pills flex-column flex-md-row" style="font-size:18px; background-color: #e3f2fd;">
			<a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(1)">Carpool?</a>
			<a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(2)">Passenger</a> 
			<a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(3)">Driver</a> 
			<a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(4)">Notice</a> 
			<a class="flex-md-fill text-md-center nav-link" href="#" onclick="menuClick(5)">Board</a>
		</nav>

	</div>

</header>