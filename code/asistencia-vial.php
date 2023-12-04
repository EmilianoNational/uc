<?php
//obtener el siguiente parametro con get ?c=353105024-0-1-1
date_default_timezone_set('UTC');
date_default_timezone_set('America/Monterrey');


if (isset($_POST['t']) || isset($_GET['t'])) {
    // Determina si se recibe 'token' por POST o GET o coloca un valor por defecto
    
    $sTarjetaEncriptada=isset($_POST['t']) ? $_POST['t'] : $_GET['t'] ;
} else {
    $sTarjetaEncriptada = '000';
}

	


?>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<title>Asistencia vial</title>
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
    
    <div class="page-content" style="padding-bottom: 0;">
        
        <div class="page-title page-title-large" style="display: flex; justify-content: space-between; align-items: center">
            <div>
                <a href="./index.php?t=<?=$sTarjetaEncriptada?>">
                    <img src="../assets/nationalBlanco.png" alt="National Unity logo" width="107" height="74">
                </a>
            </div>
            <a href="#" data-menu="menu-main" class="header-icon header-icon-2 color-white icon-xxl"><i class="fas fa-bars" style="font-size: 30px;"></i></a>
        </div>
        <div class="card header-card" data-card-height="120">
            <div class="card-overlay bg-highlight opacity-95"></div>
            <div class="card-overlay dark-mode-tint"></div>
            <div class="card-bg preload-img" data-src="images/pictures/20s.jpg"></div>
        </div>
        
        <!-- <div style="height:45vh"> -->    
        <!-- </div> -->

        <div class="card" style="margin-bottom: 0; background-color: #f4f4f4">
            <div class="content" style="margin-bottom: 0;">
                <h4 class="color-black mb-3">Asistencia Vial</h4>
                <p class="color-black mb-4" style="font-size: 14px"> 
                    Pasos a seguir en caso de un Accidente
                </p>
            </div>
        </div>
        <div class="card" style="background-color: #f4f4f4;">
            <div class="card-body" style="background-color: #f4f4f4;">

                <p class="color-black mb-1" style="font-size: 14px" style="color: #000;">
                    En caso de que usted requiera Asistencia Vial dentro de los Estados Unidos de América deberá llamar al:
                </p>

                <p class="color-black mb-1" style="font-size: 14px">
                    Proporcionar los siguientes datos:
                </p>
                <ul class="color-black" style="font-size: 14px">
                    <li>Número de póliza completo</li>
                    <li>Teléfono donde contactarlo</li>
                    <li>Correo electrónico</li>
                    <li>Tipo de servicio solicitado</li>
                </ul>
            
                <div class="card card-style mb-3 ms-0 me-0 bg-white">
                    <div class="content" style="display: flex; flex-direction: column; justify-content: center" onclick="noCostUSA()">
                        <button >
                            <img src="../assets/phone.png" alt="phone" width="64" height="64">
                        </button>
                        <div style="text-align: center;" class="mt-3">
                            <span class="" style="font-size: 14px">Sin Costo desde USA<br>1-800-308-5513</span>
                        </div>
                    </div>
                </div>               
                <div class="card card-style mb-3 ms-0 me-0 bg-white">
                    <div class="content" style="display: flex; flex-direction: column; justify-content: center" onclick="fromMexico()">
                        <button >
                            <img src="../assets/phone.png" alt="phone" width="64" height="64">
                        </button>
                        <div style="text-align: center;" class="mt-3">
                            <span class="" style="font-size: 14px">Desde México<br>001-880-308-5513</span>
                        </div>
                    </div>
                </div>
                <div class="card card-style mb-3 ms-0 me-0 bg-white">
                    <div class="content" style="display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 8px;">
                        <a href="https://api.whatsapp.com/send/?phone=5215587196412&text=Quiero+solicitar+una+ASISTENCIA+para+NATIONAL+UNITY+ROADSIDE+ASSISTANCE&type=&&type=" class="icon icon-xxl rounded-xs" target="_blank">
                            <img src="../assets/whatsapp.png" alt="Whatsapp">
                        </a>
                        <p class="" style="font-size: 14px">Vía Whatsapp</p>
                    </div>
                </div>

                <div class="accordion mt-4 mb-4" id="accordion-2">
                    <div class="card card-style shadow-0 bg-highlight mb-1 border-white" style="background-color: #fff;">
                        <button class="btn accordion-btn color-white no-effect collapsed" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false">
                            Servicios incluidos
                            <i class="fa fa-plus font-10 accordion-icon"></i>
                        </button>
        
                        <div id="collapse4" class="bg-theme collapse" data-bs-parent="#accordion-2" style="">
                            <div class="pt-3 pb-3" style="padding-right: 20px;">
                                <ol>
                                    <li>
                                        <div>
                                            <h5>CARGA DE PILA</h5>
                                            <p>Carga de batería para carros.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h5>PONCHADURAS</h5>
                                            <p>Cambio solo si tiene llanta de refacción.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h5>REPOSICIÓN DE LÍQUIDOS</h5>
                                            <p>No se provee marca u octanaja específicos. El costo del líquido debe ser cubierto por el asegurado.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h5>SERVICIOS DE CERRAJERÍA</h5>
                                            <p>Apertura del carro por pérdida de llaves o por estar dentro del vehículo, no se hacen duplicados de llaves.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h5>GRÚA</h5>
                                            <p>
                                                Del lugar del evento al lugar más próximo donde el problema pueda solucionarse o el vehículo pueda resguardarse.
                                                Queda excluido el cruce del vehículo a territorio mexicano y el arrastre a cause de accidente.
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <h5>ATASCAMIENTO</h5>
                                            <p>Si el vehículo queda atascado, este puede ser liberado siempre y cuando esté en zona de tránsito normal.</p>
                                        </div>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>

                
            </div>
            <div class="card-overlay bg-highlight opacity-95"></div>
            <div class="card-overlay dark-mode-tint"></div>
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
<<<<<<< HEAD
         data-menu-load="menu-main.php"
=======
         data-menu-load="menu-main.php?t=<?=$sTarjetaEncriptada?>"
>>>>>>> 8392785 (Commit con git)
         data-menu-active="nav-welcome"
         data-menu-effect="menu-over">  
    </div>
    
    <!-- Be sure this is on your main visiting page, for example, the index.html page-->
    <!-- Install Prompt for Android -->
    <!-- <div id="menu-install-pwa-android" class="menu menu-box-bottom menu-box-detached rounded-l"
         data-menu-height="350" 
        data-menu-effect="menu-parallax">
        <div class="boxed-text-l mt-4">
            <img class="rounded-l mb-3" src="app/icons/icon-128x128.png" alt="img" width="90">
            <h4 class="mt-3">Azures on your Home Screen</h4>
            <p>
                Install Azures on your home screen, and access it just like a regular app. It really is that simple!
            </p>
            <a href="#" class="pwa-install btn btn-s rounded-s shadow-l text-uppercase font-900 bg-highlight mb-2">Add to Home Screen</a><br>
            <a href="#" class="pwa-dismiss close-menu color-gray2-light text-uppercase font-900 opacity-60 font-10">Maybe later</a>
            <div class="clear"></div>
        </div>
    </div>    -->

    <!-- Install instructions for iOS -->
    <!-- <div id="menu-install-pwa-ios" 
        class="menu menu-box-bottom menu-box-detached rounded-l"
         data-menu-height="320" 
        data-menu-effect="menu-parallax">
        <div class="boxed-text-xl mt-4">
            <img class="rounded-l mb-3" src="app/icons/icon-128x128.png" alt="img" width="90">
            <h4 class="mt-3">Azures on your Home Screen</h4>
            <p class="mb-0 pb-3">
                Install Azures on your home screen, and access it just like a regular app.  Open your Safari menu and tap "Add to Home Screen".
            </p>
            <div class="clear"></div>
            <a href="#" class="pwa-dismiss close-menu color-highlight font-800 opacity-80 text-center text-uppercase">Maybe later</a><br>
            <i class="fa-ios-arrow fa fa-caret-down font-40"></i>
        </div>
    </div> -->

    
</div>    

<script type="text/javascript">
    function noCostUSA() {
        window.location.href = 'tel:+18003085513'; // Cambia el número por el que desees
    }

    function fromMexico() {
        window.location.href = 'tel:+0018803085513'; // Cambia el número por el que desees
    }
</script>

<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>
</body>
