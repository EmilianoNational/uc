<%@ Page Language="VB" AutoEventWireup="false" CodeFile="vt2.aspx.vb" Inherits="vt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<title>Consulta tu póliza</title>  
<link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/style.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="fonts/css/fontawesome-all.min.css">    
<link rel="manifest" href="_manifest.json" data-pwa-version="set_in_manifest_and_pwa_js">
<link rel="apple-touch-icon" sizes="180x180" href="app/icons/icon-192x192.png">
</head>


<body class="theme-light" data-highlight="blue2">

	<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>

		<div id="page">  

			<div class="page-content" style="padding-bottom: 0px;">

				<div class="page-title page-title-large" style="display: flex; justify-content: space-between; align-items: center">
					<div>
						<a href="#" id="logoLink">
							<img src="../assets/nationalAzul.png" alt="National Unity logo" width="107" height="74">
						</a>
					</div>
					<!--<a href="#" data-menu="menu-main" class="header-icon header-icon-2 color-black icon-xxl"><i class="fas fa-bars" style="font-size: 30px;"></i></a>-->
				</div>
				<div class="card header-card" data-card-height="120" style="padding-bottom: 0;">
					<div class="card-overlay opacity-95" style="background-color: #eef2f1;;"></div>
					<div class="card-overlay dark-mode-tint"></div>
					<div class="card-bg preload-img" data-src="images/pictures/20s.jpg"></div>
				</div>

				<div style="margin-bottom: 30px;">
					<img src="../assets/banner3.png" alt="banner" style="width: 100%;">
				</div>

				<form id="form1" runat="server">
				
					<div>
						<div class="be-content">
							<div class="main-content container-fluid">
								<div class="row justify-content-center">
									<div class="row">
										<div class="col-12" style="padding: 0;">
											<div class="card" style="margin-bottom: 0; background-color: #f4f4f4">
										
												<div class="user-info-list card" style="background-color: #f4f4f4;">
													
													<div class="card-body" style="background-color: #f4f4f4;">
														<h4 class="color-black mb-3">Consulta tu póliza</h4>
														<p class="color-black" style="font-size: 14px">
															En este apartado podrás revisar la activación, validez o vigencia de tu tarjeta Unity Card.
														</p>
														<table class="no-border no-strip skills color-black" style="font-size: 14px">
															<tbody class="no-border-x no-border-y color-black">
																<tr>
																	<td>
																		<asp:Label ID="Label2" runat="server"  ForeColor="#000" Text="Tarjeta" style="font-weight: bold;"></asp:Label>
																		: <asp:Label ID="lblTarjeta" runat="server" Text="Label" ForeColor="#000"></asp:Label>
																	</td>
																</tr>
																
																<tr>
																	<td>
																		<asp:Label ID="lblTitulo" runat="server" Text="Label"  ForeColor="#000" style="font-weight: bold;"></asp:Label>
																	</td>
																</tr>
																
																<%if lblNombre.text <> "" then%>
																
																<tr>
																	<td>
																		<asp:Label ID="label9" runat="server"  ForeColor="#000" Text="Fecha de Inicio" style="font-weight: bold;"></asp:Label>
																		:
																		<asp:Label ID="lblFechaInicio" runat="server" Text="Label"  ForeColor="#000"></asp:Label>
																	</td>
																</tr>
																
																<tr>
																	<td>
																		<asp:Label ID="Label11" runat="server"  ForeColor="#000" Text="Fecha de Terminación" style="font-weight: bold;"></asp:Label>
																		:
																		<asp:Label ID="lblFechaTerminacion" runat="server" Text="Label"  ForeColor="#000"></asp:Label>
																	</td>
																</tr>
						
																<tr>																	
																	<td>
																		<asp:Label ID="Label4" runat="server"  ForeColor="#000" Text="Asegurado: " style="font-weight: bold;"></asp:Label>
																		<asp:Label ID="lblNombre" runat="server"  ForeColor="#000" Text="Label"></asp:Label>
																	</td>
																</tr>
																
																<tr>
																	<td>
																		<asp:Label ID="Label5" runat="server"  ForeColor="#000" Text="Marca: " style="font-weight: bold;"></asp:Label>
																		<asp:Label ID="lblMarca" runat="server"  ForeColor="#000" Text="Label"></asp:Label>
																	</td>
																</tr>
																
																<tr>
																	<td>
																		<asp:Label ID="Label7" runat="server"  ForeColor="#000" Text="Modelo: " style="font-weight: bold;"></asp:Label>
																		<asp:Label ID="lblModelo" runat="server"  ForeColor="#000" Text="Label"></asp:Label>
																	</td>
																</tr>
																
																<tr>
																	<td>
																		<asp:Label ID="Label6" runat="server"  ForeColor="#000" Text="Modelo: " style="font-weight: bold;"></asp:Label>
																		<asp:Label ID="lblAutoDescripcion" runat="server"  ForeColor="#000" Text="Label"></asp:Label>
																	</td>
																</tr>
																
																<tr>
																	<td>
																		<asp:Label ID="Label8" runat="server"  ForeColor="#000" Text="Placa: " style="font-weight: bold;"></asp:Label>
																		<asp:Label ID="lblPlaca" runat="server"  ForeColor="#000" Text="Label"></asp:Label>
																	</td>
																</tr>
																<%end if%>
																
																<tr>
																	<td>
																		<asp:Label ID="Label3" runat="server"  ForeColor="#000" Text="" style="font-weight: bold;"></asp:Label>
																		<asp:Label ID="lblDescripcion" runat="server" Text="Label"  ForeColor="#000"></asp:Label>
																	</td>
																</tr>
																
																<%if lblTitulo.text = "Tarjeta Pendiente de Activacion."  or lblTitulo.text = "Tarjeta Vendida" then%>
																	<tr>
																		
																		<td colspan=2 align="center">
																			<br>
																			<br>
																			<br>
																			<br>
																			<a href="activa.asp" class="button mt-4"> 
																				<button type="button" class="btn btn-m btn-full mb-3 rounded-xs bg-mint-dark">
																					ACTIVAR EN LíNEA
																				</button>
																			</a>
																		</td>
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
						</div>
					</div>
		
				</form>

				<div class="footer" style="display: flex; justify-content: space-between; padding: 40px 30px 15px;">
					<span>
					  <a style="color: #000;" href="https://www.nationalunity.com/wp-content/uploads/2022/08/privacynu.pdf" target="_blank" rel="noopener">Política de privacidad</a>
					</span>
					<span>
					  <a style="color: #000;" href="https://www.nationalunity.com/terminos-y-condiciones/">Términos y condiciones</a>
					</span>
				</div>
				<div class="bg-highlight">
					<p style="text-align: center; padding: 30px; margin-bottom: 0;">
					  <span style="font-size: 10pt; color: #fff;">
						© 2023 National Unity Insurance Company. All rights reserved
					  </span>
					</p>
				</div>
			</div>

		</div>
   
   	<div id="menu-main"
		class="menu menu-box-right menu-box-detached rounded-m"
		data-menu-width="260"
		data-menu-load="menu-main.php"
		data-menu-active="nav-welcome"
		data-menu-effect="menu-over">  
   	</div>

	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/custom.js"></script>
	<script>
		document.getElementById('logoLink').addEventListener('click', function(e) {
			console.log('click')
			e.preventDefault(); // Evitar el comportamiento predeterminado del enlace
			window.history.back(); // Volver a la página anterior
		});
	</script>
</body>
</html>
