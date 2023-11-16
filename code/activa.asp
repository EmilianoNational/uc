<!DOCTYPE html>
<!--#include file="header.asp"-->
<!--#include file="funciones.asp"-->
<%

m=request.querystring("m")
ico=request.querystring("co")
iFolioUnity=request.querystring("f")
sMsj=request.querystring("msj")
'response.write "Mensaje: " &  sMsj

mes = LlenaCeros(Month(Date()),2)
dia = LlenaCeros(Day(Date()),2)
Finicio =  Year(Date())  & "-" & mes  &"-"& dia

''Atrapamos las variables cuando haya error

errnum=request.form("errnum")
iIdCodAcceso=request.form("iCodAccesoError")
sNombreAsegurado=sValidarCadena(request.form("sNombreAseguradoError"),false)
sTelefono=sValidarCadena(request.form("sTelefonoError"),false)
sEmail=sValidarCadena(request.form("sEmailError"),false)
iAnio=iValidarEntero(request.form("iAnioError"),3)
iMarca=iValidarEntero(request.form("iMarcaError"),3)
sModelo=sValidarCadena(request.form("sModeloError"),false)
sSerie=sValidarCadena(request.form("sSerieError"),false)
sPlacas=sValidarCadena(request.form("sPlacasError"),false)
sFechaInicio=sValidarCadena(request("sFechaInicioError"),false)
sHoraInicio=sValidarCadena(request("sHoraInicioError"),false) 

if sFechaInicio="" then
	sFechaInicio=Finicio
ENd if
if iMarca="" then
	iMarca=0

End if

if sHoraInicio="" then
	fechaac=now()
	fecha2=dateadd("n", 10, fechaac) 'Se propone 10 min adelante de la fecha y hora actual
	'sHoraInicio = hour(fecha2) & ":" & minute(fecha2)
	sHoraInicio = right("00" & hour(fecha2),2) & ":" & right("00" & minute(fecha2),2)
	
	'numeroformateado=right("00" & hour(fecha2),2)

End if


%>
<html lang="en">

<head>
    
	<META http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="styles/style.css"> 
	<link rel="stylesheet" type="text/css" href="fonts/css/fontawesome-all.min.css">   
    <title>National Unity</title>
	<script type="text/javascript" src="xxxassets/js/jquery-3.2.1.slim.min.js"></script>
	
<!-- Start of nationalunity Zendesk Widget script -->
<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=658890bd-303c-4451-83ce-9952a91c636c"> </script>
<!-- End of nationalunity Zendesk Widget script -->


 <style>
.form-control::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
            color: #B3B3B4 !important;
            opacity: 1; /* Firefox */
}

.form-control:-ms-input-placeholder { /* Internet Explorer 10-11 */
             color: #B3B3B4 !important;
}

.form-control::-ms-input-placeholder { /* Microsoft Edge */
            color: #B3B3B4 !important;
}
.FechaVacia {
    color: #B3B3B4 !important;
}
.SelectVacio {
    color: #B3B3B4 !important;
}
 </style>
 
 <script>
	function conditions() {
		 if (document.getElementById('chkconditions').checked == true) {
			 document.getElementById('btnenviar').disabled=false;
			 document.getElementById('btncontinuar').disabled=false;
		} else {
			 document.getElementById('btnenviar').disabled= true;
			 document.getElementById('btncontinuar').disabled=true;
		}
    }

	function enviar(f) {
		var ok = true;
           var msg = "";
		   var ffull =f.cobertura.value + ' ' + f.horaContratacion.value + ':00';
		   var bModelo= f.Descripcion.value;//f.Descripcion.selectedIndex;

			if (bModelo==""){
					 
					msg = "El vehiculo no esta permitido\n";
					 ok = false;
				}		 

            if ( ok == false ){
				//alert(msg);
				f.marca.value="";
				//$('#modal1').modal('show');
            }

			if (ok==true){
				 // Obtén la información que deseas enviar desde el modal
    			document.getElementById("fucard").submit();
            }
            
   

		return ok;
  	}

</script>
 
 <script type="text/javascript">
        function valida(f) {
           var ok = true;
           var msg = "";
		   var ffull =f.cobertura.value + ' ' + f.horaContratacion.value + ':00';
		   var bModelo= f.Descripcion.value;//f.Descripcion.selectedIndex;

			if (bModelo=="0"){
					 
					msg = "El vehiculo no esta permitido\n";
					 ok = false;
				}		 

            if ( ok == false ){
				//alert(msg);
				f.marca.value="";
				$('#modal1').modal('show');
            }
			
			//f.btnenviar.disabled=true;
			
            
         return ok;
        }

		function test(){
			alert("function test()");
		}
		
		function datoscapturados() {
		
			 var vnombre =document.getElementById('nombre').value;
			 var vtel =document.getElementById('telefono').value;
			 var vplacas =document.getElementById('placas').value;
			 var vanio =document.getElementById('anio').value;
			 var vserie =document.getElementById('serie').value;
			 var vmarca =document.getElementById('descmarca').value;
			 var vdesc =document.getElementById('Descripcion').value;
			 var vcorreo =document.getElementById('correo').value;
			 var vcob =document.getElementById('cobertura').value;
			 var vhora =document.getElementById('horaContratacion').value;
			 
			 document.getElementById('dName').innerHTML  =   'Nombre  : '+ vnombre;
			 document.getElementById('dTel').innerHTML  =    'Telefono: '+ vtel;
			 document.getElementById('dPlacas').innerHTML  = 'Placas&nbsp;&nbsp;&nbsp;&nbsp;: '+vplacas;
			 document.getElementById('dAnio').innerHTML  =   'Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: '+vanio;
			 document.getElementById('dSerie').innerHTML  =  'Serie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: '+vserie;
			 document.getElementById('dMarca').innerHTML  =  'Marca&nbsp;&nbsp;&nbsp;&nbsp;: '+vmarca;
			 document.getElementById('dDesc').innerHTML  =   'Modelo&nbsp;&nbsp;: '+vdesc;
			 document.getElementById('dCorreo').innerHTML  = 'Correo&nbsp;&nbsp;&nbsp;: '+vcorreo;
			 document.getElementById('dCob').innerHTML  =    'Inicio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: '+vcob;
			 document.getElementById('dHora').innerHTML  =   'Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: '+vhora;
			 
			 
		 return false;
        }
		
		
		
    </script>

	
 
</head>

<body class="theme-light" data-highlight="blue2" style="background-color: #eef2f1;">

	<div class="page">
	
		<div class="page-content" style="background-color: #4A89DC; padding-bottom: 0;">
			<!--
			<div class="d-none d-sm-none d-md-block" id="divHead1 align="center">
				<img align="center" src="images/unitycard.png" alt="" >  
			</div>
			<div class="col clearfix" id="divHead1">
				<img align="center" src="images/unitycard.png" alt="" >
			</div> 
			<div id="divlogotop" align="center">
				<img align="center" src="images/unitycard.png" alt="" > 
			</div>-->
			<div class="page-title page-title-large" style="display: flex; justify-content: space-between; align-items: center">
				<div>
					<a href="./index.html">
						<img src="../assets/nationalBlanco.png" alt="National Unity logo" width="107" height="74">
					</a>
				</div>
				<!--<a href="#" data-menu="menu-main" class="header-icon header-icon-2 color-white icon-xxl"><i class="fas fa-bars" style="font-size: 30px;"></i></a>-->
			</div>
		
		
			<div class="row CircularStdBook">
			

				<div id="divDatosAsegurado1">
					<%if m=1 then%>
						<div class="alert alert-success" role="alert">
							Su tarjeta ha sido activada satisfactoriamente. Buen viaje!!!
							<br>Su n&uacute;mero de P&oacute;liza es: <%=ico%>
							<br><div align="left" class="col-sm-6 col-md-6 col-lg-6" >
									<a class="btn btn-primary" href="https://www.nuiconline.com/PDFPolicy_new/Default.aspx?TipoPoliza=A&Prefijo=AXW&folio=<%=iFolioUnity%>&vehiculo=1&OpenSave=S" role="button">Descargar Poliza</a>		
							</div>
						</div>
					<%End if%>
					
					<%	
						'response.write errnum
						Select Case errnum
						Case "1"
							sTitle="Tarjeta no Vendida"
							sMsj="Esta tarjeta requiere ser cobrada por el cajero para poder ser Activada."
						Case "100"
							sTitle="Revise la Siguiente Informacion"
							sMsj="Codigo de Acceso Incorrecto, favor de revisar que sea el que se encuentra en su tarjeta."
						Case "200"
							sTitle="Vehiculo no Asegurable"
							sMsj="No se permite asegurar vehiculos de 9 o mas pasajeros."
						Case "300"
							sTitle="Revise la Siguiente Informacion"
							sMsj="La fecha y hora de inicio no puede ser menor a la fecha actual."
						Case "3"
							sTitle="Tarjeta Activada"
							sMsj="Su tarjeta ya se encuentra ACTIVADA."
						Case "4"
							sTitle="Su Tarjeta ya no cuenta con validez"
							sMsj="Han transcurrido más de 6 meses a partir de la fecha de compra.<br>Lo invitamos a adquirir una nueva p&oacute;liza en nuestros establecimientos autorizados o bien comprar en línea aquí. <br> "
							sMsj=sMsj + "<center><a href=""https://www.nuagentesonline.com/agents/4f04ae80aa6a96f7dd514b535cf8c251/index.php"" target=""_blank"" role=""button"" class=""btn btn-success popover-test"" title=""Popover title"" data-content=""Popover body content is set in this attribute."">Comprar</a></center>"
						Case "5"
							sMsj="Codigo de Acceso Incorrecto, favor de revisar que sea el que se encuentra en su tarjeta."
						Case Else
							sMsj="."
						End Select
					%>  
					
					
					
					<%if m=2000 then%>
					<div class="alert alert-danger" role="alert">
					Transaccion Fallida, revise los datos o verifique si no hay un intento de activacion previo.
					</div>
					<%End if%>
					<%if m=3000 then%>
					<div class="alert alert-danger" role="alert">
					No se pudo activar su tarjeta(0X0302). Por favor comuniquese a National Unity al departamento de UnityCard.
					</div>
					<%End if%>
					<%if m=4000 then%>
					<div class="alert alert-danger" role="alert">
					El codigo de Acceso es incorrecto o su formato no es correcto. Por favor vuelva a ingresarlo.
					</div>
					<%End if%>
					<%if m=5000 then%>
					<div class="alert alert-danger" role="alert">
					El codigo de Acceso es incorrecto. Por favor vuelva a ingresarlo.
					</div>
					<%End if%>

					<%if sMsj<>"" and 1=2 then%>
					<div align="center" class="alert alert-danger" role="alert"> 
						<%=sMsj%>
					</div>
					<%End if%>
					
				
					
					<div class="card" style="padding: 16px;">
						<div id="collapseOne" class="collapse show " aria-labelledby="headingOne" data-parent="#divDatosAsegurado">
							<br>		
								<div class="col clearfix" style="color: #000000;">
									<h5> Activa tu tarjeta Unity Card de inmediato</h5>
								</div>
					
							<div class="card-body">
								<form name="fucard" id="fucard" action="ProcesoAUC.asp"  method="post">
								
									<div class="row" style="margin-bottom: 0px;">
										<div style="margin-bottom: 0px !important" class="wrapper col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
												<label style="font-size: 14px; color: #000; font-weight: 700;" for="cacesso">C&oacute;digo de Acceso</label>
												<input type="text" pattern="{0-9}" class="form-control" value="<%=iIdCodAcceso%>"  id="cacceso" name="cacceso"  required  maxlength="10" placeholder="10 digitos">
												<span id="code"></span><br />
											</div>
											<div style="margin-bottom: 0px !important; margin-top: 0px !important" class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
												<label style="font-size: 14px; color: #000; font-weight: 700;" for="nombre">Nombre(s) y Apellido(s)</label>
												<input type="text" class="form-control"  value="<%=sNombreAsegurado%>" id="nombre" name="nombre" required maxlength=35 placeholder="Asegurado" style="color: #000000;"   ><br />
											</div>
											<div style="margin-bottom: 0px !important; margin-top: 0px !important" class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
												<label style="font-size: 14px; color: #000; font-weight: 700;" for="telefono">Tel&eacute;fono de Contacto (10 d&iacute;gitos)</label>
												<input type="text" class="form-control"  value="<%=sTelefono%>" id="telefono" maxlength=10  name="telefono" required placeholder="818 999 9999" style="color:#000000;"><br />
											</div>
										</div>
									

									<div class="row" style="margin-bottom: 0px;">
										<div style="margin-bottom: 0px !important; margin-top: 0px !important" class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="Placas">Placas del Veh&iacute;culo</label>
											<input type="text" class="form-control" value="<%=sPlacas%>" id="placas" name="placas" maxlength=10 required placeholder="Placas" style="color: #000000;"><br />
										</div>	
										<div style="margin-bottom: 0px !important; margin-top: 0px !important" class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="anio">A&ntilde;o del Veh&iacute;culo</label>
											<input type="text" class="form-control" value="<%=iAnio%>" onkeypress="return isNumber(event)" maxlength=4 id="anio" name="anio" required placeholder="a&ntilde;o" maxlength=4 placeholder="4 digitos"  style="color:#000000;"><br />
										</div>
										<div style="margin-bottom: 0px !important; margin-top: 0px !important" class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="Serie">Serie del Veh&iacute;culo</label>
											<input type="text" class="form-control" value="<%=sSerie%>" id="serie" maxlength=17 name="serie" required placeholder="Serie" style="color: #000000;"><br />
										</div>
									</div>
		
									<div class="row" style="margin-bottom: 0px;">
										<div class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="marca">Marca del Veh&iacute;culo</label>
											<input id="descmarca" name="descmarca" type="hidden">
											<!--<h6><font size=2 color="blue">(*)Solicite ayuda en caso de no encontrar la opción deseada</font></h6>-->
											<select class="form-control"  id="marca" name="marca" onchange="ModeloautoUC();" required style="color:#000000;">
											<option value="">----Selecciona----</option>
											<%sSQlMarcaAutos="EXEC spMarcaAutoUC"	
												Set oMarcaVehiculos = objConn.execute(sSQlMarcaAutos)
												WHILE NOT oMarcaVehiculos.EOF
													iIdMarca=oMarcaVehiculos("Marca")
													sMarcaNombre=oMarcaVehiculos("MarcaNombre")%>	
												<option value=<%=iIdMarca%> <%if iIdMarca=iMarca then%> SELECTED <%End if%>><%=sMarcaNombre%></option>
												<%oMarcaVehiculos.MoveNext
												wend%>
												<!--<option value="0">OTRO</option>-->
											</select>
											<font size=1 color="#0276DD">(*) Solicite ayuda en caso de no encontrar la opci&oacute;n deseada</font>
										</div>
									<!--Agregar Javascript para evitar los modelos prohibidos-->
										<div name="ResultadoModeloAuto" id="ResultadoModeloAuto" class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="marca">Modelo del Veh&iacute;culo</label>
											<!--<h6><font size=2 color="blue">(*)Solicite ayuda en caso de no encontrar la opción deseada</font></h6>-->
											<select class="form-control"  id="Descripcion" name="Descripcion" required style="color:#000000;">
											<option value="0">----Sin Modelos----</option>
											</select>
											<input type="hidden" class="form-control" value="" id="Descripcion" name="Descripcion"  required placeholder="ej. jetta" style="color:#000000;">
											<font size=1 color="#0276DD">(*) Solicite ayuda en caso de no encontrar la opci&oacute;n deseada</font>
										</div>
										
										<div style="margin-bottom: 0px !important;" class="col-md-3 col-sm-12 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="correo">Correo electr&oacute;nico</label>
											<!--<h6><font size=2 color="blue"><br> </font></h6>-->
											<input type="text" class="form-control" value="<%=sEmail%>" id="correo" name="correo" required placeholder="ejemplo@mail.com" style="color:#000000;">
										</div>
									</div>
									<br />
									<div class="row" style="margin-bottom: 0px;">
										<div style="margin-bottom: 0px !important; margin-top: 0px !important" class="col-md-3 col-sm-6 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="cobertura">Inicio de cobertura</label>
											<input type="date"   id="cobertura" name="cobertura" required  min="<%=Finicio%>" value="<%=Finicio%>" style="color:#000000; line-height: 1.1;">
										</div>
									
										<div style="margin-bottom: 0px !important;" class="col-md-3 col-sm-6 input-style input-style-always-active has-borders no-icon validate-field my-4">
											<label style="font-size: 14px; color: #000; font-weight: 700;" for="horaContratacion">Hora de Inicio (CST)</label>
											<input type="time" id="horaContratacion" name="horaContratacion" value="<%=sHoraInicio%>" required placeholder="05:00" style="color:#000000; line-height: 1.1;">
										</div>
									</div>
									<br>
									<!--
									<div class="row">
										<div class="col text-center">
											<br>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="checkbox" name="chkconditions" id="chkconditions" onclick="conditions();" value="option1" required>
												<label class="form-check-label" for="inlineRadio1"><strong>He leido y acepto </strong><a href="https://www.nationalunity.com/terminos-y-condiciones/" target="_blank" >t&eacute;rminos y condiciones</a></label>
											</div>
											<div class="row" id="divAcuerdoConformidad" style="color: #000000;">
												<center><br>REQUISITOS PARA COBERTURA
												<br><font color="red">La cobertura no es v&aacute;lida para veh&iacute;culos comerciales </font>
												<br>Solo cubre personas con residencia permanente en la Rep&uacute;blica Mexicana
												<br>El conductor deber&aacute; tener entre 21 y 75 a&ntilde;os de edad y tener licencia mexicana de conducir vigente.
												<br>Solo cubre autos y pick-ups de uso particular con placas mexicanas o fronterizas.
												<br>No aplica para vehiculos de mas de 9 pasajeros ni para remolques 
												</center>
											</div>
										</div>
									</div>-->
									
									
									<div id="collapseThree" class="row" aria-labelledby="headingThree" data-parent="#divDatosAsegurado">
										<div class="card-body">
											<div class="row">
												<label for="" style="font-size: 14px; color: #000; font-weight: 700;">
													<!--Si est&aacute; de acuerdo con el acuerdo de conformidad, tilde la casilla de verificaci&oacute;n.-->
													Para continuar, acepte los Términos y Condiciones.
												</label>
											</div>

											<div class="row">
												<div class="col">
													<br>
													<div class="form-check form-check-inline d-flex align-items-center" style="gap: 15px;">
														<input class="form-check-input" type="checkbox" name="chkconditions" id="chkconditions" onclick="conditions();" value="option1" required style="transform: scale(2);">
														<!--<label class="form-check-label" for="inlineRadio1"><strong>ESTOY CONSCIENTE DE QUE:</strong></label>-->
														<label style="font-size: 14px; color: #000; font-weight: 700;" class="form-check-label" for="inlineRadio1"><strong>ACEPTO Y ESTOY CONSCIENTE QUE:</strong></label>
													</div>
												</div>
											</div>

											<div class="row" id="divAcuerdoConformidad" style="color: #000; margin-bottom: 0px;" >
												<ul>
													<li>Esta p&oacute;liza es de Turista y no se podr&aacute; permanecer m&aacute;s de 28 d&iacute;as consecutivos en Estados Unidos.</li>
													<li>La cobertura no es v&aacute;lida para veh&iacute;culos comerciales.</li>
													<li>Solo cubre personas con residencia permanente en la Rep&uacute;blica Mexicana.</li>
													<li>El conductor deber&aacute; tener entre 21 y 75 a&ntilde;os de edad y tener licencia mexicana de conducir vigente.</li>
													<li>Solo cubre autos y pick-ups de uso particular con placas mexicanas o fronterizas.</li>
													<li>No aplica para veh&iacute;culos de m&aacute;s de 9 pasajeros ni para remolques.</li>
												</ul>
												<!--
													La cobertura no es v&aacute;lida para veh&iacute;culos comerciales
												<br>Solo cubre personas con residencia permanente en la Rep&uacute;blica Mexicana
												<br>El conductor deber&aacute; tener entre 21 y 75 a&ntilde;os de edad y tener licencia mexicana de conducir vigente.
												<br>Solo cubre autos y pick-ups de uso particular con placas mexicanas o fronterizas.
												<br>No aplica para vehiculos de mas de 9 pasajeros ni para remolques 
												-->
												<br><a target="_blank" href="https://www.nationalunity.com/terminos-y-condiciones/">T&eacute;rminos y condiciones</a>
											</div>

											<br>
								
										</div>
									</div>
									
									<!--
									<center>
									<div  class="row justify-content-center" >
										<div class="col-lg-3 col-md-3 col-sm-3 ">
											<button class="btn btn-primary btn-lg btn-block" id="btnenviar" name="btnenviar" disabled>Activar</button> 
										</div>
									</div>
									</center>
									-->
									
									<center>
										<!-- Button trigger modal -->
										<button type="button" id="btncontinuar" name="btncontinuar" class="btn btn-m btn-full mb-3 rounded-xs text-uppercase font-900 shadow-s bg-mint-dark" onclick="datoscapturados();" data-bs-toggle="modal" data-bs-target="#exampleModal" disabled>
										Continuar
										</button>
									</center>
										
										
										
										
									<br>
								</form>
							
							</div>
						</div>
					</div>
				</div>

			
			
			
			</div>
		</div>

		<div id="menu-main"
			class="menu menu-box-right menu-box-detached rounded-m"
			data-menu-width="260"
			data-menu-load="menu-main.html"
			data-menu-active="nav-welcome"
			data-menu-effect="menu-over">  
    	</div>

	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
												
				<div class="modal-header bg-primary text-light text-center">
					<h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Antes de continuar, revise los datos ingresados</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="dName"></div>
					<div id="dTel"></div>
					<div id="dPlacas"></div>
					<div id="dAnio"></div>
					<div id="dSerie"></div>
					<div id="dMarca"></div>
					<div id="dDesc"></div>
					<div id="dCorreo"></div>
					<div id="dCob"></div>
					<div id="dHora"></div>
													
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
					<button class="btn btn-primary " id="btnenviar" name="btnenviar" onclick="enviar(document.getElementById('fucard'))">Activar</button> 
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-primary text-light text-center">
					<h5 class="modal-title " id="exampleModalLabel" style="color: #fff">Revise la siguiente informaci&oacute;n</h5>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3 text-center">
							<p align="justify">
								<%=sMsj%> <!--Vehiculo NO Asegurable.-->
							</p>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
				</div>
			</div>
		</div>
	</div>
	
        <!--<script type="text/javascript" src="xxxassets/js/script.js"></script>-->
        
        <script type="text/javascript" src="xxxassets/js/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script type="text/javascript" src="xxxassets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="xxxassets/js/accordion.js"></script>
		<script type="text/javascript" src="scripts/custom.js"></script>
        <script type="text/javascript" src="xxxassets/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript">
           // $(function() {
           //     $('.datepicker').datepicker();
			//	$('#modal1').modal('show');
           // });
        </script>
        <script>
              $(document).ready(function() {
                $('#ventanaModal').modal('toggle')
            });
			//////
			
			//input.addEventListener('keydown', keydownHandler);
			//input.addEventListener('input', inputHandler);	
			
			/////
			/*var myModal = new bootstrap.Modal(document.getElementById('modal1'), {
			  keyboard: false
			})
			myModal.toggle()
			myModal.show()
			var myModalEl = document.getElementById('modal1')
			myModalEl.addEventListener('hidden.bs.modal', function (event) {
			  // do something...
			})*/
			
			var input_field_codAcceso = document.getElementById('cacceso');
			
				 input_field_codAcceso.addEventListener('textInput', function(e) {
				 
					// e.data will be the 1:1 input you done
					var char = e.data; // In our example = "a"
					//console.log(e);
					// If you want the keyCode..
					var keyCode = char.charCodeAt(0); // a = 97
					//alert(keyCode);
					if ( (keyCode > 31 && keyCode < 48) || keyCode > 57) {
						e.preventDefault();
						return false;
					}
					return true;
				});
			var input_field_anio = document.getElementById('anio');
				 input_field_anio.addEventListener('textInput', function(e) {
				 
					// e.data will be the 1:1 input you done
					var char = e.data; // In our example = "a"
					//console.log(e);
					// If you want the keyCode..
					var keyCode = char.charCodeAt(0); // a = 97
					//alert(keyCode);
					if ( (keyCode > 31 && keyCode < 48) || keyCode > 57) {
						e.preventDefault();
						return false;
					}
					return true;
				});

            var icAcc = document.getElementById('cacceso');
            //alert(icAcc.value.length);
            icAcc.onchange = function () {
                if (icAcc.value.length < 10) {
                    icAcc.classList.add("SelectVacio");
                } else {
                    icAcc.classList.remove("SelectVacio");
                }
            }

		   function isNumber(evt) {
				evt = (evt) ? evt : window.event;
				var charCode = (evt.which) ? evt.which : evt.keyCode;
				//alert(charCode);
				if ( (charCode > 31 && charCode < 48) || charCode > 57) {
					return false;
				}
				return true;
			}
			function Numeric(evt)
			{
				var charCode = (evt.which) ? evt.which : event.keyCode;
					alert(charCode);
					if (charCode > 31 && ( charCode < 48 || charCode > 57))
					{
						document.getElementById("span").innerHTML = "Numbers Please!";
						//alert("numbers only pls");
						return false;
					}
					else
					{
						document.getElementById("span").innerHTML = "";
						return true;
					}
			}
        </script>
        <script type="text/javascript">
			function Salir(){
				window.location="https://www.nationalunity.com";
			}
            function Validarassad() {
               
                var icacceso = document.getElementById("cacceso");
                var sNombre = document.getElementById("nombre");
                var sTelefono = document.getElementById("telefono");
                var sCorreo = document.getElementById("correo");
                var iAnio = document.getElementById("año");
                var sMarca = document.getElementById("marca");
                var sModelo = document.getElementById("Descripcion");
                var sSerie = document.getElementById("serie");
                var sPlacas = document.getElementById("placas");
                var sCobertura = document.getElementById("cobertura");
                patron = /[0-9]{10}$/;
                patronstring = /[A-Za-z0-9ñÑ\s]/; // Número y letra incluida la ñ

                var txt = icacceso.value;
                var string = txt.replace(/\s+/g, '')
                if (string == "") {
                    return false;
                } else if (string.match(patron)) {
                    if (string.replace(/\D/g, '') == '') {
                        alert("Por favor ingrese un c&oacute;digo de acceso a 10 digitos");
                        icacceso.focus();
                        event.preventDefault();
                        return false;
                    }
                } else {
                    alert("Por favor ingrese un c&oacute;digo de acceso a 10 digitos");
                    icacceso.focus();
                    event.preventDefault();
                    return false;
                }

                txt = sNombre.value;
                string = "Ingrese el nombre"; // txt.replace(/'+/g, '')
                alert(string);
                if (string == "") {
                    return false;
                } 
                if (!isNaN(string) || string.length < 4) {
                    alert("Por favor ingrese un Nombre para el registro con un mínimo de 4 caracteres.");
                    sNombre.focus();
                    event.preventDefault();
                    return false;
                } 

                if (string.match(patronstring)) {
                    if (string.replace(/\D/g, '') == '') {
                        alert("Por favor ingrese un Nombre para el registro");
                        sNombre.focus();
                        event.preventDefault();
                        return false;
                    }
                } else {
                    alert("Por favor ingrese un Nombre para el registro");
                    sNombre.focus();
                    event.preventDefault();
                    return false;
                }
            }
            function string(e) {
                tecla = (document.all) ? e.keyCode : e.which;
                if (tecla == 8) return true;
                patron = /[A-Za-z0-9ñÑ\s]/; // Número y letra incluida la ñ
                te = String.fromCharCode(tecla);
                return patron.test(te);

            }
            function fnreplace(s) {
               // var txt = document.getElementById(s);
                //var string = txt.value.replace(/'+/g, '');
                //alert(string);
                return true;
            }
			
			function ModeloautoUC(){
				//alert("revisando:");
				var cod = document.getElementById("marca").value;
				
				//alert(cod);
				if ( cod == 0 ){
					 
				}
				else
				{
					/* Para descripcion de marca */
					var combo = document.getElementById("marca");
					var selected = combo.options[combo.selectedIndex].text;
					document.getElementById('descmarca').value = selected;
					
					var jIdMarca=document.fucard.marca;
					ajaxModeloAuto("procesa_Modelo_auto_UC.asp?IdMarca=" + jIdMarca.value,"ResultadoModeloAuto")
				}
				
			}
			
			function ajaxModeloAuto(url,targetObject)
			{
				//alert(url);
				var resultHolder;
				var target=targetObject;
				httpRequest = false;

				//verifica que version del objeto XMLHTTP maneja el navegador
				if (window.XMLHttpRequest) { // Mozilla, Safari, ...
					httpRequest = new XMLHttpRequest();
					//httpRequest.overrideMimeType('text/xml');
				} else if (window.ActiveXObject) { // IE
					httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
				}
				//se verifica si la instancia del XMLHTTP fue creado correctamente
				if (!httpRequest) {
					alert('El navegador no soporta Scripts');
					return false;
				}
				//Acción con respecto a la respuesta del servidor
				httpRequest.onreadystatechange = function(){
					if (httpRequest.readyState == 4) {
						if (httpRequest.status == 200) {
							msg=httpRequest.responseText;
						} else {
							msg='Ocurrio un error en el servidor, porfavor intentelo mas tarde';
						}
						resultHolder =document.getElementById(target);
						resultHolder.innerHTML=msg; //despliega el mensaje en el target especificado
					}
					else
					{
					resultHolder =document.getElementById(target);
						resultHolder.innerHTML="<label for='marca'>Modelo</label><select class='form-control'  id='Descripcion' name='Descripcion' required style='color:#000000;'><option value=''>----Buscando----</option></select>"; //despliega el mensaje cuando la accion esta en proceso
					}
				}
				httpRequest.open('GET', url, true);
				httpRequest.send(null);
			}
			
			
        </script>
		
		<%
		if errnum<>"" then
		%>  
			<script>
				$('#modal1').modal('show');
			</script> 
		<%
		End if
		%>
		
		
			
</body>

</html>