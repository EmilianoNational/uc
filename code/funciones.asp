<%
''''''''''''FUNCIONES REALIZADAS PARA NATIONAL UNITY

function sValidarCadena(sCadena,bTipo)
sCadena = Trim(sCadena)
if bTipo ="" then
  sValidarcadena=""
  exit function
end if
If sCadena <> "" Then
     If cBool(bTipo) Then
	 sCadena = Replace(sCadena, "&amp;", "&")
	 sCadena = Replace(sCadena, "&#34;", """")
	 sCadena = Replace(sCadena, "&#39;", "'")
	 sCadena = Replace(sCadena, "&lt;", "<")
	 sCadena = Replace(sCadena, "&gt;", ">")
	 sValidarCadena = sCadena
	Else
	 sCadena = Replace(sCadena, "&", "&amp;")
	 sCadena = Replace(sCadena, "'", "&#39;")
	 sCadena = Replace(sCadena, """", "&#34;")
	 sCadena = Replace(sCadena, "<", "&lt;")
	 sCadena = Replace(sCadena, ">", "&gt;")
	 sValidarCadena = sCadena
	End If
  sValidarCadena = Replace(sValidarCadena , ";", "")
  sValidarCadena = Replace(sValidarCadena , "*", "")
  sValidarCadena = Replace(sValidarCadena , "/", "")
Else
  sValidarCadena = ""
End If

end function

'''''''''''''''''''''''''''''''''''''''''''''
'funcion para validar los parametros por medio de querystring(get) y From(POST).
'SISMEX
' con esto se evitaran los tipos de datos incorrectos para cada variable.
'Nota: si los precesos son lentos entonces cambiar la validacion de iValidarEntero y englobar todo
Function iValidarEntero(iNumero,iTipoDeEntero)
	if Len(iNumero) > 255 Then
		iNumero = ""
	End if
	Dim iContador
	iNumero = Trim(iNumero)
	If iNumero <> "" Then
		For iContador = 1 To Len(iNumero)
			If isNumeric(Mid(iNumero, iContador, 1)) Then
				If Not Mid(iNumero, iContador, 1) >= 0 And Not Mid(iNumero, iContador, 1) <= 9 Then
					iValidarEntero = ""
					Exit Function
				End If
			Else
				iValidarEntero = ""
				Exit Function
			End If
		Next
		iValidarEntero = cDbl(iNumero)
	Else
		iValidarEntero = ""
	End If
	Select Case iTipoDeEntero
		Case 1 'TinyInt
			if iValidarEntero <> "" Then
				if iValidarEntero > 255 Then
					iValidarEntero = ""
				End if
			End if
		Case 2 'SmallInt
			if iValidarEntero <> "" Then
				if iValidarEntero > 32767 Then
					iValidarEntero = ""
				End if
			End if
		Case 3 'Int
			if iValidarEntero <> "" Then
				if iValidarEntero > 2147483647 Then
					iValidarEntero = ""
				End if
			End if
		Case 4 'BigInt
			if iValidarEntero <> "" Then
				if iValidarEntero > 9223372036854775807 Then
					iValidarEntero = ""
				End if
			End if
		Case 5 'Booleano, 0=False y 1=True
			if iValidarEntero <> "" Then
				if iValidarEntero > 1 Then
					iValidarEntero = ""
				End if
			End if
	End Select
End Function

''''''''''''''''''''''''''''''''''''''''''''''''''''
Function iValidarNumero(iNumero)
		if Len(iNumero) > 255 Then
			iNumero = 0
		End if
		Dim iContador
		iNumero = Trim(iNumero)
		If iNumero <> "" Then
			For iContador = 1 To Len(iNumero)
				If isNumeric(Mid(iNumero, iContador, 1)) Then
					If Not Mid(iNumero, iContador, 1) >= 0 And Not Mid(iNumero, iContador, 1) <= 9 Then
						iValidarNumero = ""
						Exit Function
					End If
				Else
					iValidarNumero = ""
					Exit Function
				End If
			Next
			iValidarNumero = cDbl(iNumero)
		Else
			iValidarNumero = ""
		End If
	End Function
'''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''''''''''''''
function iRedondearAbajo(iNumero)
	Dim iPosicion
	iPosicion = InStr(iNumero,".")
	if iPosicion > 0 then
		iRedondearAbajo = left(iNumero,iPosicion-1)
	else
		iRedondearAbajo = iNumero
	end if
End Function

'''''Funcion desarrollada para el requerimiento num 10
''' convierte un numero a su equivalente en caracter
function ImporteLetra(iCantidad)
	sImporteLetra = ""
	iPosicion=1
	iCantidadNum = Len(iCantidad)
	if iCantidadNum >0 then
		for i = iCantidadNum to 1 step -1
			iNumero = Mid(iCantidad,iPosicion,1) 
			select case i
				case 1
					sImporteLetra = sImporteLetra & " " & unidades1(iNumero,iCantidad)
				case 2
					sImporteLetra = sImporteLetra & " " & unidades2(iNumero,iCantidad,Mid(iCantidad,iPosicion + 1,1))
				case 3
					sImporteLetra = sImporteLetra & " " & unidades3(iNumero,iCantidad)
				case 4
					sImporteLetra = sImporteLetra & " " & unidades4(iNumero,iCantidad)
				case 5
					sImporteLetra = sImporteLetra & " " & unidades5(iNumero,iCantidad)
				case 6
					sImporteLetra = sImporteLetra & " " & unidades6(iNumero,iCantidad)
				case 7
					sImporteLetra = sImporteLetra & " " & unidades7(iNumero,iCantidad)
			end select
		iPosicion = iPosicion + 1
		Next
	end if
ImporteLetra = sImporteLetra
end function

 function unidades1(iNumerito,iCantidad)
	select case iNumerito
		case 1
			sLetra = "uno"
		case 2
			sLetra = "dos"
		case 3
			sLetra = "tres"
		case 4
			sLetra = "cuatro"
		case 5
			sLetra = "cinco"
		case 6
			sLetra = "seis"
		case 7
			sLetra = "siete"
		case 8
			sLetra = "ocho"
		case 9
			sLetra = "nueve"
	end select
	unidades1 = sLetra
end function

function unidades2(iNumerito,iCantidad,iNumDer)
SELECT CASE iNumerito
		case 1
		if iNumDer =0 then
				sLetra = "Diez"
			else
				sLetra = "Diez y"
			end if
 		case 2
		if iNumDer =0 then
				sLetra = "Veinte"
			else
				sLetra = "Veinte y"
			end if
 		case 3
		if iNumDer =0 then
				sLetra = "Treinta"
			else
				sLetra = "Treinta y"
			end if
 		case 4
		if iNumDer =0 then
				sLetra = "Cuarenta"
			else
				sLetra = "Cuarenta y"
			end if
 		case 5
		if iNumDer =0 then
				sLetra = "Cincuenta"
			else
				sLetra = "Cincuenta y"
			end if
 		case 6
		if iNumDer =0 then
				sLetra = "Sesenta"
			else
				sLetra = "Sesenta y"
			end if
 		case 7
		if iNumDer =0 then
				sLetra = "Setenta"
			else
				sLetra = "Setenta y"
			end if
 		case 8
		if iNumDer =0 then
				sLetra = "Ochenta"
			else
				sLetra = "Ochenta y"
			end if
			sLetra = "Ochenta"
		case 9
			if iNumDer =0 then
				sLetra = "Noventa"
			else
				sLetra = "Noventa y"
			end if
 	end select
		unidades2 = sLetra
end function
function unidades3(iNumerito,iCantidad)
SELECT CASE iNumerito
		case 1
			sLetra = "Cien"
		case 2
			sLetra = "Doscientos"
		case 3
			sLetra = "Trescientos"
		case 4
			sLetra = "Cuatrocientos"
		case 5
			sLetra = "Quinientos"
		case 6
			sLetra = "Seiscientos"
		case 7
			sLetra = "Setecientos"
		case 8
			sLetra = "Ochocientos"
		case 9
			sLetra = "Novecientos"
	end select
		unidades3 = sLetra
end function
 
function unidades4(iNumerito,iCantidad)
SELECT CASE iNumerito
		case 1
			sLetra = "Unmil"
		case 2
			sLetra = "Dosmil"
		case 3
			sLetra = "TresMil"
		case 4
			sLetra = "Cuatromil"
		case 5
			sLetra = "Cincomil"
		case 6
			sLetra = "Seismil"
		case 7
			sLetra = "sietemil"
		case 8
			sLetra = "Ochomil"
		case 9
			sLetra = "Nuevemil"
	end select
	unidades4 = sLetra
end function

function unidades5(iNumerito,iCantidad)
SELECT CASE iNumerito
		case 1
		if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Diezmil"
			else
				sLetra = "Diez y"
			end if
			sLetra = "Diezmil"
		case 2
		if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "veintemil"
			else
				sLetra = "veinti y"
			end if
 		case 3
		if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Treintamil"
			else
				sLetra = "Treinta y"
			end if
 		case 4
			if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Cuarentamil"
			else
				sLetra = "Cuarenta y"
			end if
 		case 5
			if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Cincuentamil"
			else
				sLetra = "Cincuenta y"
			end if
 		case 6
		if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Sesentamil"
			else
				sLetra = "Sesenta y"
			end if
 		case 7
		if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Setentamil"
			else
				sLetra = "Setenta y"
			end if
 		case 8
		if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Ochentamil"
			else
				sLetra = "Ochenta y"
			end if
 		case 9
		if cint(Mid(iCantidad,2,1)) =0 then
				sLetra = "Noventamil"
			else
				sLetra = "Noventa y"
			end if
 	end select
		unidades5 = sLetra
end function
function unidades6(iNumerito,iCantidad)
SELECT CASE iNumerito
		case 1
			if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Cienmil"
			else
				sLetra = "Ciento"
			end if
		case 2
			if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Docientosmil"
			else
				sLetra = "Docientos"
			end if
 		case 3
			if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Trecientosmil"
			else
				sLetra = "Trecientos"
			end if
 		case 4
			if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Cuatrocientosmil"
			else
				sLetra = "Cuatrocientos"
			end if
		case 5
			if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Quinientosmil"
			else
				sLetra = "Quinientos"
			end if
 		case 6
			if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Seiscientosmil"
			else
				sLetra = "Seiscientos"
			end if
 		case 7
		if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Setecientosmil"
			else
				sLetra = "Setecientos"
			end if
 		case 8
		if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Ochicientosmil"
			else
				sLetra = "Ochicientos"
			end if
 		case 9
		if cint(Mid(iCantidad,2,1)) =0 and cint(Mid(iCantidad,3,1)) = 0 then
				sLetra = "Novecientosmil"
			else
				sLetra = "Novecientos"
			end if
 	end select
		unidades6 = sLetra
end function

function unidades7(iNumerito,iCantidad)
SELECT CASE iNumerito
		case 1
			sLetra = "Unmillon"
		case 2
			sLetra = "Dosmillones"
		case 3
			sLetra = "Tresmillones"
		case 4
			sLetra = "Cuatromillones"
		case 5
			sLetra = "Cincomillones"
		case 6
			sLetra = "Seismillones"
		case 7
			sLetra = "Sietemillones"
		case 8
			sLetra = "Ochomillones"
		case 9
			sLetra = "Nuevemillones"
	end select
	unidades7 = sLetra
end function

function LlenaCeros(sTexto, iLeg)
	sTex=sTexto
	for iAux=1 to iLeg-len(sTexto)
		sTex="0" & sTex
	Next
	LlenaCeros=sTex
End function


%>
