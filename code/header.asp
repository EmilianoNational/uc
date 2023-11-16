<%response.buffer =true
server.ScriptTimeOut=36000
function cambiaNulo(sAux)
	if isnull(sAux) then 
		cambiaNulo="0"
	else 
		cambiaNulo=sAux
	end if
    End Function

function Alfabetico(sValor)
	dim iLet, ierror, sLet
	ierror=true
	For iLet= 1 to len(trim(sValor))
		sLet = mid(sValor,iLet,1)
		if Not((Asc(sLet) >= Asc("A") And Asc(sLet)<=Asc("Z")) Or (Asc(sLet) >= Asc("a") And Asc(sLet)<=Asc("z")) Or Asc(sLet)=Asc("Ñ") Or Asc(iLet)=Asc("ñ") Or Asc(sLet)=Asc(" ") Or Asc(sLet)=Asc(".")) then 
			ierror=false
		end if
	Next 
	Alfabetico = ierror
End function

function Numerico(sValor)
	dim iLet, ierror, sLet
	ierror=true
	For iLet= 1 to len(trim(sValor))
		sLet = mid(sValor,iLet,1)
		if Not((Asc(sLet) >= Asc("0") And Asc(sLet)<=Asc("9")) Or Asc(sLet)=Asc(".")) then 
			ierror=false
		end if
	Next 
	Numerico = ierror
End function

function AlfaNumerico(sValor)
	dim iLet, ierror, sLet
	ierror=true
	For iLet= 1 to len(trim(sValor))
		sLet = mid(sValor,iLet,1)
		if Asc(sLet)=34  or Asc(sLet)=39 or Asc(sLet)=124 then ierror=false
	Next 
	AlfaNumerico = ierror
End function

function Fecha(sValor)
	dim ierror
	if isdate(sValor) then 
		ierror=true
	else
		ierror=false
	end if
	Fecha = ierror
End function

function FormaFecha(Fecha)
	dim sFec
	sFec=day(fecha)
	sFec=sFec & " " & sMes(month(Fecha)) & " " & year(fecha)
	FormaFecha=sFec
End Function

function FormateaFecha(Fecha)
	dim sFec
	sFec=left(fecha,2)
	sFec=mid(Fecha,4,2) & "/" & sFec & "/" & right(fecha,4)
	FormateaFecha=sFec
End Function

function sMes(mes)
	Select Case mes
		case 1: sMes="Ene"
		case 2: sMes="Feb"
		case 3: sMes="Mar"
		case 4: sMes="Abr"
		case 5: sMes="May"
		case 6: sMes="Jun"
		case 7: sMes="Jul"
		case 8: sMes="Ago"
		case 9: sMes="Sep"
		case 10: sMes="Oct"
		case 11: sMes="Nov"
		case 12: sMes="Dic"
	end select
End Function


function sNombreMes(mes)
	Select Case mes
		case 1: snombreMes="Enero"
		case 2: snombreMes="Febrero"
		case 3: snombreMes="Marzo"
		case 4: snombreMes="Abril"
		case 5: snombreMes="Mayo"
		case 6: snombreMes="Junio"
		case 7: snombreMes="Julio"
		case 8: snombreMes="Agosto"
		case 9: snombreMes="Septiembre"
		case 10: snombreMes="Octubre"
		case 11: snombreMes="Noviembre"
		case 12: snombreMes="Diciembre"
	end select
End Function


function sNombreMesI(mes)
	Select Case mes
		case 1: snombreMesI="January"
		case 2: snombreMesI="February"
		case 3: snombreMesI="March"
		case 4: snombreMesI="April"
		case 5: snombreMesI="May"
		case 6: snombreMesI="June"
		case 7: snombreMesI="July"
		case 8: snombreMesI="August"
		case 9: snombreMesI="September"
		case 10: snombreMesI="October"
		case 11: snombreMesI="November"
		case 12: snombreMesI="December"
	end select
End Function



Function formateaNumero(sNum)
	if isnull(sNum) then
		formateaNumero="Null"
	elseif sNum="" then
		formateaNumero="Null"
	else
		formateaNumero = sNum
	end if
End Function

Function formateaNumeroCero(sNum)
	if isnull(sNum) then
		formateaNumeroCero = 0
	elseif sNum = "" then
		formateaNumeroCero = 0
	else
		formateaNumeroCero = sNum
	end if
End Function

Function MuestraLogico(sNum)
	if isnull(sNum) then
		MuestraLogico ="No"
	elseif sNum=true then
		MuestraLogico ="Si"
	else
		MuestraLogico = "No"
	end if
End Function

Function formateaLogico(sNum)
	if isnull(sNum) then
		formateaLogico ="0"
	elseif sNum=1 then
		formateaLogico ="1"
	else
		formateaLogico = "0"
	end if
End Function

Function cambiaVacio(sNum)
	if isNull(sNum) then
		cambiaVacio=0
	elseif sNum="" then
		cambiaVacio=0
	else
		cambiaVacio=sNum
	end if
End Function

Function Numero_Random()
'***** Variables *****
Dim Password
Dim RandomPassword
Dim nCharacters

' this is the array of characters used
' to generate the random passwords

Dim array_cod(35)
array_cod(0) = "0"
array_cod(1) = "1"
array_cod(2) = "2"
array_cod(3) = "3"
array_cod(4) = "4"
array_cod(5) = "5"
array_cod(6) = "6"
array_cod(7) = "7"
array_cod(8) = "8"
array_cod(9) = "9"
array_cod(10) = "a"
array_cod(11) = "b"
array_cod(12) = "c"
array_cod(13) = "d"
array_cod(14) = "e"
array_cod(15) = "f"
array_cod(16) = "g"
array_cod(17) = "h"
array_cod(18) = "i"
array_cod(19) = "j"
array_cod(20) = "k"
array_cod(21) = "l"
array_cod(22) = "m"
array_cod(23) = "n"
array_cod(24) = "o"
array_cod(25) = "p"
array_cod(26) = "q"
array_cod(27) = "r"
array_cod(28) = "s"
array_cod(29) = "t"
array_cod(30) = "u"
array_cod(31) = "v"
array_cod(32) = "w"
array_cod(33) = "x"
array_cod(34) = "y"
array_cod(35) = "z"

for cod=0 to 9  ' generate a 10 character random password
	MaxCod = 35 ' Upper bound of the array
	MinCod = 0  ' Lower bound of the array
	Randomize   ' Initialize the randomizer
	
	' generate the password character by character until it has 10 characters, and convert it to a string
	RandomPassword = CStr(RandomPassword & array_cod(Int(Rnd * MaxCod) - MinCod))
next

Numero_Random = RandomPassword

End Function

Function formateaString(nomstr)
	if isnull(nomstr) or len(trim(nomstr))=0 then
		formateaString = "NULL"
	elseif nomstr = "" then
		formateaString = "NULL"
	else
		formateaString = "'" & Ucase(nomstr) & "'"
	end if
End Function

Function Clave_random()
	Passgenerat = ""
	Randomize
	For i = 1 to 8
	intNum = Int(10 * Rnd + 48)
	intUpper = Int(26 * Rnd + 65)
	intLower = Int(26 * Rnd + 97)
	intRand = Int(3 * Rnd + 1)
	Select Case intRand
	Case 1
	strPass = Chr(intNum)
	Case 2
	strPass = Chr(intUpper)
	Case 3
	strPass = Chr(intLower)
	End Select
	Passgenerat = Passgenerat & strPass
	Next
	
	Clave_random = Passgenerat
end function

'-------------------------------------------------------------------------------------
'-- Check for valid email address 

Function IsEmail(sCheckEmail)
Dim sEmail, nAtLoc
IsEmail = True
sEmail = Trim(sCheckEmail)
nAtLoc = InStr(1, sEmail, "@") 'Location of "@" 

	If Not (nAtLoc > 1 And (InStrRev(sEmail, ".") > nAtLoc + 1)) Then
	'& '"@" must exist, and last "." in string must follow the "@"
		IsEmail = False
	ElseIf InStr(nAtLoc + 1, sEmail, "@") > nAtLoc Then
	'&'String can't have more than one "@"
		IsEmail = False
	ElseIf Mid(sEmail, nAtLoc + 1, 1) = "." Then
	'&'String can't have "." immediately following "@"
		IsEmail = False
	ElseIf InStr(1, Right(sEmail, 2), ".") > 0 Then
	'&'String must have at least a two-character top-level domain.
		IsEmail = False
	End If
End Function 

' Function IsEmailValid(strEmail) 
' Action: checks if an email is correct. 
' Parameter: strEmail - the Email address 
' Returned value: on success it returns True, else False. 
Function EmailValid(strEmail) 
	'Response.Write "esta es una prueba"
    Dim strArray 
    Dim strItem 
    Dim i 
    Dim c 
    Dim blnIsItValid 
  
    ' assume the email address is correct  
    blnIsItValid = True 
    
    ' split the email address in two parts: name@domain.ext 
    strArray = Split(strEmail, "@") 
  
    ' if there are more or less than two parts  
    If UBound(strArray) <> 1 Then 
        blnIsItValid = False 
        EmailValid = blnIsItValid 
        'Response.Write "error1"
        Exit Function 
    End If 
  
    ' check each part 
    For Each strItem In strArray 
        ' no part can be void 
        If Len(strItem) <= 0 Then 
            blnIsItValid = False 
            EmailValid = blnIsItValid 
            'Response.Write "error2"
            Exit Function 
        End If 
        
        ' check each character of the part 
        ' only following "abcdefghijklmnopqrstuvwxyz_-." 
        ' characters and the ten digits are allowed 
        For i = 1 To Len(strItem) 
               c = LCase(Mid(strItem, i, 1)) 
               ' if there is an illegal character in the part 
               If InStr("abcdefghijklmnopqrstuvwxyz_-.", c) <= 0 And Not IsNumeric(c) Then 
                   blnIsItValid = False 
                   EmailValid = blnIsItValid 
                   'Response.Write "error3"
                   Exit Function 
               End If 
        Next 
   
      ' the first and the last character in the part cannot be . (dot) 
        If Left(strItem, 1) = "." Or Right(strItem, 1) = "." Then 
           blnIsItValid = False 
           EmailValid = blnIsItValid 
           'Response.Write "error4"
           Exit Function 
        End If 
    Next 
  
    ' the second part (domain.ext) must contain a . (dot) 
    If InStr(strArray(1), ".") <= 0 Then 
        blnIsItValid = False 
        EmailValid = blnIsItValid 
        'Response.Write "error5"
        Exit Function 
    End If 
  
    ' check the length oh the extension  
    i = Len(strArray(1)) - InStrRev(strArray(1), ".") 
    ' the length of the extension can be only 2, 3, or 4 
    ' to cover the new "info" extension 
    If i <> 2 And i <> 3 And i <> 4 Then 
        blnIsItValid = False 
        EmailValid = blnIsItValid 
        'Response.Write "error6"
        Exit Function 
    End If 

    ' after . (dot) cannot follow a . (dot) 
    If InStr(strEmail, "..") > 0 Then 
        blnIsItValid = False 
        EmailValid = blnIsItValid 
        'Response.Write "error7"
        Exit Function 
    End If 
  
    ' finally it's OK  
    'Response.Write "si esta bien"
    EmailValid = blnIsItValid 
    
 End Function 
 

Function AlfaNumerico_segundo(sString)
	Dim nChar, i
	AlfaNumerico = True
	For i = 1 To Len(sString)
		nChar = Asc(LCase(Mid(sString, i, 1)))
		'Select case nChar
	'		case 40 to 92
	'			AlfaNumerico = true
	'		case 97 to 122	
	'			AlfaNumerico = true
	'		case 32
	'			AlfaNumerico = true
	'		case 58
	'			AlfaNumerico = true
	'		case 33
	'			AlfaNumerico = true
	'		case 36 to 38
	'			AlfaNumerico = true
	'		case 164 to 165
	'			AlfaNumerico = true
	'		else
	'			AlfaNumerico = false 
	'			Exit For
	'	end select
		If not ((((((((nChar >= 40 And nChar < 93) or (nChar > 96 And nChar < 123)) or (nChar = 32)) or (nChar = 58)) or (nChar = 33)) or (nChar > 35 and nChar <= 38)) or (nChar <> 164)) or (nChar <> 165)) Then
			AlfaNumerico = False 
			Exit For
		End If
	Next
End Function 

'-- USAGE:
'-- IsAlphaNumeric("1273 Lovers Lane #B") Returns False
'-- IsAlphaNumeric("1273 B Lovers Lane") Returns True
'-- IsAlphaNumeric("1273 B. Lovers Ln.") Returns False
'-- IsAlphaNumeric("1273 B Lovers Ln") Returns True 
 


'-------------------------------------------------------------------------------------
'-- Strip special symbols 

Function StripSymbols(sString)
	Dim nCharPos, sOut, nChar
	nCharPos = 1
	sOut = ""
	For nCharPos = 1 To Len(sString)
		nChar = Asc(Lcase(Mid(sString, nCharPos, 1)))
		If ((nChar > 47 And nChar < 58) or (nChar > 96 And nChar < 123) or nChar = 32) Then
			sOut = sOut & Mid(sString, nCharPos, 1)
		End If
	Next
	StripSymbols = sOut
End Function 

'-- USAGE:
'-- StripSymbols("1273 B. Lovers Ln.") 'Returns "1271 B Maiden Ln"
'-- StripSymbols("1273 Lovers Lane #B") 'Returns "1271 Maiden Lane B"


    'Dim objConn
    Set objConnUC = Server.CreateObject("ADODB.Connection")
    'objConn.Open "DSN=SEGPRO;UID=sa;PWD=psa;"
    'objConn.Open "DSN=NUSISSEG;UID=sa;"
    objConnUC.ConnectionTimeout = 0
    objConnUC.CommandTimeout = 0

    objConnUC.Open "DRIVER={SQL Server};SERVER=192.168.1.18;DATABASE=UnityCard;UID=sa;PWD=prepago;"
	'objConn.Open "DRIVER={SQL Server};SERVER=10.80.11.167;DATABASE=NUSIS;UID=iismty;PWD=un1709;"
	
	 'Dim objConn
    Set objConnIVR = Server.CreateObject("ADODB.Connection")
    'objConn.Open "DSN=SEGPRO;UID=sa;PWD=psa;"
    'objConn.Open "DSN=NUSISSEG;UID=sa;"
    objConnIVR.ConnectionTimeout = 0
    objConnIVR.CommandTimeout = 0

    objConnIVR.Open "DRIVER={SQL Server};SERVER=192.168.1.18;DATABASE=IVR;UID=sa;PWD=prepago;"
	
	
	Set objConn = Server.CreateObject("ADODB.Connection")
    'objConn.Open "DSN=SEGPRO;UID=sa;PWD=psa;"
    'objConn.Open "DSN=NUSISSEG;UID=sa;"
    objConn.ConnectionTimeout = 0
    objConn.CommandTimeout = 0

    objConn.Open "DRIVER={SQL Server};SERVER=192.168.1.7;DATABASE=NUSIS;UID=sa;PWD=unity;"

	
	
	

%>
