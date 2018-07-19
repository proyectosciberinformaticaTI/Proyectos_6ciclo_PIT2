<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql" %> 
	
<%@taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
  <head>
	    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Consulta Incidencias Atendidas</title>
    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	
	<link rel="stylesheet" href="css/custom.css">
	<link rel=icon href='img/logo-icon.png' sizes="32x32" type="image/png">
  
  
  	<link rel="shortcut icon" type="image/png" href="/media/images/favicon.png">
		<style type="text/css" class="init">
	
	</style>
		
		
		
		
		
		
		

<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
	<link rel="stylesheet" type="text/css" href="https://datatables.net/media/css/site-examples.css?_=19472395a2969da78c8a4c707e72123a">
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.2.5/css/select.bootstrap.min.css">

	<style type="text/css" class="init">
	
	</style>
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
	
	<script type="text/javascript" src="https://datatables.net/media/js/site.js?_=30af62656a8280c8984f7320f0cc0923"></script>
	
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.1/js/responsive.bootstrap.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/select/1.2.5/js/dataTables.select.min.js"></script>
<script type="text/javascript" class="init">
	


$(document).ready(function() {
	$('#tableAlumno').DataTable( {
		   select: true,
		responsive: {
			details: {
				display: $.fn.dataTable.Responsive.display.modal( {
					header: function ( row ) {
						var data = row.data();
						return 'Detalles para '+data[0]+' '+data[1];
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
	
	  </head>
  <body>
		<nav class="navbar navbar-default ">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="menuAdministrador.jsp">Proyecto PIT 2</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
        <li class="active"><a href="consultaIncidenciasAtendidas.jsp"><i class='glyphicon glyphicon-list-alt'></i>Consultas de incidencias atendidas <span class="sr-only">(current)</span></a></li>
         <li class="active"><a href="consultaIncidencias.jsp"><i class='glyphicon glyphicon-list-alt'></i>Consultas de incidencias <span class="sr-only">(current)</span></a></li>
		<li class=""><a href="mantenimientoModerador.jsp"><i class='glyphicon glyphicon-user'></i> Mantenimiento de moderadores</a></li>
		<li class=""><a href="mantenimientoAgraviados.jsp"><i  class='glyphicon glyphicon-user'></i>Mantenimiento de agraviados</a></li>
       </ul>
      <ul class="nav navbar-nav navbar-right">
        	<li><a href="${pageContext.request.contextPath}/logoutAdministrador"><i class='glyphicon glyphicon-off'></i> Salir</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	  


<div class="container">

<div class="panel panel-info">
		<div class="panel-heading">
			<h4><i class='glyphicon glyphicon-edit'></i> Consulta de Reportes de Incidencias Atendidas</h4>
		</div>
		<div class="panel-body">
				
			
				
				<form class="form-horizontal"  action="consultaporModeradorrrrrrrrrrr" role="form" id="datos_factura">
				<div class="form-group row">
				  <label for="nombre_cliente" class="col-md-1 control-label">Celular</label>
				  <div class="col-md-3">
					 <input type="text" class="form-control input-sm" name="celular" id="celular" placeholder="celular" readonly>

				  </div>
				  <label for="tel1" class="col-md-1 control-label">Teléfono</label>
							<div class="col-md-2">
									<input type="text" class="form-control input-sm" name="telefono" id="telefono" placeholder="Teléfono" readonly>
							</div>
					<label for="mail" class="col-md-1 control-label">Correo</label>
							<div class="col-md-3">
								<input type="text" class="form-control input-sm" name="correo" id="correo" placeholder="Email" readonly>
							</div>
				 </div>
						<div class="form-group row">
							<label for="empresa" class="col-md-1 control-label">Moderador</label>
							<div class="col-md-3">
								<select class="form-control input-sm" name="idmoderador" id="idmoderador">
																				<option value=" ">Seleccione el moderador</option>
																					
																			</select>
							</div>
							<label for="tel2" class="col-md-1 control-label">Usuario</label>
							<div class="col-md-2">
								<input type="text" readonly class="form-control input-sm" id="usuario">
							</div>
					
					
					<label for="mail" class="col-md-1 control-label">Dirección</label>
							<div class="col-md-3">
								<input type="text" class="form-control input-sm" name="direccion" id="direccion" placeholder="Direccion" readonly>
							</div>
					
					
					
					
					
						</div>
				
				
				<div class="col-md-12">
					<div class="pull-right">
					
						<button type="submit" class="btn btn-default">
						  <span class="glyphicon glyphicon-print"></span> Consultar
						</button>
					</div>	
				</div>
			
			
			
			
			
			
			
			
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
							<table id="tableAlumno" class="table table-striped table-bordered nowrap">
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
													
													<th>Descripción</th>
												
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
												
													
														<td>${a.descripcion} </td>
													
													
										
													</tr>
												
											
											</c:forEach>
										</tbody>
										</table>		
									
								</div>	
						</div>
					</div>	
				
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			</form>	
			
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
					
				  </div>
				</div>
		









</div>









<div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
      <p class="navbar-text pull-left">&copy 2018 - Jeycot Alcas - Joel Anthony Arauzo - Gianpierre Velazques
           <a href="http://obedalvarado.pw/" target="_blank" style="color: #ecf0f1">Sitios Web y Sistemas</a>
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
  </body>
</html>