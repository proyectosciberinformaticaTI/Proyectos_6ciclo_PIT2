

<%@page import="com.proyecto.bean.incidenciasBean"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>

<%@taglib uri="/struts-tags" prefix="s"%>

<html lang="en">
<head>

<sj:head jqueryui="true" />
<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">

<title>Form - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">



<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">






<style type="text/css">
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500,300,100)
	;

@import url(https://fonts.googleapis.com/css?family=Raleway:400,500);

@import
	url(https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css)
	;

html, body {
	height: 100%;
}

.form-control {
	background: transparent;
	border-top: 2px inset gray;
	border-left: 2px inset gray;
	color: white;
}

option {
	background-color: #f60;
	opacity: 0.9;
	color: white !important;
}

select {
	background-color: transparent !important;
	color: #fff !important;
	border-top: 1px inset gray !important;
	border-left: 1px inset gray !important;
}

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

.main {
	background: transparent;
	border-top-left-radius: 5px;
	border-top-right-radius: 30px;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 30px;
	padding: 10px;
	border: 1px solid gray;
	box-shadow: 2px 2px 10px gray;
	color: white !important;
}

.btn {
	border-radius: 0px !important;
	background: transparent !important;
}

.save {
	margin-right: 10px;
}

.btn:hover {
	background: #f60 !important;
}

.control-label {
	text-align: left !important;
}

.cont {
	min-height: 100%;
	min-width: 100%;
	display: flex;
	align-items: center;
}
</style>

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


</head>
<body>





	<div class="container cont">

		<div
			class="col-md-6 col-sm-8 col-xs-12 col-md-offset-3 col-sm-offset-2 main">
			<s:form theme="simple"  accept-charset="UTF-8" action="registroAnonimo"
				id="defaultForm" method="POST" enctype="multipart/form-data"
				class="form-horizontal">
				
				<c:if test="${sessionScope.mensajedeFotosAnonimo != null}">
								<div class="alert alert-success fade in">

									<a href="#" class="close" data-dismiss="alert"
										aria-label="close">×</a> ${sessionScope.mensajedeFotosAnonimo}
								</div>
							</c:if>
				
				
				<c:if test="${requestScope.MENSAJEANONIMO != null}">
								<div class="alert alert-success fade in">

									<a href="#" class="close" data-dismiss="alert"
										aria-label="close">×</a> ${requestScope.MENSAJEANONIMO}
								</div>
							</c:if>
				
				<legend>
					<b style="color: #fff">REGISTRAR DENUNCIA ANONIMA</b>
				</legend>


				<div class="form-group">
					<label class="col-md-3 control-label">NOMBRE AGRESOR:</label>
					<div class="col-md-9">
						<input type="text" name="agresor" id="agresor"
							class="form-control">
					</div>
				</div>
			
			
			<br><br>
			
			<div class="form-group">
					<label class="col-md-2 control-label">ZONA :</label>
				
							<s:url id="idDep" action="cargaUbigeonuevas" />
										<sj:select href="%{idDep}" list="lstzonas" listKey="idtb_zona"
											listValue="zona" headerKey=" " headerValue=" [ Seleccione ]"
											name="zona" onChangeTopics="topicoDistrito"
											cssClass="form-control" />

				
				</div>
				<div class="form-group">
					
					<label class="col-md-2 control-label">DISTRITO :</label>
				
								<s:url id="idDep2" action="cargaUbigeonuevas" />
										<sj:select href="%{idDep2}" list="lstdistritos"
											listKey="idtb_distrito" listValue="nombre" headerKey=" "
											headerValue=" [ Seleccione ]" reloadTopics="topicoDistrito"
											onChangeTopics="topicoModerador" name="distrito"
											cssClass="form-control" />


					
				</div>
					
				<div class="form-group">
					<label class="col-md-2 control-label">TIPO DE AGRAVIO:</label>
					<div class="col-md-6">
						<select id="idtb_tipo_agravio" name="idtb_tipo_agravio"
							class="form-control">
							<option value=" ">[Seleccione]</option>
						</select>
					</div>
				</div>
</br></br>
				<div class="form-group">
					<label class="col-md-2 control-label">Testimonio:</label>
				
						<textarea name="descripcion" id="descripcion" class="form-control"
							width="100%"></textarea>
				
				</div>


				<div class="form-group">
					<div class="col-md-5 col-md-offset-7">

						<button class="btn btn-primary pull-right save" type="submit">
							<span class="glyphicon glyphicon-floppy-disk ">Registrar</span>
						</button>
						<a class="btn btn-primary pull-right" type="button"
							href="index.jsp">Siguiente</br>
							(Salir)</a>
					</div>
				</div>
			</s:form>
		</div>
	</div>


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


		};
	
	
	
	

	$(document).ready(varDep);
</script>












	<script>
$(document).ready(function() {
    $('#defaultForm').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	zona: {
                validators: {
                    notEmpty: {
                        message: 'El zona es necesario'
                    }
                }
            },

        	descripcion: {
                validators: {
                    notEmpty: {
                        message: 'La descripcion es necesario'
                    }
                }
            },
        	agresor: {
                validators: {
                    notEmpty: {
                        message: 'El nombre es necesario'
                    },
                    regexp: {
                        regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
                        message: 'Fomato incorrecto'
                    }
                }
            },
            
            distrito: {
                validators: {
                    notEmpty: {
                        message: 'El distrito es necesario'
                    }
                }
            },
            idtb_tipo_agravio: {
                validators: {
                    notEmpty: {
                        message: 'La tipo de agravio es necesario'
                    }
                }
            },

            fotos: {
        		
                validators: {
                    notEmpty: {
                        message: 'La foto es un campo obligatorio'
                    },
                    file: {
                    	extension: 'jpeg,jpg,png',
                        type: 'image/jpeg,image/png',
                        maxSize: 2097152,   // 2048 * 1024
                        message: 'El archivo seleccionado no es Valido'
                    }
                }
            },
          
                 

        	
    
         


         
        

        
        }
    });
});
</script>













</body>
</html>