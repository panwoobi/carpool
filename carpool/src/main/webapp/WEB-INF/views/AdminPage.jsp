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
		 var a = ${a};
		 var b = ${b};
		 var c = ${c};
		 var d = ${d};
		 var e = ${e};
		 var f = ${f};

		 
	        var data = google.visualization.arrayToDataTable([
	          ['Year', '드라이브 게시물', '손님 게시물'],
	          ['2018/10',  a,      d],
	          ['2018/11',  b,      e],
	          ['2018/12',  c,      f]
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
		var g = ${g};
		var h = ${h};
		var i = ${i};
		
		var data = google.visualization.arrayToDataTable([				
				['년/월', '고객'],
				['2018/10',  g  ],
				['2018/11',  h  ],
				['2018/12',  i  ]
				
			]);
		var options = {
				vAxis: {title: '인원'},
				hAxis: {title: '년/월'}, 
				seriesType: 'bars',
				series: {5: {type: 'line'}}
			};
		
		var chart2 = new google.visualization.ComboChart(document.getElementById('chart_div2'));
		chart2.draw(data, options);
	}
	
	function drawVisualization3() { 		
			var j = ${j};
			var k = ${k};
			var l = ${l};
		var data = google.visualization.arrayToDataTable([
				['년/월', '드라이버'],
				['2018/10',  j],
				['2018/11',  k],
				['2018/12',  l]
			]);
		var options = {
				title : 'Monthly Coffee Production by Country',
				vAxis: {title: '인원'},
				hAxis: {title: '년/월'}, 
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
