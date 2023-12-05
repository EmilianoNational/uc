<!DOCTYPE HTML>
<!--#include file="header18.asp"-->
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
	<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
        p, label {
            font-size: 14px;
        }

        .select {
            min-height: 50px;
            max-width: 250px;
            /* padding: 0 1rem; */
            color: #000000;
            font-size: 15px;
            border: 1px solid #25d366 !important;
            border-radius: 6px 0 0 6px;
            background-color: transparent;
            word-wrap: normal;
            /* font-family: 'FontAwesome', 'Second Font name'; */
        }
       
        .input {
        min-height: 50px;
        max-width: 250px;
        padding: 0 1rem;
        color: #000000;
        font-size: 15px;
        border: 1px solid #25d366 !important;
        border-radius: 6px 0 0 6px;
        background-color: transparent;
        }

        .inputwhatsapp {
        min-height: 50px;
        max-width: 250px;
        padding: 0 1rem;
        color: #000000;
        font-size: 15px;
        border: 1px solid #25d366;
        border-radius: 6px 0 0 6px;
        background-color: transparent;
        margin-left: calc(1px * -1);
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
        }

        .inputemail {
        min-height: 50px;
        max-width: 275px;
        padding: 0 1rem;
        color: #000000;
        font-size: 15px;
        border: 1px solid #1363df;
        border-radius: 6px 0 0 6px;
        background-color: transparent;
        }

        .sign {
            width: 100%;
            transition-duration: 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
            }

            .sign svg {
            width: 30px;
            }

            .sign svg path {
            fill: white;
            }

        .Btn {
            display: flex;
            align-items: center;
            height: 50px;
            width: 50px;
            border: none;
            cursor: pointer;
            transition-duration: 0.3s;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.199);
            background-color: #25d366;
            border-radius: 0px 6px 6px 0px;
            }

            .Btnemail {
            display: flex;
            align-items: center;
            height: 50px;
            width: 50px;
            border: none;
            cursor: pointer;
            transition-duration: 0.3s;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.199);
            background-color: #1363df;
            border-radius: 0px 6px 6px 0px;
            }

    </style>
</head>
    
<body oncontextmenu='return false' class=" snippet-body" data-highlight="blue2">

	<%
	
    m=request.querystring("m")
    ico=request.querystring("co")
    iFolioUnity=request.querystring("f")
    sTarjetaEncriptada=request.querystring("t")	

      sSQPol ="EXEC sp_getinfopol " & iFolioUnity
      
      
      Set oPol = objConn18.execute(sSQPol)
      idavatar = 1
      If Not oPol.EOF then
        stel = oPol("telefono")
        smail = oPol("correo")
      end if
      oPol.close
      
      'response.write(stel)
      'response.write("<br>")
      'response.write(smail)
      
      
	%>
    
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
    
<div id="page">
    
    <div class="page-content" style="padding-bottom: 0;">
        
        <div class="page-title page-title-large" style="display: flex; justify-content: space-between; align-items: center">
            <div>
                <a href="./index.php?t=<%=sTarjetaEncriptada%>">
                    <img src="../assets/nationalBlanco.png" alt="National Unity logo" width="107" height="74">
                </a>
            </div>
            <!-- <a href="#" data-menu="menu-main" class="header-icon header-icon-2 color-white icon-xxl"><i class="fas fa-bars" style="font-size: 30px;"></i></a> -->
        </div>
        <div class="card header-card" data-card-height="120">
            <div class="card-overlay bg-highlight opacity-95"></div>
            <div class="card-overlay dark-mode-tint"></div>
            <div class="card-bg preload-img" data-src="images/pictures/20s.jpg"></div>
        </div>
        
        <!-- <div style="height:45vh"> -->    
        <!-- </div> -->

        <div class="card" style="margin-bottom: 0; background-color: #f4f4f4">
            <div class="card-body d-flex flex-column align-items-center" style="background-color: #f4f4f4;">
                <h1 class="color-black mb-3">¡Gracias por su compra!</h1>
                
                <div style="display: flex; gap: 30px; flex-direction: column;">
                    <div class="card card-style mb-3 ms-0 me-0 bg-white">
                        <div class="content d-flex flex-column align-items-center" style="gap: 30px;">
                            <div>
								<p>
									Has asegurado tu auto con éxito. Descarga tu póliza y envia la póliza a tu correo con los botones de abajo.
								</p>
							</div>

							<div>
								<p>
									¡Viaja tranquilo, nosotros te cuidamos! 
								</p>
							</div>

							<div style="display: flex; flex-direction: column; gap: 15px;">
								<button class="btn bg-highlight rounded-3" onclick="window.open('https://www.nationalunity.com/pdfphp/pdfautosUC.php?p=euc&f=<%=iFolioUnity%>','_blank')">
                  Descargar Póliza  <%=ico%>  
                </button>



                <button class="btn bg-highlight rounded-3" onclick="$ ('#sendticket').modal ('show');">
                  Envio de Póliza
                </button>
								<!--
								<button class="btn bg-highlight rounded-3" onclick="window.location='https://www.nuicservices.com/PDFPolicy_new/Default.aspx?TipoPoliza=A&Prefijo=AXW&folio=<%=iFolioUnity%>&vehiculo=1&OpenSave=S'">Descargar Poliza</button>
								-->
								
							</div>
							<!--<div>
								<label for="">P&oacute;liza: <%=ico%>  </label>
							</div>-->
							<div>
								<p>
									Te invitamos a que leas nuestra guía de
									pasos a seguir en caso de un accidente
								</p>
							</div>
							<div>
								<a target="_blank" href="https://www.nationalunity.com/reportar-siniestro/">                       
									<button type="button"  class="btn bg-highlight rounded-3">Leer Guía</button>
								</a> 
							</div>
							
                        </div>
                    </div>
                    
                </div>

            </div>


            <div class="card-overlay bg-highlight opacity-95"></div>
            <div class="card-overlay dark-mode-tint"></div>
        </div>

        <!-- Modal para mostrar opciones de envio de poliza-->
        <div class="modal fade" id="sendticket" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Envío de Póliza</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body" id="respuesta" name="respuesta">

                <form name="forma" action="#" method="POST" onsubmit="return false;">

                  <div class="row align-items-center">

                    <!--<div class="col-sm-12">
                      <div>
                        <div class="input-group">

                          <select id="vpaislect" name="vpaislect" class="select">

                            <option value="521">MX</option>

                            <option value="1">US</option>
                          </select>

                          <input type="tel" class="inputwhatsapp form-control" id="telefonotext" name="telefonotext" placeholder="81-2564-1253" autocomplete="off" lenght="10">
                          <button class="Btn" id="whatsapp" dataset="" name="whatsapp" type="button">

                            <div class="sign">
                              <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                                <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z" />
                              </svg>
                            </div>

                          </button>
                          <input type="text" id="poliza_number" name="poliza_number" value="" style="display:none">

                          <input type="text" id="papel" name="papel" value="" style="display:none">
                        </div>
                      </div>
                    </div>
                    <%=smail%>
                    -->

                    <div class="col-sm-12" style="margin-top: 25px;">
                      <div>
                        <div class="input-group">
                          <input type="email" class="inputemail form-control border-blue-dark" id="emailtext" name="emailtext" value="<%=smail%>" autocomplete="off" readonly>
                          <button class="Btnemail" name="email" >

                            <div class="sign">
                              <svg viewBox="0 0 8 6" xmlns="http://www.w3.org/2000/svg">
                                <path d="m0 0h8v6h-8zm.75 .75v4.5h6.5v-4.5zM0 0l4 3 4-3v1l-4 3-4-3z" />
                              </svg>
                            </div>

                          </button>

                          <input type="text" id="poliza_number" name="poliza_number" value="<%=ico%>" style="display:none">

                          <input type="text" id="folio" name="folio" value="<%=iFolioUnity%>" style="display:none">
                        </div>
                      </div>
                    </div>
                  </div>

              </div>
              <div class="modal-footer">
                <button type="button" id="close_final" name="close_final" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>

                <button type="button" id="email" name="regresar_final" class="btn btn-success" >Enviar</button>
                <!--onclick="$ ('#sendticket').modal ('hide');"-->
              </div>
              </form>
            </div>
          </div>
        </div>

        <!-- footer and footer card-->
        <!-- <div class="footer" data-menu-load="menu-footer.html"></div>   -->
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
    <!-- end of page content-->
    
    
    <div id="menu-share" 
         class="menu menu-box-bottom menu-box-detached rounded-m" 
         data-menu-load="menu-share.html"
         data-menu-height="420" 
         data-menu-effect="menu-over">
    </div>    
    
    <div id="menu-highlights" 
         class="menu menu-box-bottom menu-box-detached rounded-m" 
         data-menu-load="menu-colors.html"
         data-menu-height="510" 
         data-menu-effect="menu-over">        
    </div>
    
    <div id="menu-main"
         class="menu menu-box-right menu-box-detached rounded-m"
         data-menu-width="260"
         data-menu-load="menu-main.php?t=<?=$sTarjetaEncriptada?>"
         data-menu-active="nav-welcome"
         data-menu-effect="menu-over">  
    </div>
    
    
</div>    

<script>
	function goBack() {
	window.history.back();
	}
</script>

<script>
  //detectar cuando se presione el boton de envio de correo
$("#email").on("click", function () {
  
  var correo = $("#emailtext").val();

  var expresion = /\w+@\w+\.+[a-z]/;

  if (!expresion.test(correo)) {
    //sweetalert para mostrar el mensaje de error
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Ingresa un email valido!",
    });
    return false;
  } else {
    //enviar mediante ajax los datos del formulario RespuestaAprobada a la pagina de whatsapp.php
    $.ajax({
      type: "POST",
      url: "php/Correo.php",
      data: $("#poliza_number").serialize() + "&" + $("#emailtext").serialize() + "&" + $("#folio").serialize(),
      success: function (data) {
        //imprimir respuesta de Correo.php en consola
        console.log('hola')
        Swal.fire({
          title: "Correo enviado",
          text: "El correo ha sido enviado correctamente",
          icon: "success",
        });
      },
    });
  }
});

</script>
<link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-bootstrap-4/bootstrap-4.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>
</body>
