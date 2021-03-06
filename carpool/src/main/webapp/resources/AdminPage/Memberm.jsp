<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		 google.charts.setOnLoadCallback(drawChart);

		google.charts.setOnLoadCallback(drawVisualization2);
		google.charts.setOnLoadCallback(drawVisualization3);
		 function drawChart() {
		        var data = google.visualization.arrayToDataTable([
		          ['Year', 'Sales', 'Expenses'],
		          ['2013',  1000,      400],
		          ['2014',  1170,      460],
		          ['2015',  660,       1120],
		          ['2016',  1030,      540]
		        ]);

		        var options = {
		          title: 'Company Performance',
		          hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
		          vAxis: {minValue: 0}
		        };

		        var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
		        chart.draw(data, options);
		      }
		
		function drawVisualization2() { 
			var data = google.visualization.arrayToDataTable([
					['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
					['2004/05',  165,      938,         522,             998,           450,      614.6],
					['2005/06',  135,      1120,        599,             1268,          288,      682],
					['2006/07',  157,      1167,        587,             807,           397,      623],
					['2007/08',  139,      1110,        615,             968,           215,      609.4],
					['2008/09',  136,      691,         629,             1026,          366,      569.6]
				]);
			var options = {
					title : 'Monthly Coffee Production by Country',
					vAxis: {title: 'Cups'},
					hAxis: {title: 'Month'}, 
					seriesType: 'bars',
					series: {5: {type: 'line'}}
				};
			
			var chart2 = new google.visualization.ComboChart(document.getElementById('chart_div2'));
			chart2.draw(data, options);
		}
		
		function drawVisualization3() { 
			var data = google.visualization.arrayToDataTable([
					['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
					['2004/05',  165,      938,         522,             998,           450,      614.6],
					['2005/06',  135,      1120,        599,             1268,          288,      682],
					['2006/07',  157,      1167,        587,             807,           397,      623],
					['2007/08',  139,      1110,        615,             968,           215,      609.4],
					['2008/09',  136,      691,         629,             1026,          366,      569.6]
				]);
			var options = {
					title : 'Monthly Coffee Production by Country',
					vAxis: {title: 'Cups'},
					hAxis: {title: 'Month'}, 
					seriesType: 'bars',
					series: {5: {type: 'line'}}
				};
			
			var chart3 = new google.visualization.ComboChart(document.getElementById('chart_div3'));
			chart3.draw(data, options);
		}
	</script>
	
	

 
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

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-bell fa-fw"></i>
            <span class="badge badge-danger">9+</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-envelope fa-fw"></i>
            <span class="badge badge-danger">7</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="#">Settings</a>
            <a class="dropdown-item" href="#">Activity Log</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/resources/AdminPage/AdminPage2.jsp">
     <i class="fa fa-tasks" aria-hidden="true"></i>

            <span>통계</span>
          </a>
        </li>
         <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/resources/AdminPage/Memberm.jsp">
            <i class="fa fa-users"></i>
            
            <span>회원관리</span>
          </a>
        </li>
        
         <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/resources/AdminPage/Notice.jsp">
            <i class="fa fa-comment"></i>
            <span>공지관리
           </span>
          </a>
        </li>

      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">



<table border="1" style="width:100%; height:800px">
          <tr>
          
          <td colspan="2" style="width:100%; height: 100%;">
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-chart-area"></i>
              게시물 수 통계</div>
            <div class="card-body" style="width:100%; height: 350px;"><div id="chart_div" style="width:100%; height: 300px;"></div>
            
              <canvas id="myAreaChart" width="100%" height="100%"></canvas>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
          </td>
          
          </tr>
           <tr>
            <td style="width:100%; height: 100%;">
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-chart-area"></i>
              이용자 유입 통계</div>
            <div class="card-body" style="width:100%; height: 350px;"><div id="chart_div2" style="width:100%; height: 300px;"></div>
              <canvas id="myAreaChart" width="100%" height="100%"></canvas>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
          </td>
          <td style="width:100%; height: 100%;">
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-chart-area"></i>
              최근 새로운 가입 통계</div>
            <div class="card-body" style="width:100%; height: 350px;"><div id="chart_div3" style="width:100%; height: 300px;"></div>
              <canvas id="myAreaChart" width="100%" height="100%"></canvas>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
          </td>
           </tr>
          </table>
          

         
        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2018</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/resources/page2/login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="vendor2/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="vendor2/bootstrap/js/bootstrap.bundle.min.js" />"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value="vendor2/jquery-easing/jquery.easing.min.js" />"></script>

    <!-- Page level plugin JavaScript-->
    <script src="<c:url value="vendor2/chart.js/Chart.min.js" />"></script>
    <script src="<c:url value="vendor2/datatables/jquery.dataTables.js" />"></script>
    <script src="<c:url value="vendor2/datatables/dataTables.bootstrap4.js" />"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value="js2/sb-admin.min.js"/>"></script>

    <!-- Demo scripts for this page-->
    <script src="<c:url value="js2/demo/datatables-demo.js" />"></script>
    <script src="<c:url value="js2/demo/chart-area-demo.js" />"></script>

  </body>

</html>
