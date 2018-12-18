<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>
<%@page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>

    <title>SB Admin - Dashboard</title>

    <!-- Bootstrap core CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor2/bootstrap/css/bootstrap.min.css">
   

    <!-- Custom fonts for this template-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor2/fontawesome-free/css/all.min.css">
    
    <!-- Page level plugin CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor2/datatables/dataTables.bootstrap4.css">
   
    <!-- Custom styles for this template-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css2/sb-admin.css">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="${pageContext.request.contextPath}/resources/page2/index.html">AdminPage</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

     
    </nav>

    <div id="wrapper">

       <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/admin">
     <i class="fa fa-tasks" aria-hidden="true"></i>

            <span>통계</span>
          </a>
        </li>
         <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/adminMember">
            <i class="fa fa-users"></i>
            
            <span>회원관리</span>
          </a>
        </li>
        
         <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/adminNotice">
            <i class="fa fa-comment"></i>
            <span>공지관리
           </span>
          </a>
        </li>

      </ul>

<div style="width:100%">
<form class="border border-primary" >
	<table class="table table-borderless">
		<tr>
			<td style="text-align: left; font-size: 16pt; font-weight: bold">
				<span class="glyphicon"></span>Notice</td>
		</tr>
		<tr>
			<c:if test="${sessionScope.m.type == 0}">
				<td colspan="4" style="text-align: right"><a href="${pageContext.request.contextPath }/noticeWrite">
				<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> write </button></a>
				</td>
			</c:if>
		</tr>
		<tr>
			<td>
				<table class="table table-hover">
					<thead class="thead-light">
						<tr>
								<th scope="col">번호</th>
							<th scope="col">작성자</th>
							<th scope="col">제목</th>
							<th scope="col">작성일</th>
							<th scope="col">수정</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td colspan="4">게시글이 없습니다.</td>
								</tr>
							</c:when>
							<c:when test="${!empty list }">
								<c:forEach var="n" items="${list }" varStatus="status">
									<tr>
										<th scope="row">${n.num}</th>
										<td scope="row">${n.writer}</td>
										<td scope="row">${n.title}</a></td>
										<td scope="row">${n.w_date}</td>
										 <td scope="row"><a href="${pageContext.request.contextPath }/ndelete?num=${n.num }"><h5>삭제<h5></h1></a></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
			</td>
		</tr>
	</table>
</form>
</div>
</div>
</body>
</html>