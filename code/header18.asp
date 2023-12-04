<%

Set objConn18 = Server.CreateObject("ADODB.Connection")
    objConn18.ConnectionTimeout = 0
    objConn18.CommandTimeout = 0

    objConn18.Open "DRIVER={SQL Server};SERVER=192.168.1.18;DATABASE=UnityCard;UID=sa;PWD=prepago;"
	
%>