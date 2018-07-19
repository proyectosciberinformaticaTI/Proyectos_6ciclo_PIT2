<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<sj:head jqueryui="true" />
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
<script src="media/js/jquery.dataTables.min.js"></script>
<script src="media/js/dataTables.bootstrap.min.js"></script>
<script src="media/js/bootstrap.js"></script>

<script>
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip(); 
    });
    </script>


<style type="text/css">
.well-block {
	background-color: #fff;
	border: 1px solid #e9e6e8;
	padding: 40px;
}

.well-title {
	margin-bottom: 40px;
}
</style>

<style type="text/css">
.ui-datepicker-calendar {
	display: none;
}
</style>







<title>Stock Management System</title>


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
							<li id="topNavSetting"><a href="confirmar.jsp"> <i
									class="glyphicon glyphicon-wrench"></i> Seguridad
							</a></li>
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









	<s:form id="idFormEnvio" theme="simple" cssClass="form-horizontal">
		<c:if test="${requestScope.mensaje1106 != null}">
			<div class="alert alert-success fade in">

				<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
				${requestScope.mensaje1106}
			</div>
		</c:if>


		<div id="idModalActualiza">


			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="well-block">
							<div class="well-title">
								<h2>GESTION DE REPORTES DE INCIDENCIAS</h2>
							</div>


							<!-- Form start -->
							<div class="row">
								<div class="col-md-6">
									<input name="idtb_incidencias" id="idtb_incidencias"
										value="${incidencias.idtb_incidencias}" type="hidden"
										placeholder="Name" class="form-control input-md">


									<div class="form-group">
										<label class="control-label" for="name">Datos del
											Agraviado</label> <input id="name"
											value="${incidencias.agraviados.nom_apellido}" readonly
											name="name" type="text" placeholder="Name"
											class="form-control input-md">
									</div>
								</div>
								<!-- Text input-->
								<div class="col-md-6">
									<div class="form-group">
										<label class="control-label" for="email">Fecha de
											registro :</label> <input id="email" name="email" type="text"
											readonly value="${incidencias.fecharegistro}"
											placeholder="E-Mail" class="form-control input-md">
									</div>
								</div>
								<!-- Text input-->

								<!-- Select Basic -->
								<div class="col-md-6">
									<div class="form-group">
										<label class="control-label" for="time">Distrito :</label> <input
											class="form-control" readonly
											value="${incidencias.distrito.nombre }" id="idtb_distrito"
											name="idtb_distrito" />
										<%--                                    <select class="form-control" id="idtb_distrito" name="idtb_distrito"> --%>

										<!--                                    <option value=" ">Seleccione una opcion</option> -->
										<%--                                    </select> --%>

									</div>
								</div>


								<div class="col-md-6">
									<div class="form-group">
										<label class="control-label" for="name">Tipo de
											agravio :</label> <input id="name" name="name"
											value="${incidencias.tipo.nombre}" type="text" readonly
											placeholder="Name" class="form-control input-md">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="control-label" for="name">Agresor :</label> <input
											id="agresor" name="agresor" value="${incidencias.agresor}"
											readonly type="text" placeholder="Name"
											class="form-control input-md">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="control-label" for="name">Zona :</label> <input
											id="name" name="name" type="text"
											value="${incidencias.zona.nombre}" readonly
											placeholder="Name" class="form-control input-md">
									</div>
								</div>

								<!-- Select Basic -->
								<div class="col-md-12">
									<div class="form-group">
										<label for="name"> Testimonio :</label>
										<textarea name="message" id="message" class="form-control"
											rows="9" cols="25" required="required" placeholder="Message"
											readonly>${incidencias.descripcion}</textarea>
									</div>
								</div>
								<!-- Button -->

							</div>


							<!-- form end -->
						</div>
					</div>





					<div class="col-md-6">
						<div class="well-block">

							<div class="feature-block">
								<div class="form-group">
									<h4 class="feature-title">Seleccione la zona :</h4>
									<div class="feature-content">

									<s:url id="idDep" action="cargaUbigeonuevas" />
										<sj:select href="%{idDep}" list="lstzonas" listKey="idtb_zona"
											listValue="zona" headerKey=" " headerValue=" [ Seleccione ]"
											name="zona" onChangeTopics="topicoDistrito"
											cssClass="form-control" />



									</div>
								</div>
								<div class="form-group">
									<h4 class="feature-title">Seleccione el distrito :</h4>
									<div class="feature-content">
										<s:url id="idDep2" action="cargaUbigeonuevas" />
										<sj:select href="%{idDep2}" list="lstdistritos"
											listKey="idtb_distrito" listValue="nombre" headerKey=" "
											headerValue=" [ Seleccione ]" reloadTopics="topicoDistrito"
											onChangeTopics="topicoModerador" name="distrito"
											cssClass="form-control" />




									</div>
								</div>
								<div class="form-group">
									<h4 class="feature-title">Seleccione el moderador :</h4>
									<div class="feature-content">

										<s:url id="idDep3" action="cargaUbigeonuevas" />
										<sj:select href="%{idDep3}" list="lstmoderadores"
											listKey="idmoderador" listValue="moderador" headerKey="-1"
											headerValue=" [ Seleccione ]" name="moderador"
											reloadTopics="topicoModerador" cssClass="form-control"
											id="moderador" />

									</div>
									<br /> <br />
									<div class="feature-content">
										<div class="col-md-12 text-right">
											<button type="submit" disabled id="agregar"
												class="btn btn-primary btn-lg">Agregar Moderador</button>


										</div>
									</div>
								</div>


							</div>
						</div>
					</div>










				</div>
			</div>







		</div>

	</s:form>




	<script type="text/javascript">
	


$('select[id=moderador]').change(function () {
    if ($(this).val()=="") {
       $('button[id=agregar]').attr('disabled', true);
    }else{
    	  $('button[id=agregar]').attr('disabled', false);
           $('#idFormEnvio').attr('action', 'actualizarAsignaModerador');
        }
});

</script>



</body>
</html>