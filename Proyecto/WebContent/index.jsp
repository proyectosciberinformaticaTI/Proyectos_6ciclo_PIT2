
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">

<title>Flip Login or Register Form - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="js/jquery.min.js"></script>


<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/bootstrap.css" />



<style type="text/css">
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500,300,100)
	;

@import url(https://fonts.googleapis.com/css?family=Raleway:400,500);

@import
	url(https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css)
	;

/* ==========================================================================
   Author's custom styles
   ========================================================================== */
html, body {
	height: 100%;
	width: 100%;
}

body {
	font-family: 'Raleway', sans-serif;
	position: relative;
	/*background: rgba(0, 0, 0, 0) url("../img/ptn.png") repeat scroll 0 0;*/
}

.in-page {
	min-height: 520px;
}

.main {
	position: relative;
}

a {
	color: #1b5a7c;
}

a:hover, a:focus {
	color: #1b5a7c;
}

.btn-cyan {
	background-color: #1b5a7c;
	color: #fff;
}

.btn-cyan:hover {
	color: #fff;
	opacity: 0.9;
}

.form-control:focus {
	border-color: #1b5a7c;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px
		rgba(24, 204, 162, 0.6);
	outline: 0 none;
}

.min-height {
	min-height: 380px;
}

.login-screen {
	background-image:
		url(http://www.fisilab.com/wp-content/uploads/2016/06/violencia.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	-moz-background-size: cover;
	-webkit-background-size: cover;
	position: fixed;
	top: 0;
	bottom: 0;
	right: 0;
	left: 0;
}

.login-screen:before {
	content: "";
	background: rgba(0, 0, 0, 0.5);
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
}

.login-center {
	text-align: left;
}

.login {
	width: 320px;
	color: #fff;
}

.login .login-form {
	text-align: left;
}

.login label {
	color: #fff;
}

.login-form .input-group .form-control {
	background: none;
	height: 44px;
	color: #ddd;
}

.login-form .input-group .input-group-addon {
	background: none;
}

.login-form .input-group .input-group-addon .glyphicon {
	color: #1b5a7c;
}

.login-form .input-group .form-control::-moz-placeholder {
	color: #fff;
	opacity: 0.3;
}

.login .sign-btn input.btn {
	background: #1b5a7c;
	border-color: #1b5a7c;
	color: #fff;
	width: 180px;
}

.login .sign-btn a {
	text-decoration: none;
}

.login .checkbox {
	margin-top: 20px;
	margin-bottom: 20px;
}

.login .forgot {
	display: inline-block;
	margin: 20px 0;
}
</style>

</head>
<body class="main">


	<div class="login-screen"></div>
	<div class="login-center">
		<div class="container min-height" style="margin-top: 20px;">
			<div class="row">
				<div class="col-xs-4 col-md-offset-8">
					<div class="login" id="card"
						style="perspective: 640px; position: relative; transform-style: preserve-3d;">
						<div class="front signin_form"
							style="height: 100%; width: 100%; backface-visibility: hidden; transform-style: preserve-3d; position: absolute; z-index: 1; transition: all 0.5s ease-out;">
							<p>Acceso a tu cuenta de Usuario</p>
							<form action="login" class="login-form">
								<c:if test="${requestScope.mensaje != null}">
									<div class="alert alert-danger fade in" id="success-alert">

										<strong>${requestScope.mensaje}</strong>
									</div>
								</c:if>
								<div class="form-group">
									<div class="input-group">
										<input type="text" id="loginuser" name="loginuser"
											class="form-control" placeholder="Ingrese su correo">
										<span class="input-group-addon"> <i
											class="glyphicon glyphicon-user"></i>
										</span>
									</div>
								</div>
								<div class="form-group">
									<div class="input-group">
										<input type="password" id="loginpassword" name="loginpassword"
											class="form-control" placeholder="Ingrese su contraseña">
										<span class="input-group-addon"> <i
											class="glyphicon glyphicon-lock"></i>
										</span>
									</div>
								</div>
							

								<div class="form-group sign-btn"
									style="backface-visibility: hidden;">
									<input type="submit" class="btn" value="Aceptar"
										style="backface-visibility: hidden;">
									<p style="backface-visibility: hidden;"></p>
									<p style="backface-visibility: hidden;">
										<br style="backface-visibility: hidden;"> <a href="#"
											id="flip-btn" class="signup signup_link"
											style="backface-visibility: hidden;">Crea tu nueva cuenta</a>
									</p>

									<p style="backface-visibility: hidden;">
										<br style="backface-visibility: hidden;"> <a
											href="registroAnonimo.jsp" type="button"
											style="backface-visibility: hidden;">Registrar de manera
											anónima</a>
									</p>


								</div>

							</form>
						</div>
						<div class="back signup_form"
							style="opacity: 0; transform: rotateY(-180deg); height: 100%; width: 100%; backface-visibility: hidden; transform-style: preserve-3d; position: absolute; z-index: 0; transition: all 0.5s ease-out;">
							<p style="backface-visibility: hidden;">Crea tu Nueva Cuenta
								aquí</p>
							</br>

							<form enctype="multipart/form-data" accept-charset="UTF-8"
								action="registroAgraviados" method="POST" id="idForm1"
								class="login-form">

								<c:if test="${requestScope.mensaje6 != null}">
									<div class="alert alert-success fade in">

										<a href="#" class="close" data-dismiss="alert"
											aria-label="close">×</a> ${requestScope.mensaje6}
									</div>
								</c:if>


								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="text" id="nom_apellido" name="nom_apellido"
											class="form-control"
											placeholder="Ingrese el nombre y apellido"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-user"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>





								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="file" id="fotosAgraviados" name="fotosAgraviados"
											class="form-control" placeholder="Ingresa las fotos"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-user"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>




								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="text" id="nombreusuario" name="nombreusuario"
											maxlength="14" class="form-control"
											placeholder="Ingrese el Usuario"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-user"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>

								<!--                               aqui -->





								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="password" id="nonpassword" name="nonpassword"
											class="form-control" placeholder="Ingrese contraseña"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-lock"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>


								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="password" id="conpassword" name="conpassword"
											class="form-control" placeholder="Confirma contraseña"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-lock"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>



								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="email" id="correo" name="correo"
											class="form-control" placeholder="Correo electronico"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-envelope"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>


								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="date" name="fechanacimiento" id="fechanacimiento"
											class="form-control"
											placeholder="Ingrese su fecha de nacimiento"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-user"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>

								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="text" name="direccion" id="direccion"
											class="form-control" placeholder="Ingrese su direccion"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-user"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>
								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="text" class="form-control" name="telefono"
											onkeypress="solonumeros(event);" id="telefono" maxlength="9"
											placeholder="Ingrese su telefono"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-user"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>
								<div class="form-group" style="backface-visibility: hidden;">
									<div class="input-group" style="backface-visibility: hidden;">
										<input type="text" class="form-control" id="dni" name="dni"
											onkeypress="solonumeros(event);" maxlength="8"
											placeholder="Ingrese su dni"
											style="backface-visibility: hidden;"> <span
											class="input-group-addon"
											style="backface-visibility: hidden;"> <i
											class="glyphicon glyphicon-user"
											style="backface-visibility: hidden;"></i>
										</span>
									</div>
								</div>
								<label style="backface-visibility: hidden;"><input
									type="radio" style="backface-visibility: hidden;" id="sexo"
									name="sexo" value="masculino">Masculino</label> <label
									style="backface-visibility: hidden;"><input
									type="radio" style="backface-visibility: hidden;" id="sexo"
									name="sexo" value="femenino">Femenino</label>




								<div class="form-group sign-btn"
									style="backface-visibility: hidden;">
									<input type="submit" class="btn" value="Registrar"
										style="backface-visibility: hidden;"> <br
										style="backface-visibility: hidden;"> <br
										style="backface-visibility: hidden;">
									<p style="backface-visibility: hidden;">
										Tienes listo tu cuenta <a href="#" id="unflip-btn"
											class="signup" style="backface-visibility: hidden;">Acceder</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Flip/1.0.18/jquery.flip.js"></script>


	<script type="text/javascript">
	
$().ready(function() {
	$("#card").flip({
	  trigger: 'manual'
	});
});


$(".signup_link").click(function() {

	$(".signin_form").css('opacity', '0');
	$(".signup_form").css('opacity', '100');
	
	
	$("#card").flip(true);
	
	return false;
});

$("#unflip-btn").click(function(){
  
	$(".signin_form").css('opacity', '100');
	$(".signup_form").css('opacity', '0');
	
  	$("#card").flip(false);
	
	return false;
	
});
	</script>

	<script type="text/javascript">

function solonumeros(e)
{
var key = window.event ? e.which : e.keyCode;
    if(key < 48 || key > 57)
        e.preventDefault();
}
</script>


	<script type="text/javascript">
$(document).ready(function() {
    $('#idForm1').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	fotosAgraviados: {
        		
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
        	nom_apellido: {
                  validators: {
                      notEmpty: {
                          message: 'El nombre y apellido es requerido'
                      },
                      regexp: {
                          regexp:/^[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF+][\s[A-Za-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+]*$/,
                          message: 'Fomato incorrecto'
                      }
                  
                  }
              },




              nombreusuario: {
                  validators: {
                      notEmpty: {
                          message: 'El nombre de usuario es requerido'
                      },
                      regexp: {

                    	
                          regexp:/^([a-zA-Z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF+]+[0-9]{0,8}){6,12}$/,
                          message: 'Fomato incorrecto'
                      },
                        
                    
                      
                  
                  }
              },
          	direccion: {
                validators: {
                    notEmpty: {
                        message: 'La direccion es requerido'
                    },
                    regexp: {
                        regexp:/^[A-Za-z\u00f1\u00d1+][\s[A-Za-z\u00f1\u00d1]+[0-9]{3,4}]*$/,
                        message: 'Fomato incorrecto'
                    }
                
                }
            },
         	correo: {
                validators: {
                    notEmpty: {
                        message: 'El correo es requerido'
                    },
                    regexp: {
                        regexp:/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/,
                        message: 'Fomato incorrecto'
                    }
                
                }
            },
              telefono: {
                  validators: {
                      notEmpty: {
                          message: 'El telefono es necesario'
                      },
                      regexp: {
                          regexp: '^[0-9]{9}$',
                          message: 'El telefono es de ocho números'
                      }
                  }
                  
              },

              dni: {
                  validators: {
                      notEmpty: {
                          message: 'El dni es necesario'
                      },
              regexp: {
                  regexp: '^[0-9]{8}$',
                  message: 'El dni es de ocho números'
              },
              remote: {
                  type: "POST",
                  url: 'validaAgraviados',
                  delay:1000,
                  message: 'El DNI ingresado ya existe' 
              } 
                  }
              },

              sexo: {
                  validators: {
                      notEmpty: {
                          message: 'El sexo es necesario'
                      }
                  }
              },


              fechanacimiento: {
                  validators: {
                      notEmpty: {
                          message: 'La fecha de nacimiento es necesario'
                      }
                  }
              },
          
            nonpassword: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es requerida'
                    },
                    identical: {
                        field: 'confirmPassword',
                        message: 'Confirme conrrectamente la contraseña'
                    }
                }
            },
            conpassword: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es requerida'
                    },
                    identical: {
                        field: 'nonpassword',
                        message: 'Confirme correctamente la contraseña'
                    }
                }
            },
          
        }
    });
});
</script>


</body>
</html>



















