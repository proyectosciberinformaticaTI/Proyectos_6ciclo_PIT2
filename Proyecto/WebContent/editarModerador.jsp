<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Menú Principal Administrador</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	
	<link rel="stylesheet" href="css/custom.css">
	<link rel=icon href='img/logo-icon.png' sizes="32x32" type="image/png">
  
  
  	<link rel="shortcut icon" type="image/png" href="/media/images/favicon.png">
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
	<link rel="stylesheet" type="text/css" href="https://datatables.net/media/css/site-examples.css?_=19472395a2969da78c8a4c707e72123a">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<style type="text/css" class="init">
	
	</style>
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="https://datatables.net/examples/resources/demo.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>	<script type="text/javascript" src="js/VentanaCentrada.js"></script>
	
	
	
	
	
</head>
<body>



<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Usuarios</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="defaultForm_2" accept-charset="UTF-8"  action="actualizartodosModeradores" class="form-horizontal"     method="post">
		                 <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Usuarios</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-5">
		                                           <input class="form-control" id="idmoderador" readonly="readonly" name="idmoderador" type="text" />
		                                        </div>
		                                     </div>
		                                    
		                                    
		                                      <div class="form-group">
				<label for="mod_codigo" class="col-sm-3 control-label">Nombre y Apellido :</label>
				<div class="col-sm-8">
				  <input type="text" value="${moderador.nom_apellido}" class="form-control" id="nom_apellido" name="nom_apellido" placeholder="Ingrese el nombre y apellido">
					
				</div>
			  </div>
			   <div class="form-group">
				<label for="mod_nombre" class="col-sm-3 control-label">Entidad :</label>
				<div class="col-sm-8">
				 <input type="text" onkeypress="solonumeros(event)" maxlength="9" class="form-control" id="entidad" name="entidad" placeholder="Ingrese la entidad" >
							</div>
			  </div>
			  
		
		
		
		
			  <div class="form-group">
				<label for="mod_estado" class="col-sm-3 control-label">Distrito :</label>
				<div class="col-sm-8">
				 <select   class="form-control" id="idtb_distrit" name="idtb_distrito" required="">
					<option value=" ">-- Seleccione el distrito --</option>
							
							<option value="<c:out value="${moderador.distrito.idtb_distrito}" />"> <c:out value="${moderador.distrito.nombre}" ></c:out>   </option>
							
							  </select>
				</div>
			  </div>
			  <div class="form-group">
				<label for="mod_precio" class="col-sm-3 control-label">Usuario :</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Ingrese el nombre de usuario"  >
				</div>
			  </div>
			 
			 
			 
			 <div class="form-group">
				<label for="mod_precio" class="col-sm-3 control-label">Contraseña :</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="contraseña" name="contrasena" placeholder="ingrese la contraseña">
				</div>
			  </div>
			
			<div class="form-group">
				<label for="mod_precio" class="col-sm-3 control-label">Correo :</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="correo" name="correo" placeholder="Ingrese el correo" required="">
				</div>
			  </div>
			  
			  <div class="form-group">
				<label for="mod_precio" class="col-sm-3 control-label">DNI :</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" maxlength="8" readonly onkeypress="solonumeros(event)" id="dni" name="dni" placeholder="ingrese el dni">
				</div>
			  </div>
			
			
			
			   <div class="form-group">
				<label for="mod_nombre" class="col-sm-3 control-label">Fotos :</label>
				<div class="col-sm-8">
				 <input type="file" class="form-control" id="fotos" name="fotos" placeholder="Ingrese la foto" >
							</div>
			  </div>
			
			  
			  
			   <div class="form-group">
				<label for="mod_precio" class="col-sm-3 control-label">Telefono :</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" onkeypress="solonumeros(event)" maxlength="9" id="telefono" name="telefono" placeholder="ingrese el dni">
				</div>
			  </div>
			  
			  
			  	   <div class="form-group">
				<label for="mod_precio" class="col-sm-3 control-label">Celular :</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" onkeypress="solonumeros(event)" maxlength="9" id="celular" name="celular" placeholder="ingrese el dni">
				</div>
			  </div>
			
			
		 </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
			<button type="submit" class="btn btn-primary" id="guardar_datos">Guardar datos</button>
		  </div>
		  
		                                    
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                     
		                                </div>
		                            </div>
		                        </div>
		              
		                </form>   
				          
		                    </div>
				</div>
				
				
				
				
				
				
				
				
				
				
				
				
				<script>
		$('select[id=idtb_distrit]').val();
				</script>
				
<script type="text/javascript">

function eliminar(id){	
	$('input[id=idmoderador]').val(id);
	$('#idFormElimina').submit();
}



function editar(id,nombre,entidad,dni,correo,usuario,telefono,celular,contraseña,distrito){	
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

function(response){
	$("#idtb_distrito").val(response.moderador.distrito.idtb_distrito);
}
</script>
	
<script type="text/javascript">
	


var varDep = function (){
	

		
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
                   
                          
                        }
                    },



                    celular: {
                        validators: {
                            notEmpty: {
                                message: 'El celular es un campo obligatorio'
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
                                regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
                                message: 'Fomato incorrecto'
                            }
                        }
                    },
                    usuario: {
                        validators: {
                            notEmpty: {
                                message: 'El usuario del moderador necesario'
                            },
                            regexp: {
                                regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
                                message: 'Fomato incorrecto'
                            }
                        }
                    },


                    contraseña: {
                        validators: {
                            notEmpty: {
                                message: 'La contraseña del moderador necesario'
                            },
                            regexp: {
                                regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
                                message: 'Fomato incorrecto'
                            }
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
                   
                          
                        }
                    },



                    celular: {
                        validators: {
                            notEmpty: {
                                message: 'El celular es un campo obligatorio'
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
                                regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
                                message: 'Fomato incorrecto'
                            }
                        }
                    },
                    usuario: {
                        validators: {
                            notEmpty: {
                                message: 'El usuario del moderador necesario'
                            },
                            regexp: {
                                regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
                                message: 'Fomato incorrecto'
                            }
                        }
                    },


                    contraseña: {
                        validators: {
                            notEmpty: {
                                message: 'La contraseña del moderador necesario'
                            },
                            regexp: {
                                regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+]*$/,
                                message: 'Fomato incorrecto'
                            }
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