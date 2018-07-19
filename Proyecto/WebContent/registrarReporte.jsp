<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>

<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>

<sj:head jqueryui="true" />
<title>Stock Management System</title>


<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- This 2 is for jQuery UI -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css">

<!--  This is for Bootstrap UI
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css">
		-->

<!-- Plugin for Column Visiblity - CSS - 1 file -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.0.3/css/buttons.dataTables.min.css">

<link rel="stylesheet" type="text/css" href="css/datable_custom.css">


<!-- 	This 2 for Bootstrap UI
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
 -->

<!-- Plugin for Column Visiblity - JS - 2 files -->

<!-- External Javascript Sources - End -->
<style type="text/css">
li:hover {
	background-color: #C8C8C8;
}

.blue {
	color: green;
}

form {
	padding-left: 20px;
	padding-right: 10px;
}

.b {
	margin-bottom: 90px;
}
</style>

<style type="text/css">
img {
	max-width: 100px;
	height: 100px;
	margin-top: 20px;
}

input {
	margin-top: 20px;
}
</style>


<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

<!-- bootstrap -->
<link rel="stylesheet" href="assests/bootstrap/css/bootstrap.min.css">
<!-- bootstrap theme-->
<link rel="stylesheet"
	href="assests/bootstrap/css/bootstrap-theme.min.css">
<!-- font awesome -->
<link rel="stylesheet"
	href="assests/font-awesome/css/font-awesome.min.css">

<!-- custom css -->
<link rel="stylesheet" href="custom/css/custom.css">

<!-- DataTables -->
<link rel="stylesheet"
	href="assests/plugins/datatables/jquery.dataTables.min.css">

<!-- file input -->
<link rel="stylesheet"
	href="assests/plugins/fileinput/css/fileinput.min.css">

<!-- jquery -->
<!-- jquery ui -->

<!-- bootstrap js -->






<script type="text/javascript" src="js/bootstrapValidator.js"></script>



<link rel="stylesheet" href="css/fullcalendar.min.css" />
<link rel="stylesheet" href="css/fullcalendar.print.min.css"
	media='print' />
<link rel="stylesheet" href="css/bootstrap.css" />




<link rel="stylesheet" href="media/css/bootstrap.css">
<link rel="stylesheet" href="media/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="media/font-awesome/css/font-awesome.css">
<!--Javascript-->

<script src="media/js/bootstrap.js"></script>

</head>
<body>

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



					<li class="dropdown" id="navOrder">
						<ul class="dropdown-menu">
							<li id="topNavManageOrder"><a href="orders.php?o=manord">
									<i class="glyphicon glyphicon-edit"></i> Manage Orders
							</a></li>
						</ul>
					</li>

					<li id="navReport"><a href="registrarReporte.jsp"> <i
							class="glyphicon glyphicon-check"></i> Reporte
					</a></li>

					<li class="dropdown" id="navSetting"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false"> <i
							class="glyphicon glyphicon-user"></i> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li id="topNavSetting"><a href="confirmar.jsp"> <i
									class="glyphicon glyphicon-wrench"></i> Seguridad
							</a></li>
							<li id="topNavLogout"><a href="index.jsp"> <i
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
			<s:form name="" theme="simple" action="registroIncidenciasagraviados" id="defaultForm"
				method="POST" enctype="multipart/form-data" class="form-horizontal"
				accept-charset="UTF-8">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="glyphicon glyphicon-check"></i> Orden de Reporte
						</div>
						<!-- /panel-heading -->
						<div class="panel-body">



							<c:if test="${sessionScope.mensajedeFotos != null}">
								<div class="alert alert-success fade in">

									<a href="#" class="close" data-dismiss="alert"
										aria-label="close">�</a> ${sessionScope.mensajedeFotos}
								</div>
							</c:if>

							<c:if test="${requestScope.mensaje6 != null}">
								<div class="alert alert-success fade in">

									<a href="#" class="close" data-dismiss="alert"
										aria-label="close">�</a> ${requestScope.mensaje6}
								</div>
							</c:if>


							<div class="container" style="margin-top: 50px;">


								<!--        aqui -->


								<div id="edit_farmer" style="display: none"></div>
								<!--           <div class="row"> -->
								<!--             <div class="col-md-2 panel panel-heading">Informaci�n del Agraviado</div> -->
								<!--             <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="contact_error"></div> -->
								<!--           </div> -->

								<!--           <div class="row form-group"> -->
								<!--             <label class="col-md-2 control-label" for="mobile">Telefono</label> -->
								<!--             <div class="col-md-3"> -->
								<!--     <div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-phone"></i> -->
								<!-- 			</span> -->
								<!--               <input id="mobile" maxlength="10" name="mobile" placeholder="xxxxxxxxxxxx" class="form-control input-md ac_mobile" type="number" value={{mobile}} > -->

								<!--             </div> -->
								<!-- 	</div> -->


								<!--             <label class="col-md-2 control-label" for="mobile">Celular</label> -->
								<!--             <div class="col-md-3"> -->
								<!--     <div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-phone"></i> -->
								<!-- 			</span> -->
								<!--               <input id="mobile" maxlength="10" name="mobile" placeholder="xxxxxxxxxxxx" class="form-control input-md ac_mobile" type="number" value={{mobile}} > -->

								<!--             </div>		</div> -->
								<!--             <div class="col-md-1"> -->

								<!--               <a id="add_mobile" onclick=add_mobile()><i class="glyphicon glyphicon-plus"></i></a> -->
								<!--             </div> -->
								<!--           </div> -->

								<!--           <div class="row form-group"> -->
								<!--             <div class="col-md-8" id="mobile_numbers"></div> -->
								<!--           </div> -->

								<!--           <div class="row form-group"> -->
								<!--             <label class="col-md-1 control-label" for="first_name">Nombre y Apellido</label>   -->
								<!--             <div class="col-md-2"> -->
								<!-- 			<div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-user"></i> -->
								<!-- 			</span> -->
								<!--               <input id="first_name" name="first_name" placeholder="" class="form-control input-md" type="text"> -->
								<!--             </div></div> -->

								<!--             <label class="col-md-1 control-label" for="middle_name">Correo electronico</label>   -->
								<!--             <div class="col-md-2"> -->
								<!-- 			<div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-user"></i> -->
								<!-- 			</span> -->
								<!--               <input id="middle_name" name="middle_name" placeholder="" class="form-control input-md" type="text"> -->
								<!--             </div> -->
								<!-- 		</div> -->
								<!--             <label class="col-md-1 control-label" for="last_name">Fecha de Nacimiento</label>   -->
								<!--             <div class="col-md-2"> -->
								<!-- 			<div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-user"></i> -->
								<!-- 			</span> -->
								<!--               <input id="fec_name" name=fec_name" placeholder="" class="form-control input-md" type="date"> -->
								<!--             </div> -->
								<!-- 	</div> -->
								<!--           </div> -->

								<!--           <div class="row form-group"> -->


								<!--             <label class="col-md-1 control-label" for="description">Codigo Agraviante</label> -->
								<!--             <div class="col-md-2"> -->
								<!-- 			<div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-pencil"></i> -->
								<!-- 			</span> -->
								<!--               <input id="codagraviado" name="codagraviado" placeholder="" class="form-control input-md" type="text"> -->
								<!--             </div></div> -->
								<!--           </div> -->




								<!--           <div id="edit_farmer" style="display:none"></div> -->
								<!--           <div class="row"> -->
								<!--             <div class="col-md-2 panel panel-heading">Informaci�n del Agraviante</div> -->
								<!--             <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="contact_error"></div> -->
								<!--           </div> -->

								<!--           <div class="row form-group"> -->
								<!--             <label class="col-md-2 control-label" for="mobile">Nombre</label> -->
								<!--             <div class="col-md-3"> -->
								<!--     <div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-phone"></i> -->
								<!-- 			</span> -->
								<!--               <input id="mobile" maxlength="10" name="mobile" placeholder="xxxxxxxxxxxx" class="form-control input-md ac_mobile" type="number" value={{mobile}} > -->

								<!--             </div> -->
								<!-- 	</div> -->


								<!--             <label class="col-md-2 control-label" for="mobile">Fecha de Nacimiento</label> -->
								<!--             <div class="col-md-3"> -->
								<!--     <div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-phone"></i> -->
								<!-- 			</span> -->
								<!--               <input id="mobile" maxlength="10" name="mobile" placeholder="xxxxxxxxxxxx" class="form-control input-md ac_mobile" type="number" value={{mobile}} > -->

								<!--             </div>		</div> -->
								<!--             <div class="col-md-1"> -->

								<!--               <a id="add_mobile" onclick=add_mobile()><i class="glyphicon glyphicon-plus"></i></a> -->
								<!--             </div> -->
								<!--           </div> -->

								<!--           <div class="row form-group"> -->
								<!--             <div class="col-md-8" id="mobile_numbers"></div> -->
								<!--           </div> -->

								<!--           <div class="row form-group"> -->
								<!--             <label class="col-md-1 control-label" for="first_name">Direccion</label>   -->
								<!--             <div class="col-md-2"> -->
								<!-- 			<div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-user"></i> -->
								<!-- 			</span> -->
								<!--               <input id="first_name" name="first_name" placeholder="" class="form-control input-md" type="text"> -->
								<!--             </div></div> -->

								<!--             <label class="col-md-1 control-label" for="middle_name">Codigo</label>   -->
								<!--             <div class="col-md-2"> -->
								<!-- 			<div class="input-group"> -->
								<!-- 			<span class="input-group-addon"> -->
								<!-- 			<i class="glyphicon glyphicon-user"></i> -->
								<!-- 			</span> -->
								<!--               <input id="middle_name" name="middle_name" placeholder="" class="form-control input-md" type="text"> -->
								<!--             </div> -->
								<!-- 		</div> -->

								<!--           </div> -->



								<div class="row">
									<div class="col-md-2 panel panel-heading">Informacion de
										incidencia :</div>
									<div class="col-md-4 panel panel-heading"
										style="display: none; color: red" id="address_error"></div>
								</div>

						
								<div class="row form-group">

									<label class="col-md-3 control-label" for="street_address">Codigo
										agraviado :</label>
									<div class="col-md-5">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="glyphicon glyphicon-pencil"></i>
											</span> <input type="text"
												value="<s:property  value="#session.objUsuario.idagraviado"/>"
												class="form-control" id="idagraviado" readonly
												name="idagraviado" autocomplete="off" onkeyup="paidAmount()">

										</div>

									</div>

								</div>






							</div>



							<div class="form-group">

								<label class="col-md-3 control-label" for="street_address">Testimonio
								</label>
								<div class="col-md-5">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="glyphicon glyphicon-pencil"></i>
										</span>
										<textarea class="form-control" id="descripcion"
											name="descripcion" placeholder="Addess Details..."></textarea>


									</div>

								</div>

							</div>


							<div class="form-group">
								<label for="paid" class="col-sm-5 control-label">Nombre
									del agresor :</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="agresor"
										name="agresor" autocomplete="off" onkeyup="paidAmount()">
								</div>
							</div>
							<br /> <br /> <br />

							<div class="form-group">
								<label class="col-md-1 control-label" for="sms">Zona</label>
								<div class="col-md-3">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="glyphicon glyphicon-list"></i>
										</span><s:url id="idDep" action="cargaUbigeonuevas" />
										<sj:select href="%{idDep}" list="lstzonas" listKey="idtb_zona"
											listValue="zona" headerKey=" " headerValue=" [ Seleccione ]"
											name="zona" onChangeTopics="topicoDistrito"
											cssClass="form-control" />

									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-1 control-label" for="sms">Tipo de
									Agravio</label>
								<div class="col-md-3">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="glyphicon glyphicon-list"></i>
										</span> <select id="idtb_tipo_agravio" name="idtb_tipo_agravio"
											class="form-control input-md">
											<option value=" ">Seleccione una opcion</option>

										</select>
									</div>
								</div>

							</div>
							<div class="form-group">


								<label class="col-md-1 control-label" for="sms">Distrito
									:</label>
								<div class="col-md-3">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="glyphicon glyphicon-list"></i>
										</span> 	<s:url id="idDep2" action="cargaUbigeonuevas" />
										<sj:select href="%{idDep2}" list="lstdistritos"
											listKey="idtb_distrito" listValue="nombre" headerKey=" "
											headerValue=" [ Seleccione ]" reloadTopics="topicoDistrito"
											onChangeTopics="topicoModerador" name="distrito"
											cssClass="form-control" />



										
									</div>
								</div>


							</div>





						</div>





						<div class="form-group row">
							<div class="col-md-8 text-center">
								<button id="save" name="save" type="submit"
									class="btn btn-large btn-success">Enviar alerta</button>

							</div>

						</div>






					</div>
			</s:form>


		</div>
		<!-- /panel-body -->
	</div>
	</div>
	<!-- /col-dm-12 -->
	</div>
	<!-- /row -->


	</div>
	<!-- container -->




	<script type="text/javascript">
		var varDep = function() {
			$.getJSON("cargatipoagravio", //alias del servlet
			{}, //los parametros
			function(data, textStatus, jqXHR) { //los datos llegan en el objeto data

				$.each(data.listatipo, function(index, item) { //attr-->atributo
					//alert(index + " - " + item.nombre);
					$("<option/>").attr("value", item.idtb_tipo_agravio).text(
							item.nombre).appendTo("#idtb_tipo_agravio");

				});

			});

			


		};

		$(document).ready(varDep);
	</script>



	<script>
		$(document)
				.ready(
						function() {
							$('#defaultForm')
									.bootstrapValidator(
											{
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													zona : {
														validators : {
															notEmpty : {
																message : 'El zona es necesario'
															}
														}
													},

													descripcion : {
														validators : {
															notEmpty : {
																message : 'La descripcion es necesario'
															}
														}
													},
													agresor : {
														validators : {
															notEmpty : {
																message : 'El nombre es necesario'
															},
															regexp : {
																regexp : /^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
																message : 'Fomato incorrecto'
															}
														}
													},

													distrito : {
														validators : {
															notEmpty : {
																message : 'El distrito es necesario'
															}
														}
													},
													idtb_tipo_agravio : {
														validators : {
															notEmpty : {
																message : 'La tipo de agravio es necesario'
															}
														}
													},

												}
											});
						});
	</script>



</body>
</html>