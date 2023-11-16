<!--METADATA TYPE="typelib" UUID="CD000000-8B95-11D1-82DB-00C04FB1625D" NAME="CDO for Windows 2000 Type Library" -->
<!--METADATA TYPE="typelib" UUID="CD000000-8B95-11D1-82DB-00C04FB1625D" NAME="CDO for Windows Library" --> 
<!--METADATA TYPE="typelib" UUID="00000205-0000-0010-8000-00AA006D2EA4" NAME="ADODB Type Library" --> 
<%
sub enviargmail(subject,para,cc,bcc,message)

	Set iMsg = CreateObject("CDO.Message")
	Set iConf = CreateObject("CDO.Configuration")
	Set Flds = iConf.Fields
		
	' send one copy with Google SMTP server (with autentication)
	schema = "http://schemas.microsoft.com/cdo/configuration/"
	Flds.Item(schema & "sendusing") = 2
	Flds.Item(schema & "smtpserver") = "smtp.gmail.com" 
	Flds.Item(schema & "smtpserverport") = 465
	Flds.Item(schema & "smtpauthenticate") = 1
	'ccv gf ao 20200120 hk reponline Flds.Item(schema & "sendusername") = "sistemas@nationalunity.com.mx"
	Flds.Item(schema & "sendusername") = "no-reply@nationalunity.com.mx"
	'ccv gf ao 20200120 hk reponline Flds.Item(schema & "sendpassword") =  "National123"
	Flds.Item(schema & "sendpassword") =  "Nuic15303"
	Flds.Item(schema & "smtpusessl") = 1
	'Flds.Item(schema & "cdoSendTLS") = 1
	Flds.Item(schema & "smtpconnectiontimeout") = 60
	
	Flds.Update
	
	With iMsg
	.To = para
	.From = "National Unity Sistemas <no-reply@nationalunity.com.mx>"
	.Subject = subject
	.HTMLBody = message
	'.TextBody = "This is a plain text email"
	.Sender = "Me"
	.Organization = "www.nationalunity.com"
	.CC = cc
	.BCC = bcc
	'.addAttachment  "www.nationalunity.com\mail.zip"

	Set .Configuration = iConf
		' Se comentariza temporalmente Gaby Flores 11/05/2015
		' Se comentariza temporalmente Gaby Flores 09/14/2021
		SendEmailGmail = .Send
		subject=replace(subject,"'","")
		para=replace(para,"'","")
		cc=replace(cc,"'","")
		bcc=replace(bcc,"'","")
		message=replace(message,"'","")
		sSQL = "EXEC spInsBitacoraEmail '" & subject & "','" & para & "','" &  cc & "','"  & bcc & "','" & message & "'"
		'Response.write sSQL
		objConn.execute sSQL
	End With
	
    If cInt(Err)=cInt(0) Then
    Else
        Response.Write "<html><body><h1>The following error occured when sending</h1>Error (" & Err & ") :" & Err.Description & "</body></html>"
    End If

	set iMsg = nothing
	set iConf = nothing
	set Flds = nothing
End Sub
%>
