<!DOCTYPE html>
<html>
<head>

	<title>Stock Management System</title>


	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

		<!-- This 2 is for jQuery UI -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css">
		<link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

		<!--  This is for Bootstrap UI
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css">
		-->

		<!-- Plugin for Column Visiblity - CSS - 1 file -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.0.3/css/buttons.dataTables.min.css">

		<link rel="stylesheet" type="text/css" href="css/datable_custom.css">
		
				<script type="text/javascript" language="javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

		<!-- This 2 for jQuery UI -->
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!-- 	This 2 for Bootstrap UI
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
 -->

		<!-- Plugin for Column Visiblity - JS - 2 files -->
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.0.3/js/dataTables.buttons.min.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.0.3/js/buttons.colVis.min.js"></script>

		<script type="text/javascript" language="javascript" src="js/datatable_custom.js"></script>
		<!-- External Javascript Sources - End -->





	<!-- bootstrap -->
	<link rel="stylesheet" href="assests/bootstrap/css/bootstrap.min.css">
	<!-- bootstrap theme-->
	<link rel="stylesheet" href="assests/bootstrap/css/bootstrap-theme.min.css">
	<!-- font awesome -->
	<link rel="stylesheet" href="assests/font-awesome/css/font-awesome.min.css">

  <!-- custom css -->
  <link rel="stylesheet" href="custom/css/custom.css">

	<!-- DataTables -->
  <link rel="stylesheet" href="assests/plugins/datatables/jquery.dataTables.min.css">

  <!-- file input -->
  <link rel="stylesheet" href="assests/plugins/fileinput/css/fileinput.min.css">

  <!-- jquery -->
	<script src="assests/jquery/jquery.min.js"></script>
  <!-- jquery ui -->  
  <link rel="stylesheet" href="assests/jquery-ui/jquery-ui.min.css">
  <script src="assests/jquery-ui/jquery-ui.min.js"></script>

  <!-- bootstrap js -->
	<script src="assests/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!-- <a class="navbar-brand" href="#">Brand</a> -->
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      

      <ul class="nav navbar-nav navbar-right">        

      	<li id="navDashboard"><a href="menu.jsp"><i class="glyphicon glyphicon-list-alt"></i>Inicio</a></li>        
        
       
        <li class="dropdown" id="navOrder">
                   <ul class="dropdown-menu">            
                        <li id="topNavManageOrder"><a href="orders.php?o=manord"> <i class="glyphicon glyphicon-edit"></i> Manage Orders</a></li>            
          </ul>
        </li> 

        <li id="navReport"><a href="report.php"> <i class="glyphicon glyphicon-check"></i> Reporte </a></li>

        <li class="dropdown" id="navSetting">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="glyphicon glyphicon-user"></i> <span class="caret"></span></a>
          <ul class="dropdown-menu">            
            <li id="topNavSetting"><a href="confirmar.jsp"> <i class="glyphicon glyphicon-wrench"></i> Seguridad</a></li>            
            <li id="topNavLogout"><a href="index.jsp"> <i class="glyphicon glyphicon-log-out"></i> Salir</a></li>            
          </ul>
        </li>        
               
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
	</nav>

	<div class="container">
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="glyphicon glyphicon-check"></i>	Orden de Reporte
			</div>
			<!-- /panel-heading -->
			<div class="panel-body">
				
				<form class="form-horizontal" action="php_action/getOrderReport.php" method="post" id="getOrderReportForm">
				  <div class="form-group">
				    <label for="startDate" class="col-sm-2 control-label">D�a Inicio</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="startDate" name="startDate" placeholder="D�a Inicio" />
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="endDate" class="col-sm-2 control-label">D�a Final</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="endDate" name="endDate" placeholder="D�a Final" />
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" id="generateReportBtn"> <i class="glyphicon glyphicon-ok-sign"></i> Generar Reporte</button>
				    </div>
				  </div>
				</form>
				<div class="header"><h1>Hpippm DataTable</h1></div>
		<div class="container">
			<table id="employee-grid"  class="display" cellspacing="0" width="100%">
				<thead>
					<!-- Problamatic Part -->
					<!-- <tr>
						<th rowspan="2">Name</th>
						<th colspan="2">HR Information</th>
						<th colspan="3">Contact</th>
					</tr> -->
					<!-- Problamatic Part - END -->
					<tr>
						<th>Employee Name</th>
						<th>Salary</th>
						<th>Position</th>
						<th>City</th>
						<th>Extension</th>
						<th style="min-width: 110px;">Joining Date</th>
						<th>Age</th>
						<th>Action</th>
					</tr>
					<tr>
						<td><input type="text" id="0" placeholder="Search" class="employee-search-input"></td>
						<td><input type="text" id="1" placeholder="Search" class="employee-search-input"></td>
						<td><input type="text" id="2" placeholder="Search" class="employee-search-input" ></td>
						<td><input type="text" id="3" placeholder="Search" class="employee-search-input" ></td>
						<td><input type="text" id="4" placeholder="Search" class="employee-search-input" ></td>
						<td valign="middle"><input type="text" id="5" placeholder="Select Date" class="employee-search-input datepicker" readonly="readonly"></td>
						<td><input type="text" id="6" placeholder="Search" class="employee-search-input" ></td>
						<th><input type="hidden" id="7" class="employee-search-input"></th>
					</tr>
				</thead>
			</table>
		</div>

		<!-- Modal - Start -->
		<div data-backdrop="static" data-keyboard="false" class="modal fade" id="addNewData" role="dialog">
			<div class="modal-dialog">

			<!-- Modal content for Pop Up -->
			<div class="modal-content">
				<div class="modal-header panel-primary">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add a New Record</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
					  <label for="usr">Name:</label>
					  <input type="text" class="form-control" id="usr">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" id="pwd">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success">Add Data</button>
					<input class="btn btn-danger" type="reset" value="Reset">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			</div>
		</div>

			</div>
			<!-- /panel-body -->
		</div>
	</div>
	<!-- /col-dm-12 -->
</div>
<!-- /row -->

<script src="custom/js/report.js"></script>

</div> <!-- container -->
	

	<!-- file input -->
	<script src="assests/plugins/fileinput/js/plugins/canvas-to-blob.min.js'); ?>" type="text/javascript"></script>	
	<script src="assests/plugins/fileinput/js/plugins/sortable.min.js" type="text/javascript"></script>	
	<script src="assests/plugins/fileinput/js/plugins/purify.min.js" type="text/javascript"></script>
	<script src="assests/plugins/fileinput/js/fileinput.min.js"></script>	


	<!-- DataTables -->
	<script src="assests/plugins/datatables/jquery.dataTables.min.js"></script>

</body>
</html>