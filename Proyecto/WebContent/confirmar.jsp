<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<html>
<head>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/fullcalendar.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="js/es.js" charset="UTF-8"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	
<link rel="stylesheet" href="css/fullcalendar.min.css"/>
<link rel="stylesheet" href="css/fullcalendar.print.min.css" media='print' />
<link rel="stylesheet" href="css/bootstrap.css"/>



	<!-- bootstrap -->
	<link rel="stylesheet" href="assests/bootstrap/css/bootstrap.min.css">
	<!-- bootstrap theme -->
	<link rel="stylesheet" href="assests/bootstrap/css/bootstrap-theme.min.css">
	<!-- font awesome -->
	<link rel="stylesheet" href="assests/font-awesome/css/font-awesome.min.css">



<!--   <!-- custom css --> 
  <link rel="stylesheet" href="custom/css/custom.css">

	<!-- DataTables -->
  <link rel="stylesheet" href="assests/plugins/datatables/jquery.dataTables.min.css">

  <!-- file input -->
  <link rel="stylesheet" href="assests/plugins/fileinput/css/fileinput.min.css">

  <!-- jquery -->
<!-- 	<script src="assests/jquery/jquery.min.js"></script> -->
  <!-- jquery ui   -->
  <link rel="stylesheet" href="assests/jquery-ui/jquery-ui.min.css">
   <script src="assests/jquery-ui/jquery-ui.min.js"></script> 

  <!-- bootstrap js -->
	
<script type="text/javascript">

function cambiaContrasena(){
	document.getElementById("idForm").action = 'cambiarContrasena';
	return true;
} 
</script>
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

          
       
        <li class="dropdown" id="navOrder">
                   <ul class="dropdown-menu">            
                        <li id="topNavManageOrder"><a href="orders.php?o=manord"> <i class="glyphicon glyphicon-edit"></i> Manage Orders</a></li>            
          </ul>
        </li> 

        <li id="navReport"><a href="registrarReporte.jsp"> <i class="glyphicon glyphicon-check"></i> Reporte </a></li>

        <li class="dropdown" id="navSetting">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="glyphicon glyphicon-user"></i> <span class="caret"></span></a>
          <ul class="dropdown-menu">            
            <li id="topNavSetting"><a href="confirmar.jsp"> <i class="glyphicon glyphicon-wrench"></i> Seguridad</a></li>            
            <li id="topNavLogout"><a href="${pageContext.request.contextPath}/logout"> <i class="glyphicon glyphicon-log-out"></i> Salir</a></li>            
          </ul>
        </li>        
               
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
	</nav>
	<div class="container">
<div class="row">
	<div class="col-md-12">
		<ol class="breadcrumb">
		  <li><a >Inicio</a></li>		  
		  <li class="active">Configuracion</li>
		</ol>

		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="page-heading"> <i class="glyphicon glyphicon-wrench"></i> Configuracion</div>
			</div> <!-- /panel-heading -->

			<div class="panel-body">

				

				<form   class="form-horizontal"  >
					<fieldset>
						
	
						<legend>Usuario</legend>

						<div class="changeUsenrameMessages"></div>			

						<div class="form-group">
					    <label for="username" class="col-sm-2 control-label">Usuario</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" readonly value="<s:property  value="#session.objUsuario.usuario"/>" id="username" name="username" placeholder="Usuario" />
					    </div>
					  </div>

					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					    	<input type="hidden" name="user_id" id="user_id"  /> 
					      					    </div>
					  </div>
					</fieldset>
				</form>



	<form action="cambiarContrasena" method="post" class="form-horizontal" id="defaultForm">
					<fieldset>
						<legend>Cambiar Contraseña</legend>
			<% 
	String mensaje = (String) request.getAttribute("MENSAJE3");
	if(mensaje != null){
%>
	<div class="alert alert-success fade in">
	<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><%= mensaje %></div>
<%}%>



<input type="hidden" value="<s:property  value="#session.objUsuario.idagraviado"/>"/>

						<div class="changePasswordMessages"></div>

						<div class="form-group">
					    <label for="password" class="col-sm-2 control-label">Contraseña actual :</label>
					    <div class="col-sm-10">
					      <input type="text"  value="<s:property  value="#session.objUsuario.contrasena"/>" readonly class="form-control" id="pass" name="pass" placeholder="Contraseña actual">
					  
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="npassword" class="col-sm-2 control-label">Nueva contraseña :</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" id="pass1" name="pass1" placeholder="Nueva contraseña" required>
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="cpassword" class="col-sm-2 control-label">Confirmar contraseña</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" id="pass2" name="pass2" placeholder="Confirmar contraseña" required>
					     <span id="confirmMessage" class="confirmMessage"></span>
					    </div>
					  </div>

					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					    	<input type="hidden" name="user_id" id="user_id" value="1" /> 
					      <button type="submit" class="btn btn-primary"> <i class="glyphicon glyphicon-ok-sign"></i> Registrar </button>
					      
					    </div>
					  </div>


					</fieldset>
				</form>
	

			</div> <!-- /panel-body -->		

		</div> <!-- /panel -->		
	</div> <!-- /col-md-12 -->	
</div> <!-- /row-->
</div>
<jsp:include page="includes/footer.jsp" />
<script type="text/javascript">
$(document).ready(function() {
    $('#defaultForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
           
        	  pass: {
                  validators: {
                      notEmpty: {
                          message: 'Contraseña actual es requerida'
                      },
                  
                  }
              },
           
          
            pass1: {
                validators: {
                    notEmpty: {
                        message: 'La confirmación de la contraseña es obligatorio'
                    },
                    identical: {
                        field: 'confirmPassword',
                        message: 'La contraseña debe ser la misma'
                    }
                }
            },
            pass2: {
                validators: {
                    notEmpty: {
                        message: 'La confirmación de la contraseña es obligatorio'
                    },
                    identical: {
                        field: 'pass1',
                        message: 'La contraseña debe ser la misma'
                    }
                }
            },
          
        }
    });
});
</script>

</body>

</html>