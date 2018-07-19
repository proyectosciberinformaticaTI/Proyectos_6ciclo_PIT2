
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>

<%@taglib uri="/struts-tags" prefix="s"%>


<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/custom.css">
<link rel=icon href='img/logo-icon.png' sizes="32x32" type="image/png">


<link rel="shortcut icon" type="image/png"
	href="/media/images/favicon.png">
<style type="text/css" class="init">
</style>


<style>

/*   a { */
/*     color: #fff; */
/*     text-decoration: none; */
/* } */
/* a:hover { */
/*     color: #fff; */
/*     text-decoration: none; */
/* } */
/* /*--choice modal1--*/
*
/

/* .openbtn{ */
/*     margin-top:80px; */
/* } */
/* .modal-header { */
/*     padding: 15px; */
/*      border-bottom: none; */
/* } */
/* .modal-title{ */
/* 	font-weight:bold; */
/* } */
/* .modal-body.choice-modal{ */
/*     position: relative; */
/*     padding: 0px; */

/* } */

/* .row.inner-scroll { */
/*     height: 445px; */
/*     overflow: auto; */
/* } */

/* .mycard-footer { */
/*     height: 25px; */
/*     background: #333333; */
/*     font-size: 15px; */
/*     text-indent: 10px; */
/*    /* border-radius: 0 0px 4px 4px;*/
 
*
/
/* } */

/* .gallery-card { */
/*     position: relative; */
/*     display: -webkit-box; */
/*     display: -ms-flexbox; */
/*     display: flex; */
/*     -webkit-box-orient: vertical; */
/*     -webkit-box-direction: normal; */
/*     -ms-flex-direction: column; */
/*     flex-direction: column; */
/*     min-width: 0; */
/*     word-wrap: break-word; */
/*     background-color: #fff; */
/*     background-clip: border-box; */
/*     border: 1px solid rgba(0,0,0,.125); */
/*     border-radius: .25rem; */
/* 	    height: 132px; */
/* 		margin-bottom:14px; */
/* } */
/* .gallery-card-body { */
/*     -webkit-box-flex: 1; */
/*     -ms-flex: 1 1 auto; */
/*     flex: 1 1 auto; */
/*     /*padding: 1.25rem;*/
 
*
/
/* } */
/* .gallery-card img { */
/*     height: 100px; */
/*     width: 100%; */
/* } */

/* /*--checkbox--*/
 
*
/

/* .block-check { */
/*     display: block; */
/*     position: relative; */

/*     cursor: pointer; */
/*     font-size: 22px; */
/*     -webkit-user-select: none; */
/*     -moz-user-select: none; */
/*     -ms-user-select: none; */
/*     user-select: none; */
/* } */

/* /* Hide the browser's default checkbox */
 
*
/
/* .block-check input { */
/*     position: absolute; */
/*     opacity: 0; */
/*     cursor: pointer; */
/* } */

/* /* Create a custom checkbox */
 
*
/
/* .checkmark { */
/*     position: absolute; */
/*     top: 0; */
/*     left: 0; */
/*     height: 25px; */
/*     width: 25px; */
/*     background-color: #eee; */
/* 	cursor: pointer; */
/* } */

/* /* On mouse-over, add a grey background color */
 
*
/
/* .block-check:hover input ~ .checkmark { */
/*     background-color: #ccc; */
/* } */

/* /* When the checkbox is checked, add a blue background */
 
*
/
/* .block-check input:checked ~ .checkmark { */
/*     background-color: #2196F3; */
/* } */

/* /* Create the checkmark/indicator (hidden when not checked) */
 
*
/
/* .checkmark:after { */
/*     content: ""; */
/*     position: absolute; */
/*     display: none; */
/* } */

/* /* Show the checkmark when checked */
 
*
/
/* .block-check input:checked ~ .checkmark:after { */
/*     display: block; */
/* } */

/* /* Style the checkmark/indicator */
 
*
/
/* .block-check .checkmark:after { */
/*     left: 9px; */
/*     top: 5px; */
/*     width: 5px; */
/*     height: 10px; */
/*     border: solid white; */
/*     border-width: 0 3px 3px 0; */
/*     -webkit-transform: rotate(45deg); */
/*     -ms-transform: rotate(45deg); */
/*     transform: rotate(45deg); */
/* } */

/*--checkbox css end--*/
</style>




<link rel="alternate" type="application/rss+xml" title="RSS 2.0"
	href="http://www.datatables.net/rss.xml">
<link rel="stylesheet" type="text/css"
	href="https://datatables.net/media/css/site-examples.css?_=19472395a2969da78c8a4c707e72123a">
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
	$('#tableAlumno').DataTable( 


	);


} );



	</script>



<script type="text/javascript" class="init">
	


// 	$(document).ready(function() {
// 		$('#tableAlumno').DataTable();


// 	} );



		</script>






</head>
<body class="wide comments example dt-example-bootstrap">
	<nav class="navbar navbar-default ">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="menuAdministrador.jsp">Proyecto
					PIT 2</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">



					<li class="active"><a href="consultaIncidencias.jsp"><i
							class='glyphicon glyphicon-list-alt'></i>Consultas de incidencias
							<span class="sr-only">(current)</span></a></li>
					<li class=""><a href="mantenimientoModerador.jsp"><i
							class='glyphicon glyphicon-user'></i> Mantenimiento de
							moderadores</a></li>
					<li class=""><a href="mantenimientoAgraviados.jsp"><i
							class='glyphicon glyphicon-user'></i>Consulta de agraviados</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a
						href="${pageContext.request.contextPath}/logoutAdministrador"><i
							class='glyphicon glyphicon-off'></i> Salir</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>



	<div class="container">

		<div class="panel panel-info">
			<div class="panel-heading">
				<h4>
					<i class='glyphicon glyphicon-edit'></i> Consulta de Reportes de
					Incidencias
				</h4>
			</div>
			<div class="panel-body">



				<form class="form-horizontal" action="consultaporTIpoagraviooo"
					method="GET" role="form" id="datos_factura">

					<div class="form-group row">
						<label for="empresa" class="col-md-1 control-label">Tipo
							de Agravio</label>
						<div class="col-md-3">




							<!-- 							class="form-control input-sm"  -->
							<select name="idtb_tipo_agravio" class="form-control input-sm"
								id="idtb_tipo_agravio">
								<option value=" " selected>Seleccione el tipo de
									Agravio</option>

							</select>
						</div>






					</div>



					<div class="form-group row">
						<label for="nombre_cliente" class="col-md-1 control-label">Celular</label>
						<div class="col-md-3">
							<input type="text" class="form-control input-sm" name="celular"
								id="celular" placeholder="celular" readonly>

						</div>
						<label for="tel1" class="col-md-1 control-label">Teléfono</label>
						<div class="col-md-2">
							<input type="text" class="form-control input-sm" name="telefono"
								id="telefono" placeholder="Teléfono" readonly>
						</div>
						<label for="mail" class="col-md-1 control-label">Correo</label>
						<div class="col-md-3">
							<input type="text" class="form-control input-sm" name="correo"
								id="correo" placeholder="Email" readonly>
						</div>
					</div>
					<div class="form-group row">
						<label for="empresa" class="col-md-1 control-label">Moderador</label>
						<div class="col-md-3">
							<select class="form-control input-sm" name="idmoderador"
								id="idmoderador">
								<option value=" ">Seleccione el moderador</option>

							</select>
						</div>
						<label for="tel2" class="col-md-1 control-label">Usuario</label>
						<div class="col-md-2">
							<input type="text" readonly class="form-control input-sm"
								id="usuario">
						</div>







					</div>


					<div class="col-md-12">
						<div class="pull-right">

							<button type="submit" class="btn btn-default">
								<span class="glyphicon glyphicon-print"></span> Consultar
							</button>
						</div>
					</div>



				</form>





				<div class="row">
					<div class="col-md-12">
						<div class="content">
							<table id="tableAlumno"
								class="table table-striped table-bordered nowrap">
								<thead>
									<tr>
										<th>id</th>
										<th>agresor</th>
										<th>agraviado</th>
										<th>zona</th>
										<th>distrito</th>
										<th>tipo incidencia</th>
										<th>fecha registro</th>


										<th>descripción</th>
										<th>galeria</th>


									</tr>
								</thead>
								<tbody>

									<c:forEach items="${lstIncidencias}" var="a">


										<tr>
											<td>${a.idtb_incidencias}</td>
											<td>${a.agresor}</td>
											<td>${a.agraviados.nom_apellido}</td>
											<td>${a.zona.nombre}</td>
											<td>${a.distrito.nombre}</td>
											<td>${a.tipo.nombre}</td>
											<td>${a.fecharegistro}</td>



											<td>${a.descripcion}</td>
											<td>



												<div class="openbtn text-center">

													<%--  editar('${a.idtb_incidencias}');--%>
													<a type="button" class="btn btn-primary"
														href="verDatosInci?idCodigo=${a.idtb_incidencias}"> <img
														alt="IMAGEN"
														src="http://icons.iconarchive.com/icons/tatice/cristal-intense/256/Mes-images-icon.png"
														width="25" height="25" />
													</a>
												</div>
											</td>




										</tr>


									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>















			</div>
		</div>










	</div>







	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-lg">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">What are your Interest?</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>

				</div>
				<div class="modal-body choice-modal">


					<div class="container-fluid">
						<div class="row inner-scroll">

							<div class="col-md-2">
								<div class="gallery-card">
									<div class="gallery-card-body">
										<label class="block-check"> <input type="text"
											id="id_ID" /> <input type="checkbox" checked=""> <span
											class="checkmark"></span>
										</label>
										<div class="mycard-footer">
											<a href="#" class="card-link">Science</a>
										</div>
									</div>
								</div>
							</div>






						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Continue</button>
				</div>
			</div>

		</div>
	</div>
	</div>
	</div>





	<div class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<p class="navbar-text pull-left">
				&copy 2018 - Jeycot Alcas - Joel Anthony Arauzo - Gianpierre
				Velazques <a href="http://obedalvarado.pw/" target="_blank"
					style="color: #ecf0f1">Sitios Web y Sistemas</a>
			</p>
		</div>
	</div>



	<script type="text/javascript">
	
	var varDep = function (){
		$.getJSON("cargacualquiermoderador", //alias del servlet
				{}, //los parametros
				function (data, textStatus, jqXHR) { //los datos llegan en el objeto data
					
					$.each(data.lstmoderador, function (index, item) { //attr-->atributo
							//alert(index + " - " + item.nombre);
							$("<option/>")
							.attr("value",item.idmoderador)
							.text(item.nom_apellido)
							.appendTo("#idmoderador");
					
					
					});
				
				}
		);

		




		};
	
	

		var varEventoTipo = function (){
			var val = $("#idmoderador").val();
			
			$.getJSON("buscamoderadoresIncidencias",{"idmoderador":val}, //los parametros
					function (data, textStatus, jqXHR) { //los datos llegan en el objeto data
						$("#celular").val(data.celular);
						$("#telefono").val(data.telefono);
						$("#correo").val(data.correo);
						$("#usuario").val(data.usuario);
					}
			);

		}
	

	$(document).ready(varDep);
	$("#idmoderador").change(varEventoTipo);
	
	
	
	
</script>
	<script type="text/javascript">

	function editar(id){	
		$('input[id=id_ID]').val(id);
	
		$('#myModal').modal("show");
	}



	</script>
	<script type="text/javascript">
	
	var varDep = function (){
		$.getJSON("cargatipoagravio", //alias del servlet
				{}, //los parametros
				function (data, textStatus, jqXHR) { //los datos llegan en el objeto data
					
					$.each(data.listatipo, function (index, item) { //attr-->atributo
							//alert(index + " - " + item.nombre);
							$("<option/>")
							.attr("value",item.idtb_tipo_agravio)
							.text(item.nombre)
							.appendTo("#idtb_tipo_agravio");
					
					
					});
				
				}
		);

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