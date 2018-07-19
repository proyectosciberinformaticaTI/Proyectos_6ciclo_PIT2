
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>

<%@taglib uri="/struts-tags" prefix="s"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Menú Principal Administrador</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">



<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />

<link rel="stylesheet" href="css/bootstrapValidator.css" />
<script type="text/javascript" src="js/bootstrapValidator.js"></script>


<script type="text/javascript"
	src="http://www.phpzag.com/demo/delete-records-with-bootstrap-confirm-modal-using-php-mysql/script/bootbox.min.js"></script>

<script type="text/javascript" src="js/deleteRecords.js"></script>



<script type="text/javascript">

function solonumeros(e)
{
var key = window.event ? e.which : e.keyCode;
    if(key < 48 || key > 57)
        e.preventDefault();
}
</script>
<link rel="stylesheet" href="css/custom.css">
</head>
<body class="wide comments example">
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








	</br>
	</br>
	</br>
	</br>
	</br>
	</br>


	<div class="panel panel-info">
		<div class="panel-heading">
			<div class="btn-group pull-right">
				<button type="button" class="btn btn-info" data-toggle="modal"
					data-target="#nuevoProducto">
					<span class="glyphicon glyphicon-plus"></span> Nuevo Moderador
				</button>
			</div>
			<h4>
				<i class="glyphicon glyphicon-search"></i>Mantenimiento Moderadores
			</h4>
		</div>
		<div class="panel-body">
			<c:if test="${requestScope.mensaje77 != null}">
				<div class="alert alert-success fade in">

					<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
					${requestScope.mensaje77}
				</div>
			</c:if>



			<c:if test="${requestScope.mensaje123 != null}">
				<div class="alert alert-success fade in">

					<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
					${requestScope.mensaje123}
				</div>
			</c:if>


			<form id="idFormElimina" action="eliminaModerador">
				<input type="hidden" id="id_elimina" name="idmoderador">
			</form>


			<!-- Modal -->
			<div class="modal fade" id="nuevoProducto" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">


					<form class="form-horizontal" action="registrotodosModeradores"
						accept-charset="UTF-8" method="post" enctype="multipart/form-data"
						id="guardar_moderador" name="guardar_producto">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">
									<i class="glyphicon glyphicon-edit"></i> Agregar nuevo
									Moderador
								</h4>
							</div>
							<div class="modal-body">
								<div id="resultados_ajax2"></div>
								<div class="form-group">
									<label for="mod_codigo" class="col-sm-3 control-label">Nombre
										y Apellido :</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="nom_apellido"
											name="nom_apellido"
											placeholder="Ingrese el nombre y apellido">

									</div>
								</div>
								<div class="form-group">
									<label for="mod_nombre" class="col-sm-3 control-label">Entidad
										:</label>
									<div class="col-sm-8">
										<input type="text" 
											maxlength="30" class="form-control" id="entidad"
											name="entidad" placeholder="Ingrese la entidad">
									</div>
								</div>




								<div class="form-group">
									<label for="mod_nombre" class="col-sm-3 control-label">Fotos
										:</label>
									<div class="col-sm-8">
										<input type="file" class="form-control" id="fotos"
											name="fotos" placeholder="Ingrese la foto">
									</div>
								</div>

								<div class="form-group">
									<label for="mod_estado" class="col-sm-3 control-label">Distrito
										:</label>
									<div class="col-sm-8">
										<select class="form-control" id="idtb_distrito"
											name="idtb_distrito" required="">
											<option value="">-- Seleccione el distrito --</option>

										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="mod_precio" class="col-sm-3 control-label">Usuario
										:</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="usuario"
											name="usuario" placeholder="Ingrese el nombre de usuario">
									</div>
								</div>



								<div class="form-group">
									<label for="mod_precio" class="col-sm-3 control-label">Contraseña
										:</label>
									<div class="col-sm-8">
										<input type="password" class="form-control" id="contrasena"
											name="contrasena" placeholder="ingrese la contraseña">
									</div>
								</div>

								<div class="form-group">
									<label for="mod_precio" class="col-sm-3 control-label">Correo
										:</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="correo"
											name="correo" placeholder="Ingrese el correo" required="">
									</div>
								</div>

								<div class="form-group">
									<label for="mod_precio" class="col-sm-3 control-label">DNI
										:</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" maxlength="8"
											onkeypress="solonumeros(event)" id="dni" name="dni"
											placeholder="ingrese el dni">
									</div>
								</div>




								<div class="form-group">
									<label for="mod_precio" class="col-sm-3 control-label">Telefono
										:</label>
									<div class="col-sm-8">
										<input type="text" class="form-control"
											onkeypress="solonumeros(event)" maxlength="7" id="telefono"
											name="telefono" placeholder="ingrese el dni">
									</div>
								</div>


								<div class="form-group">
									<label for="mod_precio" class="col-sm-3 control-label">Celular
										:</label>
									<div class="col-sm-8">
										<input type="text" class="form-control"
											onkeypress="solonumeros(event)" maxlength="9" id="celular"
											name="celular" placeholder="ingrese el dni">
									</div>
								</div>


							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cerrar</button>
								<button type="submit" class="btn btn-primary" id="guardar_datos">Guardar
									datos</button>
							</div>


						</div>
					</form>
				</div>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">
								<i class="glyphicon glyphicon-edit"></i> Editar producto
							</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" method="post" id="editar_producto"
								name="editar_producto">
								<div id="resultados_ajax2"></div>
								<div class="form-group">
									<label for="mod_codigo" class="col-sm-3 control-label">Código</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="mod_codigo"
											name="mod_codigo" placeholder="Código del producto"
											required=""> <input type="hidden" name="mod_id"
											id="mod_id">
									</div>
								</div>
								<div class="form-group">
									<label for="mod_nombre" class="col-sm-3 control-label">Nombre</label>
									<div class="col-sm-8">
										<textarea class="form-control" id="mod_nombre"
											name="mod_nombre" placeholder="Nombre del producto"
											required=""></textarea>
									</div>
								</div>

								<div class="form-group">
									<label for="mod_estado" class="col-sm-3 control-label">Estado</label>
									<div class="col-sm-8">
										<select class="form-control" id="mod_estado" name="mod_estado"
											required="">
											<option value="">-- Selecciona estado --</option>
											<option value="1" selected="">Activo</option>
											<option value="0">Inactivo</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="mod_precio" class="col-sm-3 control-label">Precio</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="mod_precio"
											name="mod_precio" placeholder="Precio de venta del producto"
											required="" pattern="^[0-9]{1,5}(\.[0-9]{0,2})?$"
											title="Ingresa sólo números con 0 ó 2 decimales"
											maxlength="8">
									</div>
								</div>



							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cerrar</button>
							<button type="submit" class="btn btn-primary"
								id="actualizar_datos">Actualizar datos</button>
						</div>

					</div>
				</div>
			</div>
			<form class="form-horizontal" method="POST"
				action="consultallllllModeradores" id="datos_cotizacion">

				<div class="form-group row">
					<label for="q" class="col-md-2 control-label">DNI :</label>
					<div class="col-md-5">
						<input type="text" onkeypress="solonumeros(event)"
							class="form-control" name="filtro" id="filtro"
							placeholder="Inserte el dni del moderador" onkeyup="load(1);">
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span> Buscar
						</button>
						<span id="loader"></span>
					</div>

				</div>




				<table id="example" data-form="deleteForm"
					class="table table-striped table-bordered con" class="display">
					<thead>
						<tr>
							<th>Codigo</th>
							<th>Nombre y Apellido</th>
							<th>Entidad</th>
							<th>Dni</th>
							<th>Correo</th>
							<th>Celular</th>
							<th>Telefono</th>
							<th>Distrito</th>
							<th>Usuario</th>
							<th>Contraseña</th>
							<th>Foto</th>
							<th>Editar</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${lstmoderador}" var="a">
							<tr>
								<td>${a.idmoderador}</td>
								<td>${a.nom_apellido}</td>
								<td>${a.entidad}</td>
								<td>${a.dni}</td>
								<td>${a.correo}</td>
								<td>${a.celular}</td>
								<td>${a.telefono}</td>
								<td>${a.distrito.nombre}</td>
								<td>${a.usuario}</td>
								<td>${a.contrasena}</td>
								<td><img alt="Imagen" width="100px" height="100px"
									src="verFotosmoderador?idCodigo=${a.idmoderador}"></td>

								<td><a
									onclick="editar('${a.idmoderador}','${a.nom_apellido}','${a.entidad}','${a.dni}','${a.correo}','${a.telefono}','${a.celular}','${a.usuario}','${a.contrasena}','${a.distrito.idtb_distrito}');"
									type='button' data-toggle='modal' class='btn btn-success'
									style='background-color: hsla(233, 100%, 100%, 0);'> <img
										src='images/edit.gif' id='id_update' width='auto'
										height='auto' />
								</a></td>


							</tr>




						</c:forEach>

					</tbody>

				</table>




			</form>


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


	<div class="modal fade" id="idModalActualiza">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-ok-sign"></span> Actualiza
						Moderador
					</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
					<form id="defaultForm_2" accept-charset="UTF-8"
						action="actualizartodosModeradores" class="form-horizontal"
						method="post">
						<div class="panel-group" id="steps">
							<!-- Step 1 -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos
											de moderador</a>
									</h4>
								</div>
								<div id="stepOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="form-group">
											<label class="col-lg-3 control-label" for="id_ID">ID</label>
											<div class="col-lg-5">
												<input class="form-control" id="idmoderador"
													readonly="readonly" name="idmoderador" type="text" />
											</div>
										</div>


										<div class="form-group">
											<label for="mod_codigo" class="col-sm-3 control-label">Nombre
												y Apellido :</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="nom_apellido"
													name="nom_apellido"
													placeholder="Ingrese el nombre y apellido">

											</div>
										</div>
										<div class="form-group">
											<label for="mod_nombre" class="col-sm-3 control-label">Entidad
												:</label>
											<div class="col-sm-8">
												<input type="text"
												   maxlength="30"
												    class="form-control" id="entidad"
													name="entidad" placeholder="Ingrese la entidad">
											</div>
										</div>





										<div class="form-group">
											<label for="mod_estado" class="col-sm-3 control-label">Distrito
												:</label>
											<div class="col-sm-8">
												<select class="form-control" id="idtb_distrit"
													name="idtb_distrito" required="">
													<option value=" ">-- Seleccione el distrito --</option>


												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="mod_precio" class="col-sm-3 control-label">Usuario
												:</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="usuario"
													name="usuario" placeholder="Ingrese el nombre de usuario">
											</div>
										</div>



										<div class="form-group">
											<label for="mod_precio" class="col-sm-3 control-label">Contraseña
												:</label>
											<div class="col-sm-8">
												<input type="password" class="form-control" id="contraseña"
													name="contrasena" placeholder="ingrese la contraseña">
											</div>
										</div>

										<div class="form-group">
											<label for="mod_precio" class="col-sm-3 control-label">Correo
												:</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="correo"
													name="correo" placeholder="Ingrese el correo" required="">
											</div>
										</div>

										<div class="form-group">
											<label for="mod_precio" class="col-sm-3 control-label">DNI
												:</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" maxlength="8"
													readonly onkeypress="solonumeros(event)" id="dni"
													name="dni" placeholder="ingrese el dni">
											</div>
										</div>





										<div class="form-group">
											<label for="mod_precio" class="col-sm-3 control-label">Telefono
												:</label>
											<div class="col-sm-8">
												<input type="text" class="form-control"
													onkeypress="solonumeros(event)" maxlength="7" id="telefono"
													name="telefono" placeholder="ingrese el dni">
											</div>
										</div>


										<div class="form-group">
											<label for="mod_precio" class="col-sm-3 control-label">Celular
												:</label>
											<div class="col-sm-8">
												<input type="text" class="form-control"
													onkeypress="solonumeros(event)" maxlength="9" id="celular"
													name="celular" placeholder="ingrese el dni">
											</div>
										</div>


									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Cerrar</button>
										<button type="submit" class="btn btn-primary"
											id="guardar_datos">Guardar datos</button>
									</div>


















								</div>
							</div>
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">



$(document).ready(function() {
    $('#example').DataTable();

} );



</script>



	<script type="text/javascript">

function eliminar(id){	
	$('input[id=idmoderador]').val(id);
	$('#idFormElimina').submit();
}



function editar(id,nombre,entidad,dni,correo,telefono,celular,usuario,contraseña,distrito){	
	$('input[id=idmoderador]').val(id);
	$('input[id=nom_apellido]').val(nombre);
	$('input[id=entidad]').val(entidad);
	$('input[id=dni]').val(dni);
	$('input[id=correo]').val(correo);
	$('input[id=telefono]').val(telefono);
	$('input[id=celular]').val(celular);
	$('input[id=usuario]').val(usuario);
	$('input[id=contraseña]').val(contraseña);
	$('select[id=idtb_distrit]').val(distrito);
	$('#idModalActualiza').modal("show");
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
							.appendTo("#idtb_distrito")					
					
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
							.appendTo("#idtb_distrit");
					
					
					});
				
				}
		);


		};
	
	
	
	

	$(document).ready(varDep);
</script>



	<script type="text/javascript">
    $(document).ready(function() {
		    $('#guardar_moderador').bootstrapValidator({
                message: 'This value is not valid',
                excluded: ':disabled',                
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                	idtb_distrito: {
                        validators: {
                            notEmpty: {
                                message: 'El distrito es necesario'
                            }
                        }
                    },


                    fotos: {
                        validators: {
                            notEmpty: {
                                message: 'Las fotos son necesario'
                            }
                        }
                    },

                    entidad: {
                        validators: {
                            notEmpty: {
                                message: 'La entidad es un campo necesario'
                            },
                            regexp: {
                                regexp: /^[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF+][\s[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+]*$/,
                                message: 'La entidad es de 6 numeros'
                            }
                        }
                    },

                    celula: {
                        validators: {
                            notEmpty: {
                                message: 'El distrito es necesario'
                            }
                        }
                    },
                    telefono: {
                        validators: {
                            notEmpty: {
                                message: 'El telefono es un campo obligatorio'
                            },
                            regexp: {
                                regexp: '^[0-9]{7}$',
                                message: 'El telefono es de siete digitos números'
                            }
                   
                          
                        }
                    },



                    celular: {
                        validators: {
                            notEmpty: {
                                message: 'El celular es un campo obligatorio'
                            },
                            regexp: {
                                regexp: '^[0-9]{9}$',
                                message: 'El celular es de nueve digitos'
                            },
                         
                          
                        }
                    },

                    correo: {
                        validators: {
                            emailAddress: {
                                message: 'Es necesario el valor del formato'
                            },
                            regexp: {
                                regexp: '^[^@\\s]+@([^@\\s]+\\.)+[^@\\s]+$',
                                message: 'Formato incorrecto'
                            }
                        }
                    },
                    
                    nom_apellido: {
                        validators: {
                            notEmpty: {
                                message: 'El nombre del moderador necesario'
                            },
                            regexp: {
                                regexp:/^[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF+][\s[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+]*$/,
                                message: 'Fomato incorrecto'
                            }
                        }
                    },
                    usuario: {
                        validators: {
                            notEmpty: {
                                message: 'El usuario del moderador necesario'
                            },
                      
                        }
                    },


                    contrasena: {
                        validators: {
                            notEmpty: {
                                message: 'La contraseña del moderador necesario'
                            },
                          
                        }
                    },
                	dni: {
                        validators: {
                            notEmpty: {
                                message: 'El DNI es un campo obligatorio'
                            },
                            regexp: {
                                regexp: '^[0-9]{8}$',
                                message: 'El DNI es de ocho números'
                            },
                            remote: {
                                type: "POST",
                                url: 'ppp',
                                delay:1000,
                                message: 'El DNI ingresado ya existe' 
                            } 
                        }
                    },
                    
              
            }
		  }).on('error.form.bv', function(e) {
		            console.log('error');

		            // Active the panel element containing the first invalid element
		            var $form         = $(e.target),
		                validator     = $form.data('bootstrapValidator'),
		                $invalidField = validator.getInvalidFields().eq(0),
		                $collapse     = $invalidField.parents('.collapse');

		            $collapse.collapse('show');
		    });
		});
</script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!-- Latest compiled and minified JavaScript -->





	<script type="text/javascript">
    $(document).ready(function() {
		    $('#defaultForm_2').bootstrapValidator({
                message: 'This value is not valid',
                excluded: ':disabled',                
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                	idtb_distrito: {
                        validators: {
                            notEmpty: {
                                message: 'El distrito es necesario'
                            }
                        }
                    },


                    fotos: {
                        validators: {
                            notEmpty: {
                                message: 'Las fotos son necesario'
                            }
                        }
                    },

                    entidad: {
                        validators: {
                            notEmpty: {
                                message: 'La entidad es un campo necesario'
                            },
                            regexp: {
                                regexp: /^[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF+][\s[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+]*$/,
                                message: 'La entidad es de 6 digitos '
                            }
                        }
                    },

                   
                    telefono: {
                        validators: {
                            notEmpty: {
                                message: 'El telefono es un campo obligatorio'
                            },
                            regexp: {
                                regexp: '^[0-9]{7}$',
                                message: 'El telefono es de siete digitos'
                            }
                   
                          
                        }
                    },



                    celular: {
                        validators: {
                            notEmpty: {
                                message: 'El celular es un campo obligatorio'
                            },
                            regexp: {
                                regexp: '^[0-9]{9}$',
                                message: 'El celular es de nueve digitos'
                            }
                         
                          
                        }
                    },

                    correo: {
                        validators: {
                            emailAddress: {
                                message: 'Es necesario el valor del formato'
                            },
                            regexp: {
                                regexp: '^[^@\\s]+@([^@\\s]+\\.)+[^@\\s]+$',
                                message: 'Formato incorrecto'
                            }
                        }
                    },
                    
                    nom_apellido: {
                        validators: {
                            notEmpty: {
                                message: 'El nombre del moderador necesario'
                            },
                            regexp: {
                                regexp:/^[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF+][\s[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+]*$/,
                                message: 'Fomato incorrecto'
                            }
                        }
                    },
                    usuario: {
                        validators: {
                            notEmpty: {
                                message: 'El usuario del moderador necesario'
                            },
                         
                        }
                    },


                    contrasena: {
                        validators: {
                            notEmpty: {
                                message: 'La contraseña del moderador necesario'
                            },
                       
                        }
                    },
                	dni: {
                        validators: {
                            notEmpty: {
                                message: 'El DNI es un campo obligatorio'
                            },
                            regexp: {
                                regexp: '^[0-9]{8}$',
                                message: 'El DNI es de ocho números'
                            }
                           
                        }
                    },
                    
              
            }
		  }).on('error.form.bv', function(e) {
		            console.log('error');

		            // Active the panel element containing the first invalid element
		            var $form         = $(e.target),
		                validator     = $form.data('bootstrapValidator'),
		                $invalidField = validator.getInvalidFields().eq(0),
		                $collapse     = $invalidField.parents('.collapse');

		            $collapse.collapse('show');
		    });
		});
</script>













</body>
</html>