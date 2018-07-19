<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>


<!DOCTYPE html>
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

<style type="text/css">
	.ui-datepicker-calendar {
		display: none;
	}
</style>


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
	







	<title>Stock Management System</title>


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
	
	<div class="col-md-4">
		<div class="panel panel-success">
			<div class="panel-heading">
				
				<a href="" style="text-decoration:none;color:black;">
					Total de reportes
					<span class="badge pull pull-right">4</span>	
				</a>
				
			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
	</div> <!--/col-md-4-->

		<div class="col-md-4">
			<div class="panel panel-info">
			<div class="panel-heading">
				<a href="" style="text-decoration:none;color:black;">
					<s:property  value="#session.objUsuario.usuario"/>
					<span class="badge pull pull-right">2</span>
				</a>
					
			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
		</div> <!--/col-md-4-->

	<div class="col-md-4">
		<div class="panel panel-danger">
			<div class="panel-heading">
				<a href="" style="text-decoration:none;color:black;">
		xxxxxxxxxxxxxxxxxx
					<span class="badge pull pull-right">x</span>	
				</a>
				
			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
	</div> <!--/col-md-4-->

	<div class="col-md-4">
		<div class="card">
		  <div class="cardHeader">
		    <h1>10</h1>
		  </div>

		  <div class="cardContainer">
		    <p></p>
		  </div>
		</div> 
		<br/>

		<div class="card">
		 

		
		</div> 

	</div>

	<div class="col-md-8">
		<div class="panel panel-default">
			<div class="panel-heading"> <i class="glyphicon glyphicon-calendar"></i>Calendario</div>
			<div class="panel-body">
				<div id="calendar"></div>
			</div>	
		</div>
		
	</div>

	
</div> <!--/row-->

<!-- fullCalendar 2.2.5 -->

	<div id="formularioCronograma" class="modal fade" >
 			<div class="modal-dialog" style="width: 60%">
 			<div class="modal-content">
			    <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" >x</button>
			        <h3 id="myModalLabel1">Registrar Denuncia </h3>
			    </div>
			    <div class="modal-body">
			    <form id="idFormulario" class="form-horizontal"  action="reservar">







 <fieldset>
       
          <div id="edit_farmer" style="display:none"></div>
          <div class="row">
            <div class="col-md-2 panel panel-heading">Contact Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="contact_error"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="mobile">Contact No.</label>
            <div class="col-md-3">
    <div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-phone"></i>
			</span>
              <input id="mobile" maxlength="10" name="mobile" placeholder="xxxxxxxxxxxx" class="form-control input-md ac_mobile" type="number" value={{mobile}} >
		
            </div>
	</div>
            <label class="col-md-1 control-label" for="sms">Language</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>
              <select id="sms" name="sms" class="form-control input-md">
                <option value="en">English</option>
                <option value="gu">Gujarati</option>
                <option value="mr">Marathi</option>
                <option value="hi">Hindi</option>
              </select>
            </div>
		</div>
            <div class="col-md-1">
	
              <a id="add_mobile" onclick=add_mobile()><i class="glyphicon glyphicon-plus"></i></a>
            </div>
          </div>

          <div class="row form-group">
            <div class="col-md-8" id="mobile_numbers"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-1 control-label" for="first_name">First Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
              <input id="first_name" name="first_name" placeholder="" class="form-control input-md" type="text">
            </div></div>

            <label class="col-md-1 control-label" for="middle_name">Mid Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
              <input id="middle_name" name="middle_name" placeholder="" class="form-control input-md" type="text">
            </div>
		</div>
            <label class="col-md-1 control-label" for="last_name">Last Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
              <input id="last_name" name="last_name" placeholder="" class="form-control input-md" type="text">
            </div>
	</div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="farmer_type">Farmer Type</label>
            <div class="col-md-4">
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Farmer" checked>Farmer</label>
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Politician">Politician</label>
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Retailer">Retailer</label>
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Supplier">Supplier</label>
            </div>

            <label class="col-md-1 control-label" for="description">Description</label>
            <div class="col-md-4">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
			</span>
              <textarea class="form-control" id="description" name="description" placeholder="Description"></textarea>
            </div></div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label" for="smartphone">Has Touchscreen Phone ?</label>
            <div class="col-md-3">
		
                <label class="radio-inline"><input type="radio" name="smartphone" value=true>Yes</label>
                <label class="radio-inline"><input type="radio" name="smartphone" value=false>No</label>
                <label class="radio-inline"><input type="radio" name="smartphone" value=null checked>Don't Know</label>
              </select>
            </div>
          </div>

          <div class="row">
            <div class="col-md-2 panel panel-heading">Address Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="address_error"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="village">Village</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-home"></i>
			</span>

              <input id="village" name="village" placeholder="" class="form-control input-md ac_village" required="" type="text">
            </div> </div>

            <label class="col-md-1 control-label" for="state">State</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

              <input id="state" name="state" placeholder="" class="form-control input-md ac_state" required="" type="text">
            </div></div>

            <label class="col-md-1 control-label" for="district">District</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

              <input id="district" name="district" placeholder="" class="form-control input-md ac_district" required="" type="text">
            </div>
		</div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="taluka">Taluka</label>  
            <div class="col-md-2">
              <input id="taluka" name="taluka" placeholder="" class="form-control input-md ac_taluka" required="" type="text">
            </div>

            <label class="col-md-1 control-label" for="other_taluka">Other Taluka</label>  
            <div class="col-md-2">
              <input id="other_taluka" name="other_taluka" disabled="true" class="form-control input-md ac_taluka" type="text">
            </div>

            <label class="col-md-1 control-label" for="post_office">Post Office</label>  
            <div class="col-md-2">
              <input id="post_office" name="post_office" placeholder="" class="form-control input-md ac_post_office" required="" type="text">
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="pin_code">Pin Code</label>  
            <div class="col-md-2">
              <input id="pin_code" name="pin_code" placeholder="" disabled="true" class="form-control input-md" required="" type="text">
            </div>

            <label class="col-md-3 control-label" for="street_address">Address Line 1</label>
            <div class="col-md-5">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
			</span>
              <textarea class="form-control" id="street_address" name="street_address" placeholder="Addess Details..."></textarea>
            </div>
	</div>
          </div>


          <div class="form-group row">
            <div class="col-md-8 text-center">
              <button id="save" name="save" class="btn btn-large btn-success"> Save Farmer Information</button>
              <button class="btn btn-large btn-danger" type="button" onclick=history.go(-1)> Cancel </button>
            </div>
          </div>
          </fieldset>

















<!-- 			        <div class="control-group"> -->
<!-- 			            <label class="control-label" for="inputPatient">Cliente:</label> -->
<!-- 			            <div class="controls"> -->
<!-- 			                  <input type="text" name="textoReserva" id="textoReserva" > -->
<!-- 			                  <input type="hidden" id="fechaInicio" name="fechaInicio"/> -->
<!-- 			                  <input type="hidden" id="fechaFin"  name="fechaFin"/> -->
<!-- 			                  <input type="hidden" id="id_Cancha_Form"  name="idCancha"/> -->
<!-- 			                  <input type="hidden" id="idSede"  name="idSede"/> -->
<!-- 			            </div> -->
<!-- 			        </div> -->
<!-- 			        <div class="control-group"> -->
<!-- 			            <label class="control-label" for="inputPatient">DNI:</label> -->
<!-- 			            <div class="controls"> -->
<!-- 			                  <input type="text" name="dniCliente" id="dniCliente" > -->
			              
<!-- 			            </div> -->
<!-- 			        </div> -->
			        
<!-- 			        <div class="control-group"> -->
<!-- 			            <label class="control-label" for="labelInicio">Inicio:</label> -->
<!-- 			            	<div class="controls controls-row" id="labelInicio" style="margin-top:5px;"> -->
<!-- 			            	</div> -->
<!-- 			        </div> -->
<!-- 			        <div class="control-group"> -->
<!-- 			            <label class="control-label" for="labelFin">Fin:</label> -->
<!-- 			            	<div class="controls controls-row" id="labelFin" style="margin-top:5px;"> -->
<!-- 			            </div> -->
<!-- 			        </div> -->
			    </form>
			    </div>
			    <div class="modal-footer">
			        <button class="btn" data-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-primary" id="submitButton">Registrar</button>
			    </div>
			 </div>   
			 </div>
		</div>
 </div>

<script>
$(document).ready(function() {
	// top bar active
	
	
	$('#calendar').fullCalendar({
		header: {
			left: '',
			center: 'title',
			
		},
		minTime: '6:00:00',//Hora inicial
		maxTime: '24:00:00',//Hora inicial
		allDaySlot:false, // Deabilitar la opción todo el día
		defaultView: 'agendaWeek', //En modo semanal
		defaultDate: new Date(), // Hora por defecto
		navLinks: false, // Desabilitar el enlace de los días de la semana
		selectable: true, //Desabilitar para que sea seleccionable
		selectHelper: true,
		select: function(start, end, allDay) { //Funcion que se ejecuta al selecciona un rango de fecha
			  
			  //---Para la base de datos---
			  //Fecha de Inicio y fin de seleccion
				  starttime = $.fullCalendar.formatDate(start,'YYYY-MM-DD kk:mm:ss');
			  endtime = $.fullCalendar.formatDate(end,'YYYY-MM-DD kk:mm:ss');
				  
	          $('#formularioCronograma #fechaInicio').val(starttime);
	          $('#formularioCronograma #fechaFin').val(endtime);
	         
	          //---Para las etiquetas---
	          //Fecha de inicio y fin de seleccion para las etiquetas
				  starttime_1 = $.fullCalendar.formatDate(start,'DD MMMM kk:mm:ss');
	          endtime_1 = $.fullCalendar.formatDate(end,'DD MMMM kk:mm:ss');
			  
	          $('#formularioCronograma #labelInicio').text(starttime_1);
	          $('#formularioCronograma #labelFin').text(endtime_1);
	          
	          $('#formularioCronograma').modal('show'); 
	        

			  $('#calendar').fullCalendar('unselect');
		 
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: {
			
		}
	});
});

</script>

	<!-- file input -->
	<script src="assests/plugins/fileinput/js/plugins/canvas-to-blob.min.js'); ?>" type="text/javascript"></script>	
	<script src="assests/plugins/fileinput/js/plugins/sortable.min.js" type="text/javascript"></script>	
	<script src="assests/plugins/fileinput/js/plugins/purify.min.js" type="text/javascript"></script>
	<script src="assests/plugins/fileinput/js/fileinput.min.js"></script>	


	<!-- DataTables -->
	<script src="assests/plugins/datatables/jquery.dataTables.min.js"></script>

</body>
</html>