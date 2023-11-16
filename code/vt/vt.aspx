<%@ Page Language="VB" AutoEventWireup="false" CodeFile="vt.aspx.vb" Inherits="vt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 12px;
        }
    </style>
</head>
<head>
 <meta charset="utf-8">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="boostrap/assets/img/logo-fav.png">
    <title>National Unity</title>
    <link rel="stylesheet" type="text/css" href="boostrap/assets/lib/perfect-scrollbar/css/perfect-scrollbar.css"/>
    <link rel="stylesheet" type="text/css" href="boostrap/assets/lib/material-design-icons/css/material-design-iconic-font.min.css"/>
    <link rel="stylesheet" type="text/css" href="boostrap/assets/lib/datatables/datatables.net-bs4/css/dataTables.bootstrap4.css"/>
    <link rel="stylesheet" href="boostrap/assets/css/app.css" type="text/css"/>

    <link rel="stylesheet" type="text/css" href="boostrap/assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css"/>
    <link rel="stylesheet" type="text/css" href="boostrap/assets/lib/jqvmap/jqvmap.min.css"/>
    <link rel="stylesheet" type="text/css" href="boostrap/assets/lib/datetimepicker/css/bootstrap-datetimepicker.min.css"/>
	
	 <!-- Libraries CSS Files -->
  <link href="../wwwroot/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../wwwroot/lib/animate/animate.min.css" rel="stylesheet">
  <link href="../wwwroot/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="../wwwroot/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="../wwwroot/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  
</head>
<body style="width: 1016px">
    <form id="form1" runat="server">
   
    <div>
		<div class="be-content">
			<div class="main-content container-fluid">
				<div class="row">
					<div class="row">
						<div class="col-5 col-lg-12">
						  <div class="card card-table">
						  
						  <div class="user-info-list card">
						  
							  <div class="card-header">
								<img src="Unity1.png">
							  </div>
							  
							  <div class="card-header card-header-divider">
									<i class="icon mdi mdi-badge-check"></i>
									<span><b>&nbsp; Verificacion de Cobertura</b></span>
							  </div>
							  
							  <div class="card-body">
								<table class="no-border no-strip skills">
									<tbody class="no-border-x no-border-y">
										<tr>
											  <td class="icon"><span class="mdi mdi-card"></span></td>
											  <td>&nbsp;&nbsp;
												<asp:Label ID="Label2" runat="server"   ForeColor="#004B97" Text="Tarjeta"></asp:Label>
												: <asp:Label ID="lblTarjeta" runat="server" Text="Label" ForeColor="#004B97"></asp:Label>
											  </td>
										 </tr>
										 
										 <tr>
											  <td class="icon"><span class="mdi mdi-info-outline"></span></td>
											  <td>&nbsp;&nbsp;
												<asp:Label ID="lblTitulo" runat="server" Text="Label"  ForeColor="#004B97"></asp:Label>
											  </td>
										</tr>
										
										<%if lblNombre.text <> "" then%>
										
										  <tr>
										   <td class="icon"><span class="mdi mdi-calendar"></span></td>
											 <td>&nbsp;&nbsp;
												<asp:Label ID="label9" runat="server"  ForeColor="#004B97" Text="Fecha de Inicio"></asp:Label>
												:
												<asp:Label ID="lblFechaInicio" runat="server" Text="Label"  ForeColor="#004B97"></asp:Label>
											 </td>
										</tr>
										
										  <tr>
											<td class="icon"><span class="mdi mdi-calendar"></span></td>
											 <td>&nbsp;&nbsp;
												<asp:Label ID="Label11" runat="server"  ForeColor="#004B97" Text="Fecha de Terminación"></asp:Label>
												:
												<asp:Label ID="lblFechaTerminacion" runat="server" Text="Label"  ForeColor="#004B97"></asp:Label>
											 </td>
										</tr>
   
										
										<tr>
											  <td class="icon"> </td>
											 <td>
												  <asp:Label ID="Label4" runat="server"  ForeColor="#004B97" Text="Asegurado: "></asp:Label>
												  <asp:Label ID="lblNombre" runat="server"  ForeColor="#004B97" Text="Label"></asp:Label>
											  </td>
										</tr>
										
										<tr>
											  <td class="icon"> </td>
											 <td>
												<asp:Label ID="Label5" runat="server"  ForeColor="#004B97" Text="Marca: "></asp:Label>
												<asp:Label ID="lblMarca" runat="server"  ForeColor="#004B97" Text="Label"></asp:Label>
											  </td>
										</tr>
										
										<tr>
											  <td class="icon"> </td>
											 <td>
												<asp:Label ID="Label7" runat="server"  ForeColor="#004B97" Text="Modelo: "></asp:Label>
												<asp:Label ID="lblModelo" runat="server"  ForeColor="#004B97" Text="Label"></asp:Label>
											 </td>
										</tr>
										
										<tr>
											  <td class="icon"> </td>
											 <td>
												  <asp:Label ID="Label6" runat="server"  ForeColor="#004B97" Text="Modelo: "></asp:Label>
												  <asp:Label ID="lblAutoDescripcion" runat="server"  ForeColor="#004B97" Text="Label"></asp:Label>
											  </td>
										</tr>
										
										<tr>
											 <td class="icon"> </td>
											<td>
												<asp:Label ID="Label8" runat="server"  ForeColor="#004B97" Text="Placa: "></asp:Label>
												<asp:Label ID="lblPlaca" runat="server"  ForeColor="#004B97" Text="Label"></asp:Label>
											 </td>
										</tr>
										<%end if%>
										
										<tr>
											<td class="icon"> </td>
											<td>
												<asp:Label ID="Label3" runat="server"  ForeColor="#004B97" Text=""></asp:Label>
												<asp:Label ID="lblDescripcion" runat="server" Text="Label"  ForeColor="#004B97"></asp:Label>
											 </td>
										 </tr>
										 
										 <%if lblTitulo.text = "Tarjeta Pendiente de Activacion."  or lblTitulo.text = "Tarjeta Vendida" then%>
											 <tr>
												 
												<!--aquiprueba<td colspan=2 align="center">
													<a href="http://148.244.90.102/Activador.aspx" target="_blank" class="button"> 
													<button type="button" class="btn btn-primary">ACTIVAR EN LINEA</button></a>
												 </td>-->
											 </tr>
										 <%end if%>
										 
										 
								  </tbody>
							</table>							  
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
   
    </form>
</body>
</html>
