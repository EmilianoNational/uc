<!--#include file="header.asp"-->
<!--#include file="funciones.asp"-->
<!--#include file="enviargmail.asp"-->
<%


On Error Resume Next
Err.Clear


t=sValidarCadena(request.form("t"),false)
iCodigoAcceso=iValidarEntero(request.form("cacceso"),4)
sNombreAsegurado=sValidarCadena(request.form("nombre"),false)
sTelefono=sValidarCadena(request.form("telefono"),false)
sEmail=sValidarCadena(request.form("correo"),false)
iAnio=iValidarEntero(request.form("anio"),3)
iMarca=iValidarEntero(request.form("marca"),3)
sModelo=sValidarCadena(request.form("Descripcion"),false)
smodelootro=sValidarCadena(request.form("modelootro"),false)
sSerie=sValidarCadena(request.form("serie"),false)
sPlacas=sValidarCadena(request.form("placas"),false)
sFechaInicio=sValidarCadena(request("cobertura"),false)
sHoraInicio=sValidarCadena(request("horaContratacion"),false)
sEdoent = sValidarCadena(request("edoent"),false)
sFnac = sValidarCadena(request("fnac"),false)
'response.write sFnac

if smodelootro <> "" then
sModelo=smodelootro
end if 


sFechaYhora= REPLACE(sFechaInicio,"-","")  & " " & sHoraInicio


strFecha=YEAR(sFechaInicio) & "-" & MONTH(sFechaInicio) & "-" & DAY(sFechaInicio) & " " & sHoraInicio
strFecha=cDate(strFecha)

strFechaNow=YEAR(now) & "-" & MONTH(now) & "-" & DAY(now) & " " & hour(now) & ":" & minute(now)
strFechaNow=cDate(strFechaNow)

'response.write "strFecha:" & strFecha & "<br>"
'response.write "strFechaNow:" &  strFechaNow
'response.write request.form()
'response.end()



if sModelo<>"" then
		sSQLVehiculoProhibido="EXEC spValidaVehiculo '"& sModelo &"'"
		Set oDatosVehiculo = objConn.execute(sSQLVehiculoProhibido)
		If Not oDatosVehiculo.EOF then
			bPermitido=oDatosVehiculo("Permitido")
		End if
		if bPermitido=0 then
			sMensaje="El vehiculo seleccionado no es posible asegurarlo. Ya que esta catalogado como vehiculo comercial.  " & now()
			'response.redirect("activa.asp?msj=" & sMensaje)
			%>
			<!--<form name="forma" method="post" action="activa.asp?a=2&msj=<%=sMensaje%>">-->
			<form name="forma" method="post" action="activa.asp?msj=<%=sMensaje%>">
				<input type="hidden" value="200" name="errnum" id="errnum"/>
				<input type="hidden" value="<%=iCodigoAcceso%>" name="iCodAccesoError"/>
				<input type="hidden" value="<%=sNombreAsegurado%>" name="sNombreAseguradoError"/>
				<input type="hidden" value="<%=sTelefono%>" name="sTelefonoError"/>
				<input type="hidden" value="<%=sEmail%>" name="sEmailError"/>
				<input type="hidden" value="<%=iAnio%>" name="iAnioError"/>
				<input type="hidden" value="<%=iMarca%>" name="iMarcaError"/>
				<input type="hidden" value="<%=sModelo%>" name="sModeloError"/>
				<input type="hidden" value="<%=sSerie%>" name="sSerieError"/>
				<input type="hidden" value="<%=sPlacas%>" name="sPlacasError"/>
				<input type="hidden" value="<%=sFechaInicio%>" name="sFechaInicioError"/>
				<input type="hidden" value="<%=sHoraInicio%>" name="sHoraInicioError"/>
				<input type="hidden" value="<%=sEdoent%>" name="sEdoentError"/>
				<input type="hidden" value="<%=sFnac%>" name="sFnacError"/>
			</form>
			<script>
				document.forma.submit();
			</script>
			<%
		response.end()
		End if
End if

if strFecha<strFechaNow then
		sMensaje="La fecha de inicio no puede ser menor a la fecha y hora actual " & now()
		'response.redirect("activa.asp?msj=" & sMensaje)
		%>
		<!--<form name="forma" method="post" action="activa.asp?a=2&msj=<%=sMensaje%>">-->
		<form name="forma" method="post" action="activa.asp?msj=<%=sMensaje%>">
			<input type="hidden" value="300" name="errnum" id="errnum"/>
			<input type="hidden" value="<%=iCodigoAcceso%>" name="iCodAccesoError"/>
			<input type="hidden" value="<%=sNombreAsegurado%>" name="sNombreAseguradoError"/>
			<input type="hidden" value="<%=sTelefono%>" name="sTelefonoError"/>
			<input type="hidden" value="<%=sEmail%>" name="sEmailError"/>
			<input type="hidden" value="<%=iAnio%>" name="iAnioError"/>
			<input type="hidden" value="<%=iMarca%>" name="iMarcaError"/>
			<input type="hidden" value="<%=sModelo%>" name="sModeloError"/>
			<input type="hidden" value="<%=sSerie%>" name="sSerieError"/>
			<input type="hidden" value="<%=sPlacas%>" name="sPlacasError"/>
			<input type="hidden" value="<%=sFechaInicio%>" name="sFechaInicioError"/>
			<input type="hidden" value="<%=sHoraInicio%>" name="sHoraInicioError"/>
			<input type="hidden" value="<%=sEdoent%>" name="sEdoentError"/>
			<input type="hidden" value="<%=sFnac%>" name="sFnacError"/>
		</form>
		<script>
			document.forma.submit();
		</script>
		<%
		response.end()

End if


'response.write YEAR(sFechaInicio) & MONTH(sFechaInicio) & DAY(sFechaInicio) & " " & sHoraInicio
'response.end()
If ISNUMERIC(iCodigoAcceso) then

			'' Inserta datos activacion
			sSQL="EXEC spInsDatosActivacion2 " & iCodigoAcceso & ",'"& sNombreAsegurado &"','"& sTelefono &"','"& sEmail &"',"& iAnio & "," & iMarca & ",'"& sModelo &"','"& sSerie &"','"& sPlacas &"','"& sFechaInicio &"','"& sHoraInicio &"','"& sEdoent &"','"& sFnac &"', WEB"
			'response.write sSQL
			objConnUC.execute(sSQL)
			
			
			'1.-Verificamos que el codigo de acceso tenga una tarjeta Interna (1671,1672....1680) asignada
				'Response.write "Transaccion Exitosa"
				IF iCodigoAcceso = "1111199990" THEN
					iTarjetaInterna="170600043"
					sProducto=Mid(iTarjetaInterna,1,4)
				Else
					sSQLVerificaTarjetaIVR="EXEC spValCodActivation '"& iCodigoAcceso &"'" 
					'response.write sSQLVerificaTarjetaIVR
					Set oDatosIVR = objConnIVR.execute(sSQLVerificaTarjetaIVR)
					If Not oDatosIVR.EOF then
						iTarjetaInterna=oDatosIVR("Tarjeta")
						sProducto=Mid(iTarjetaInterna,1,4)
					Else
						m=5
						' sMensaje="Codigo de acceso incorrecto, favor de revisar y volver a intentar."
						'response.redirect("activa.asp?msj=" & sMensaje)
						%>
						<!--<form name="forma" method="post" action="activa.asp?msj=<%=sMensaje%>">-->
						<form name="forma" method="post" action="activa.asp">
							<input type="hidden" value="100" name="errnum" id="errnum"/>
							<input type="hidden" value="<%=iCodigoAcceso%>" name="iCodAccesoError"/>
							<input type="hidden" value="<%=sNombreAsegurado%>" name="sNombreAseguradoError"/>
							<input type="hidden" value="<%=sTelefono%>" name="sTelefonoError"/>
							<input type="hidden" value="<%=sEmail%>" name="sEmailError"/>
							<input type="hidden" value="<%=iAnio%>" name="iAnioError"/>
							<input type="hidden" value="<%=iMarca%>" name="iMarcaError"/>
							<input type="hidden" value="<%=sModelo%>" name="sModeloError"/>
							<input type="hidden" value="<%=sSerie%>" name="sSerieError"/>
							<input type="hidden" value="<%=sPlacas%>" name="sPlacasError"/>
							<input type="hidden" value="<%=sFechaInicio%>" name="sFechaInicioError"/>
							<input type="hidden" value="<%=sHoraInicio%>" name="sHoraInicioError"/>
							<input type="hidden" value="<%=sEdoent%>" name="sEdoentError"/>
							<input type="hidden" value="<%=sFnac%>" name="sFnacError"/>
						</form>
						<script>
							document.forma.submit();
						</script>
						<%
						response.end()
					End if
				End if
			'2.- Verificamos que la TARJETA  INTERNA No este caduca y obtenemos los datos
				
				sSQLVerificaTarjetaIVRInterna="EXEC spValCardActivation "& iTarjetaInterna &",0,''" 
				'response.write sSQLVerificaTarjetaIVRInterna
				Set oDatosIVRInterna = objConnIVR.execute(sSQLVerificaTarjetaIVRInterna)
				If Not oDatosIVRInterna.EOF then
					iProcede=oDatosIVRInterna("Procede")
					sMensaje=oDatosIVRInterna("Mensaje")
					sFolder=oDatosIVRInterna("Folder")
					sFechaIniDIG=oDatosIVRInterna("FechaIni")
					iDiasVigencia=oDatosIVRInterna("DiasVigencia")
					sFEchaCaducidad=oDatosIVRInterna("FechaCaducidad")
					sConfirmacion=oDatosIVRInterna("Confirmacion")
					
					IF iCodigoAcceso = "1111199990" THEN
						iProcede = 0
					End if
					
					if cint(iProcede)<>0 then
						'response.write sMensaje & ",1" & iProcede
						'response.redirect("activa.asp?m=6&msj=" & sMensaje)
						%>
						<!--<form name="forma" method="post" action="activa.asp?msj=<%=sMensaje%>">-->
						<form name="forma" method="post" action="activa.asp?msj=<%=sMensaje%>">
							<input type="hidden" value="<%=iProcede%>" name="errnum" id="errnum"/>
							<input type="hidden" value="<%=iCodigoAcceso%>" name="iCodAccesoError"/>
							<input type="hidden" value="<%=sNombreAsegurado%>" name="sNombreAseguradoError"/>
							<input type="hidden" value="<%=sTelefono%>" name="sTelefonoError"/>
							<input type="hidden" value="<%=sEmail%>" name="sEmailError"/>
							<input type="hidden" value="<%=iAnio%>" name="iAnioError"/>
							<input type="hidden" value="<%=iMarca%>" name="iMarcaError"/>
							<input type="hidden" value="<%=sModelo%>" name="sModeloError"/>
							<input type="hidden" value="<%=sSerie%>" name="sSerieError"/>
							<input type="hidden" value="<%=sPlacas%>" name="sPlacasError"/>
							<input type="hidden" value="<%=sFechaInicio%>" name="sFechaInicioError"/>
							<input type="hidden" value="<%=sHoraInicio%>" name="sHoraInicioError"/>
							<input type="hidden" value="<%=sEdoent%>" name="sEdoentError"/>
							<input type="hidden" value="<%=sFnac%>" name="sFnacError"/>
						</form>
						<script>
							document.forma.submit();
						</script>
						<%
						response.end()
					End if
					
					
				End if
				
				
			'3.- REGISTRAMOS los Audios y generamos el PReregistro
				 'Activamos la Tarjeta.
				''GF 04/11/2022 solicito RB
				''sSQLVerificaTarjetaIVRInternaM="EXEC spManualRegister2 9998," & iTarjetaInterna & ",1,1,'"& sTelefono &"','','','','','','" & sFechaYhora & "',NULL,NULL,NULL,NULL,NULL,'Web2\" & REPLACE(sFechaInicio,"-","") & "'"
				IF iCodigoAcceso = "1111199990" THEN
					 
				Else
					sSQLVerificaTarjetaIVRInternaM="EXEC spManualRegister_web 9998," & iTarjetaInterna & ",1,1,'"& sTelefono &"','','','','','','" & sFechaYhora & "',NULL,NULL,NULL,NULL,NULL,'Web2\" & REPLACE(sFechaInicio,"-","") & "'"
					'RESPONSE.WRITE sSQLVerificaTarjetaIVRInternaM
					'response.end()
					Set oDatosIVRInternaM = objConnIVR.execute(sSQLVerificaTarjetaIVRInternaM)
					If Not oDatosIVRInternaM.EOF then
						iProcede=oDatosIVRInternaM("Procede")
						sCOnfirmacion=oDatosIVRInternaM("Confirmacion")
						sMensaje=oDatosIVRInternaM("Mensaje")
						iClavePreRegistro=oDatosIVRInternaM("CvePreregistro")
						if Cint(iProcede)<>1 then
							'response.write sMensaje & ",2" & iProcede
							'response.redirect("activa.asp?msj=" & sMensaje)
							%>
							<!--<form name="forma" method="post" action="activa.asp?msj=<%=sMensaje%>">-->
							<form name="forma" method="post" action="activa.asp">
								<input type="hidden" value="<%=iProcede%>" name="errnum" id="errnum"/>
								<input type="hidden" value="<%=iCodigoAcceso%>" name="iCodAccesoError"/>
								<input type="hidden" value="<%=sNombreAsegurado%>" name="sNombreAseguradoError"/>
								<input type="hidden" value="<%=sTelefono%>" name="sTelefonoError"/>
								<input type="hidden" value="<%=sEmail%>" name="sEmailError"/>
								<input type="hidden" value="<%=iAnio%>" name="iAnioError"/>
								<input type="hidden" value="<%=iMarca%>" name="iMarcaError"/>
								<input type="hidden" value="<%=sModelo%>" name="sModeloError"/>
								<input type="hidden" value="<%=sSerie%>" name="sSerieError"/>
								<input type="hidden" value="<%=sPlacas%>" name="sPlacasError"/>
								<input type="hidden" value="<%=sFechaInicio%>" name="sFechaInicioError"/>
								<input type="hidden" value="<%=sHoraInicio%>" name="sHoraInicioError"/>
								<input type="hidden" value="<%=sEdoent%>" name="sEdoentError"/>
								<input type="hidden" value="<%=sFnac%>" name="sFnacError"/>
							</form>
							<script>
								document.forma.submit();
							</script>
							<%
							response.end()
						End if 
					End if
				End if	
			
			'4.- ACTUALIZAMOS en la tabla: TARJETA
			IF iCodigoAcceso = "1111199990" THEN
					 
			Else
				sSQLActualizaTarjeta="EXEC spActivateCard "& iClavePreRegistro & ",'"& sNombreAsegurado &"','"& iMarca &"','"& sModelo &"',"& iAnio &",'"& sPlacas &"','"& sSerie &"','UnityCard',9998"
				objConnIVR.execute(sSQLActualizaTarjeta)
			End if	
			
			'5.- COnsultamos el numero de poliza de Web
			IF iCodigoAcceso = "1111199990" THEN
					sPolizaUCWeb="EUC000005"
					sPrefijoPapelUC=MID(sPolizaUCWeb,1,3)
					iFolioPapelUC=MID(sPolizaUCWeb,4)
					iPrimaUC=10
					iDerechoUC=0
					iAsistenciaUC=0
					if iAsistenciaUC > 0 then
						iAsisIncluida=1
					Else
						iAsisIncluida=0
					
					End if
					sFechaIniPol="2023-03-04 07:41:00.000"	 
			Else
				sSQLConsultaPoliza="EXEC spGetPolizaUCWEB "& iTarjetaInterna
				Set oDatosIVRConsulta = objConnIVR.execute(sSQLConsultaPoliza)
				if Not oDatosIVRConsulta.EOF then
					sPolizaUCWeb=oDatosIVRConsulta("UCR")
					sPrefijoPapelUC=MID(sPolizaUCWeb,1,3)
					iFolioPapelUC=MID(sPolizaUCWeb,4)
					iPrimaUC=oDatosIVRConsulta("Prima")
					iDerechoUC=oDatosIVRConsulta("DerechoPoliza")
					iAsistenciaUC=oDatosIVRConsulta("Asistencia")
					if iAsistenciaUC > 0 then
						iAsisIncluida=1
					Else
						iAsisIncluida=0
					
					End if
					sFechaIniPol=oDatosIVRConsulta("FechaIniPol")
					sFechaFinPol=oDatosIVRConsulta("FechaFinPol")
				End if
			End if	
				
				''INICIAMOS CON EMISION EN Web 192.168.1.7
				'1.- Generamos el folio a utilizar en la poliza
				
				sSQLGuarda = "SET NOCOUNT ON; INSERT INTO Rango_PolizaAXW (Campo) " & _
					" VALUES ('X'); SELECT @@IDENTITY AS Folio"
				set objRSFolio = objConn.execute(sSQLGuarda)
				Folio = objRSFolio.fields("folio")
				
				'2.- Eliminamos el Folio de la tabla, para ahorrar espacio
				'sSQLGuarda = "DELETE FROM Rango_PólizaAXW WHERE folio=" & Folio
				'objConn.execute sSQLGuarda
				
				'3.-Insertamos en Poliza de Autos
					IF iCodigoAcceso = "1111199990" THEN
						iagente = 999
					Else
						iagente = 127
					End if
				
						sfecha=Year(Now) & "-" & Month(Now) & "-" & Day(Now)
						
						sSQLInsPoliza_de_autosUC = "sp_InsPoliza_de_AutosUC 'AXW'," & Folio & ",'"& sEdoent &"',1,'"& sFechaInicio &"','"& sfecha &"','"& sHoraInicio &"','" & _
						sNombreAsegurado & "','N/A','NA','0','+52'," &  formateaString(sTelefono) & "," & formateaString(sProducto) & ",'NL','NA','NA',"& iagente &",1," & _
						iPrimaUC & "," & iPrimaUC & "," & iDerechoUC & "," & iDerechoUC & ",0,0,0,0,0,NULL,NULL,0,1,NULL," &  iDiasVigencia & ",0,'" & sFechaFinPol & "'," & _
						"32.5,50.0,'"& sPrefijoPapelUC &"'," & iFolioPapelUC & ",1,'MX','"& sEmail &"',NULL," & iPrimaUC & "," & iDerechoUC & ",NULL,NULL,NULL,NULL,NULL,0.00,0.00," & _
						iAsistenciaUC & ",1," & iAsisIncluida & ",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL"
						'response.write sSQLInsPoliza_de_autosUC
						objConn.execute sSQLInsPoliza_de_autosUC	

						
				'4.-INsertamos el Vehiculo de la tarjeta UnityCard
						sSQLInsVehiculo_de_poliza_autosUC = "sP_InsVehiculo_de_Poliza 'AXW'," & Folio & "," & _
						iAnio & "," & iMarca & ",'" & sModelo & "','" & sSerie & "','" & sPlacas & "','32','NL',NULL," & _
						iPrimaUC & "," & iDerechoUC & ",0,'TX',1,0,0,NULL,1,NULL," & iAsisIncluida & "," & iAsistenciaUC & ",1"
						'response.write sSQLInsVehiculo_de_poliza_autosUC
						objConn.execute sSQLInsVehiculo_de_poliza_autosUC

				'5.-Insertamos el Conductor
						sSQLCond = "sp_InsConductor_de_Poliza 'AXW'," & Folio & ",'" & sNombreAsegurado & "','N/A',NULL,NULL,NULL,1"
						'response.write sSQLCond
						objConn.execute sSQLCond
				
				'6.- Actualizando folio sistema de web 		
					sSQL="EXEC spUpdDatosActivacion " & iCodigoAcceso & ","& Folio
					'response.write sSQL
					objConnUC.execute(sSQL)
					
				'7.- Inserta en pdf sender para envio automatico 20220817 ccv
						sSQLCond = "insert into pdfsender(prefijo, folio, fecreg,enviado) values('AXW'," & Folio & ",getdate(),0)"
						objConn.execute sSQLCond
						
						
				subject = "UCXWeb"
					para = "ccampos@nationalunity.com.mx"
					cc = ""
					bcc = "" 
					'message="Estimado(a) "& sNombreAsegurado &" <br><br>Agradecemos tu confianza, estamos muy contentos de poder protegerte mientras disfrutas tu viaje.<br><br>Por medio de este correo te adjuntamos la liga para que puedas descargar tu poliza de Responsabilidad Civil para USA y Canada. <br><br> Si tienes alguna duda, favor de contactarnos a: servicioalcliente@nationalunity.com.mx<br><br>Decarga tu poliza aqui:  "
					'message=message & "https://www.nuiconline.com/PDFPolicy_new/Default.aspx?TipoPoliza=A&Prefijo=AXW&folio="& Folio & "vehiculo=1&OpenSave=S" 
					 message="UCXWeb para " & sEmail &" ca=" & iCodigoAcceso & "FW=" & Folio
					call enviargmail(subject,para,cc,bcc,message)
						
				'9.- redirigimos a la pagina junto con el boton de descargar poliza
				'response.end()
				'response.redirect("activa.asp?m=1&co=" &  sPolizaUCWeb & "&f=" & Folio)
				response.redirect("resultadoActivacion.asp?m=1&co=" &  sPolizaUCWeb & "&f=" & Folio &"&t=" & t)
				response.end()
				'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Else
	m=4
	'response.redirect("activa.asp?m=" & m)
	%>
		<!--<form name="forma" method="post" action="activa.asp?a=1&m=<%=m%>">-->
		<form name="forma" method="post" action="activa.asp?a=1&m=<%=m%>">
			<input type="hidden" value="<%=iCodigoAcceso%>" name="errnum" id="errnum"/>
			<input type="hidden" value="<%=iCodigoAcceso%>" name="iCodAccesoError"/>
			<input type="hidden" value="<%=sNombreAsegurado%>" name="sNombreAseguradoError"/>
			<input type="hidden" value="<%=sTelefono%>" name="sTelefonoError"/>
			<input type="hidden" value="<%=sEmail%>" name="sEmailError"/>
			<input type="hidden" value="<%=iAnio%>" name="iAnioError"/>
			<input type="hidden" value="<%=iMarca%>" name="iMarcaError"/>
			<input type="hidden" value="<%=sModelo%>" name="sModeloError"/>
			<input type="hidden" value="<%=sSerie%>" name="sSerieError"/>
			<input type="hidden" value="<%=sPlacas%>" name="sPlacasError"/>
			<input type="hidden" value="<%=sFechaInicio%>" name="sFechaInicioError"/>
			<input type="hidden" value="<%=sHoraInicio%>" name="sHoraInicioError"/>
			<input type="hidden" value="<%=sEdoent%>" name="sEdoentError"/>
			<input type="hidden" value="<%=sFnac%>" name="sFnacError"/>
		</form>
		<script>
			document.forma.submit();
		</script>
		<%
	response.end()
End if

if  Err.Number <> 0  then   
   ' An exception occurred
    StdOut "Exception:" & vbCrLf &_
        "    Error number: " & Err.Number & vbCrLf &_
        "    Error description: '" & Err.Description & vbCrLf

	response.write StdOut
End if
%>