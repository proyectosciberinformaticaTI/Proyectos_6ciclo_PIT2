
<%@page import="com.proyecto.bean.incidenciasBean"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>

<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/fullcalendar.min.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="js/es.js" charset="UTF-8"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/fullcalendar.min.css" />
<link rel="stylesheet" href="css/fullcalendar.print.min.css"
	media='print' />
<link rel="stylesheet" href="css/bootstrap.css" />




<link rel="stylesheet" href="media/css/bootstrap.css">
<link rel="stylesheet" href="media/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="media/font-awesome/css/font-awesome.css">
<!--Javascript-->
<script src="media/js/jquery-1.10.2.js"></script>
<script src="media/js/jquery.dataTables.min.js"></script>
<script src="media/js/dataTables.bootstrap.min.js"></script>
<script src="media/js/bootstrap.js"></script>

<script>
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip(); 
    });
    </script>


<!-- bootstrap -->
<link rel="stylesheet" href="assests/bootstrap/css/bootstrap.min.css">
<!-- bootstrap theme -->
<link rel="stylesheet"
	href="assests/bootstrap/css/bootstrap-theme.min.css">
<!-- font awesome -->
<link rel="stylesheet"
	href="assests/font-awesome/css/font-awesome.min.css">

<style type="text/css">
.ui-datepicker-calendar {
	display: none;
}
</style>


<!--   <!-- custom css -->
<link rel="stylesheet" href="custom/css/custom.css">

<!-- DataTables -->
<link rel="stylesheet"
	href="assests/plugins/datatables/jquery.dataTables.min.css">

<!-- file input -->
<link rel="stylesheet"
	href="assests/plugins/fileinput/css/fileinput.min.css">

<!-- jquery -->
<!-- 	<script src="assests/jquery/jquery.min.js"></script> -->
<!-- jquery ui   -->
<link rel="stylesheet" href="assests/jquery-ui/jquery-ui.min.css">

<!-- bootstrap js -->





<link rel="alternate" type="application/rss+xml" title="RSS 2.0"
	href="http://www.datatables.net/rss.xml">
<link rel="stylesheet" type="text/css"
	href="https://datatables.net/media/css/site-examples.css?_=19472395a2969da78c8a4c707e72123a">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/select/1.2.5/css/select.bootstrap.min.css">

<style type="text/css" class="init">
</style>

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>

<script type="text/javascript"
	src="https://datatables.net/media/js/site.js?_=30af62656a8280c8984f7320f0cc0923"></script>

<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/responsive/2.2.1/js/responsive.bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://cdn.datatables.net/select/1.2.5/js/dataTables.select.min.js"></script>
<script type="text/javascript" class="init">
	


$(document).ready(function() {
	$('#tableAlumno').DataTable( {
		   select: true,
		responsive: {
			details: {
				display: $.fn.dataTable.Responsive.display.modal( {
					header: function ( row ) {
						var data = row.data();
						return 'Detalles para '+data[0]+' '+data[3];
					}
				} ),
				renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
					tableClass: 'table'
				} )
			}
		}
	} 



	);


} );



	</script>




<title>Stock Management System</title>


</head>
<body class="wide comments example dt-example-bootstrap">


	<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- <a class="navbar-brand" href="#">Brand</a> -->
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav navbar-right">

					<li id="navDashboard"><a href="menuModerador.jsp"><i
							class="glyphicon glyphicon-list-alt"></i>Inicio</a></li>


					<li class="dropdown" id="navOrder">
						<ul class="dropdown-menu">
							<li id="topNavManageOrder"><a href="orders.php?o=manord">
									<i class="glyphicon glyphicon-edit"></i> Manage Orders
							</a></li>
						</ul>
					</li>

					<li id="navReport"><a href="listadoReportes.jsp"> <i
							class="glyphicon glyphicon-check"></i>Listado de Reportes
					</a></li>

					<li class="dropdown" id="navSetting"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false"> <i
							class="glyphicon glyphicon-user"></i> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li id="topNavLogout"><a
								href="${pageContext.request.contextPath}/logoutModerador"> <i
									class="glyphicon glyphicon-log-out"></i> Salir
							</a></li>
						</ul></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>



	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-check"></i> Listado de Reporte
					</div>
					<!-- /panel-heading -->
					<div class="panel-body">




						<form class="form-horizontal" action="consultaIncidencias"
							method="post" id="getOrderReportForm">

							<c:if test="${sessionScope.mensaje1106 != null}">
								<div class="alert alert-success fade in">

									<a href="#" class="close" data-dismiss="alert"
										aria-label="close">×</a> ${sessionScope.mensaje1106}
								</div>
							</c:if>

							<div class="form-group">
								<label for="exampleFormControlSelect2">Zona</label> <select
									name="fzona" class="form-control" id="idtb_zona">
									<option>Seleccione una opcion</option>

								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect2">Distrito</label> <select
									name="fdistrito" class="form-control" id="idtb_distrito">
									<option>Seleccione una opcion</option>

								</select>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-success"
										id="generateReportBtn">
										<i class="glyphicon glyphicon-ok-sign"></i> Filtrar
									</button>
								</div>
							</div>




							<div class="row">
								<div class="col-md-12">
									<div class="content">
										<table id="tableAlumno"
											class="table table-striped table-bordered nowrap"
											style="width: 100% px;">
											<thead>
												<tr>
													<th>ID</th>
													<th>Moderador</th>
													<th>agresor</th>
													<th>agraviado</th>
													<th>zona</th>
													<th>Distrito</th>
													<th>Tipo incidencia</th>
													<th>Fecha registro</th>

													<th>Descripcion</th>
													<th>Asginar moderador</th>
												</tr>
											</thead>
											<tbody>

												<c:forEach items="${lstincidencias9}" var="a">


													<tr>
														<td>${a.idtb_incidencias}</td>
														<td>${a.moderador.nom_apellido}</td>


														<td>${a.agresor}</td>
														<td>${a.agraviados.nom_apellido}</td>

														<td>${a.zona.nombre}</td>
														<td>${a.distrito.nombre}</td>
														<td>${a.tipo.nombre}</td>
														<td>${a.fecharegistro}</td>


														<td>${a.descripcion}</td>


														<td><a id="agresor" type="button"
															class='btn btn-success'
															
															
																<c:if test="${a.moderador.nom_apellido != null}"> style='visibility: hidden;'</c:if>
															href="verDatos?idCodigo=${a.idtb_incidencias}"><img
																src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKSSzSig4NQKj3RJAG3zYf6cw3oWj29ZE2_Dtwdd7G3ow7IdIr"
																alt="imagen" width="30px;" height="30px;" /> </a></td>

													</tr>


												</c:forEach>
											</tbody>
										</table>

									</div>
								</div>
							</div>
						</form>

					</div>
					<br />
					<br />










				</div>
			</div>

		</div>
		<!-- /panel-body -->
	</div>

	<!-- /col-dm-12 -->

	<!-- /row -->

	<!-- container -->








	<!-- file input -->
	<script
		src="assests/plugins/fileinput/js/plugins/canvas-to-blob.min.js'); ?>"
		type="text/javascript"></script>
	<script src="assests/plugins/fileinput/js/plugins/sortable.min.js"
		type="text/javascript"></script>
	<script src="assests/plugins/fileinput/js/plugins/purify.min.js"
		type="text/javascript"></script>
	<script src="assests/plugins/fileinput/js/fileinput.min.js"></script>


	<!-- DataTables -->
	<script src="assests/plugins/datatables/jquery.dataTables.min.js"></script>




	<script type="text/javascript">







$(document).ready(function(){
	  $("#agresor").click(function(){
	   
		$(location).attr('href', 'registrarReporteModerador.jsp');

	  });
	});
  


</script>


	<script type="text/javascript">
	
	var varDep = function (){
		

		$.getJSON("cargazona", //alias del servlet
				{}, //los parametros
				function (data, textStatus, jqXHR) { //los datos llegan en el objeto data
					
					$.each(data.listaZona, function (index, item) { //attr-->atributo
							//alert(index + " - " + item.nombre);
							$("<option/>")
							.attr("value",item.idtb_zona)
							.text(item.nombre)
							.appendTo("#idtb_zona");
					
					
					});
				
				}
		);


		$.getJSON("cargadistrito", //alias del servlet
				{}, //los parametros
				function (data, textStatus, jqXHR) { //los datos llegan en el objeto data
					
					$.each(data.listadistrito, function (index, item) { //attr-->atributo
							//alert(index + " - " + item.nombre);
							$("<option/>")
							.attr("value",item.idtb_distrito)
							.text(item.nombre)
							.appendTo("#idtb_distrito");
					
					
					});
				
				}
		);


		};
	
	
	
	

	$(document).ready(varDep);
</script>




</body>



</html>