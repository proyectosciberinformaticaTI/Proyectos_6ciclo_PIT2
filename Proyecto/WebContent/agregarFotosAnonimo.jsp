<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- This 2 is for jQuery UI -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.0.3/css/buttons.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="css/datable_custom.css">
<!-- This 2 for jQuery UI -->
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript"
	src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!-- 	This 2 for Bootstrap UI
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
 -->
<script type="text/javascript" src="/js/micodigo.js">
	
</script>
<!-- Plugin for Column Visiblity - JS - 2 files -->
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.0.3/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.0.3/js/buttons.colVis.min.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" language="javascript"
	src="js/datatable_custom.js"></script>
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
<link rel="stylesheet" href="assests/jquery-ui/jquery-ui.min.css">

<!-- bootstrap js -->









<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />

<link rel="stylesheet" href="css/bootstrapValidator.css" />
<style type="text/css">

body {
	background-image:
		url(http://www.fisilab.com/wp-content/uploads/2016/06/violencia.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	-moz-background-size: cover;
	-webkit-background-size: cover;
}


</style>

<script type="text/javascript" src="js/bootstrapValidator.js"></script>

</head>
<body>
	


<br><br>
<br><br><br><br>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-check"></i> Agregar evidencias
					</div>
					<!-- /panel-heading -->
					<div class="panel-body">

						<form id="id_form" accept-charset="UTF-8"
							action="agregarSeleccion" method="post"
							enctype="multipart/form-data">

<c:if test="${sessionScope.MENSAJEANONIMO != null}">
								<div class="alert alert-success fade in">

									<a href="#" class="close" data-dismiss="alert"
										aria-label="close">×</a> ${sessionScope.MENSAJEANONIMO}
								</div>
							</c:if>

							

							<div class="container" style="margin-top: 50px;">



								<div class="form-group">
									<label class="control-label"> La incidencia se registró
										correctamente con el código:<input class="form-control"
										name="incidencias" id="incidencias"
										value="${sessionScope.codigoAnonimo}" readonly />
									</label>
								</div>
								<div class="form-group">
									<input type="file" id="id_fotos" name="fotos"
										class="form-control" />

								</div>
								<div class="form-group">
									<div class="col-lg-9 col-lg-offset-3">
										<button id="id_agrega" type="button" class="btn btn-primary">AGREGAR</button>
										<button type="button" id="id_registra" class="btn btn-primary">REGISTRA</button>

									</div>
								</div>


								<div class="content">

									<table id="tableAlumno"
										class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>ID</th>
												<th>INCIDENCIA</th>

												<th>FOTO</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach items="${sessionScope.dataDeGrilla}" var="x">
												<tr>
													<td>${x.id_tbasigna_foto}</td>
													<td>${x.incidencia.idtb_incidencias}</td>
													<td><img alt="IMAGEN"
														src="verFotosasignados?idCodigo=${x.id_tbasigna_foto}">
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>

							</div>
						</form>
						<!-- /panel-body -->
					</div>
				</div>
				<!-- /col-dm-12 -->
			</div>
			<!-- /row -->


		</div>
		<!-- container -->
	</div>





	<script type="text/javascript">
		$('#id_form').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				fotos : {
					selector : "#id_fotos",
					validators : {
						notEmpty : {
							message : 'La foto es un campo obligatorio'
						},
						file : {
							extension : 'jpeg,jpg,png',
							type : 'image/jpeg,image/png',
							maxSize : 2097152, // 2048 * 1024
							message : 'El archivo seleccionado no es Valido'
						}
					}
				},

				marca : {
					selector : "#id_marca",
					validators : {
						notEmpty : {
							message : 'La Marca es un campo obligatorio'
						}
					}
				},

			}
		});

		$('#id_agrega').click(
				function() {
					var estado = $('#id_form').bootstrapValidator('validate')
							.has('.has-error').length;

					var botonregistrar = document
							.getElementById("id_registrar");
					var botonagregar = document.getElementById("id_agrega");

					console.log(estado);
					if (estado < 0) {
						$('#id_form').attr('action', 'agregarSeleccionAnonimo');
						document.getElementById("id_form").submit();

					} else if (estado == 0) {
						$('#id_form').attr('action', 'agregarSeleccionAnonimo');
						document.getElementById("id_form").submit();
					}

				});

		var tabla = $('#tableAlumno').DataTable();
		// Validate the form manually
		$('#id_registra').click(function() {
			if (!tabla.data().any()) {
				alert('La tabla esta vacia');

			} else if (tabla.data().any()) {
				$('#id_form').attr('action', 'registraVariasFotosAnonimo');
				document.getElementById("id_form").submit();

			}
		});
	</script>





</body>
</html>