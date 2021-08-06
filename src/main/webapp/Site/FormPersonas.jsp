<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Login</title>
<jsp:include page="Header.jsp"/>

</head>
<body>

    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">User Profile</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:;">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Mike John responded to your email</a>
                  <a class="dropdown-item" href="#">You have 5 new tasks</a>
                  <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="#">Another Notification</a>
                  <a class="dropdown-item" href="#">Another One</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Usuario</h4>
                  <p class="card-category">Complete el formulario para agregar o editar un Usuario:</p>
                </div>
			</div>
          
                   <label for="Nombre">Nombre</label>
                    <input type="text" class="form-control" name="nombre" id="nombre" value="${getPersona.Nombre }">
                    <br>    
                    
               

                    <label for="Rut">Rut</label>
                    <input type="text" class="form-control" name="rut" id="rut" value="${getPersona.Rut }">
                    <br>


              
                 
					<label for="Fecha">Fecha de nacimiento</label>
					<input type="date" class="form-control" name=fechaNacimiento id="fechaNacimiento">
					<br>
					
                    <label for="Email">Email</label> 
                    <input type="email" id="email" name="email" class="form-control" onchange="validaEmail(this.value)" value="${getPersona.Email }" >
                    <a href="mailto:${getPersona.Email }">Enviar correo</a>
					<br>
					<br>
					
					<label for="Direccion">Dirección</label>
					<input type="text" id="direccion" name="direccion" class="form-control" value="${getPersona.Direccion }" >
					<hr>
					
					<label for="PassWordUser" style="margin-top:20px;">PassWord</label>
                    <input type="password" name="passWordUser" id="passWordUser" onchange="validaPass(this.value)" class="form-control" value="${getPersona.PassWordUser }" >
                    

                    <label for="PassWordValidate" style="margin-top:20px;">Re-ingrese Password</label>
                    <input type="password" name="passWordValidate" id="passWordValidate" onchange="validaPass(this.value)" class="form-control" value="${getPersona.PassWordValidate }">
                    <hr>
                    
                    

                   
                                                                             <!-- habilitar boton ( disabled="disabled")-->
                    <button class="btn btn-primary btn-block"  type="button" onclick="validarInfo()"  id="btn-send" style="margin-top:20px;">Almacenar información persona</button>
					<a class="btn btn-success btn-block" href="ListaControllers.do">Volver</a>
					
                    
                </div>
            </div>
        </form>
    </div>



    </div>
    </div>
</body>


<div class="modal fade" id="AvisoMensaje" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="modal-titulo">Modal title</h5> 
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil quo earum saepe. Dolor quod maiores cumque dolore doloribus voluptate iure autem tempora mollitia veritatis esse iste quam temporibus, perspiciatis eaque!
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Aceptar</button>
        </div>
    </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

<script src="Site/js/scripts.js"></script>
<script src="Site/js/jquery.Rut.js"></script>
<script>
    $(document).ready(function (){ //Poder inicializar los comandos de Jquery
    	// validar rut
        $("#rut").Rut({
	        on_error: function(){ 

            	alerta("Error en RUT","El RUT ingresado esta mal");
	          
	            $("#btn-send").prop('disabled',true) //Bloquear boton de envio
	        },
	        on_success: function(){ 
	        	$("#btn-send").prop('disabled',false)
	        },
	        validation: true,
	        format_on: 'keyup'
	    });         


    });

    function validaPass(){
    	
        var PassOriginal=$("#passWordUser").val();
        var PassVerifica=$("#passWordValidate").val();
		
        if(PassOriginal!= '' && PassVerifica!= ''){
        	if(PassOriginal==PassVerifica){
            	$("#btn-send").prop("disabled",false);
        	}else{
        		alerta('Error','Las password son distintas');
        		$("#btn-send").prop("disabled",true);

        	}
        }	
    }

    function validaEmail(Correo){
        
        if(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/.test(Correo)){
		    $("#btn-send").prop('disabled',false);  //Habilitando el boton de invio de infomación
	    }else{
           
           alerta('Error','Error de ingreso de correo');
		   $("#btn-send").prop('disabled',true); //Bloquear el boton de envio de información
	    }
    }


    function validarInfo(){
        var StringError='';
        var swError=0;

        if($("#nombre").val()===''){
            StringError+='<li>Nombre</li>';
            swError=1;
        }

        if($("#rut").val()===''){
            StringError+='<li>Rut</li>';
            swError=1;
        }

        if($("#fechaNacimiento").val()===''){
            StringError+='<li>Fecha Nacimiento</li>';
            swError=1;
        }

        if($("#Email").val()===''){
            StringError+='<li>Email</li>';
            swError=1;
        }
        
        if($("#passWordUser").val()===''){
             StringError+='<li>PassWord</li>';
             swError=1;         
        }
         
        if($("#passWordValidate").val()===''){
             StringError+='<li>Re-Ingrese PassWord</li>';
             swError=1;         
        }

        if(swError==1){
            modalMensaje("Error de datos",'Falta ingresar los siguiente datos <ul>'+StringError+'</ul>');   
            return 0;
        }else{

            /*
            var pass=$("#PasswordUser").val()
            
            //igual
            
            var pass=document.getElementById("PasswordUser").value=
            */

// 			if($("#passWordUser").val()!=$("#passWordValidate").val()){
// 				modalMensaje("Error de Password","las contraseñas no son las mismas ");   
// 	            return 0;
// 			}else{
           

                // document.formulario.submit(); //Enviar el formulario en JS
                $("#formularioID").submit(); //Enviar el formulario si esta todo correcto en jquery

           
        }
        



        //modalMensaje("Aviso de modal",'HOLA MUNDO'); 
        

    }

    function modalMensaje(Title,Mensaje){
        $("#modal-titulo").html(Title);
        $(".modal-body").html(Mensaje);


        $('#AvisoMensaje').modal('toggle');
    }

    function alerta(Title,Mensaje){
        
       
        $.confirm({
            title: Title,
            content: Mensaje,
            icon: 'fa fa-question-circle-o',
            theme: 'supervan',
            closeIcon: true,
            animation: 'scale',
            type: 'orange',
            buttons: {
                cancel: function () {
                   
                },
            }   
        });

    }


</script>
<script>
	
</script>

</html>    