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
<title>Reportar accidente</title>
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
            <div class="card-body" style="background-color: #f4f4f4;">
                <h4 class="color-black mb-3">Reportar accidente</h4>
                <p class="color-black mb-1" style="font-size: 14px">
                    Pasos a seguir en caso de un Accidente:
                </p>
                <ol class="color-black mb-4" style="font-size: 14px; padding: 0; list-style: decimal;">
                    <div style="display: flex; align-items: flex-start; gap: 20px; padding-bottom: 10px; justify-content: space-between;">
                        <img src="../assets/ra1.png" alt="Location mark" width="50" height="50">
                        <li style="width: 70%;">
                            Tome nota de <span style="font-weight: 700;">LA UBICACIÓN</span> donde halla ocurido el accidente (calle, carretera, ciudad o condado, etc.).
                        </li>
                    </div>
                    <div style="display: flex; align-items: flex-start; gap: 20px; padding-bottom: 10px; justify-content: space-between;">
                        <img src="../assets/ra2.png" alt="Writing Mark" width="50" height="50">
                        <li style="width: 70%;"><span style="font-weight: 700;">RECOPILE LA MAYOR INFORMACIÓN POSIBLE</span> de los vehículos involucrados (nombre del conductor, teléfono, placas).</li>
                    </div>
                    <div style="display: flex; align-items: flex-start; gap: 20px; padding-bottom: 10px; justify-content: space-between;">
                        <img src="../assets/ra3.png" alt="Police Mark" width="50" height="50">
                        <li style="width: 70%;">Si acudiera <span style="font-weight: 700;">LA POLICÍA</span>, pida una copia del <span style="font-weight: 700;">REPORTE</span> que se levante y confirme el número del mismo.</li>
                    </div>
                    <div style="display: flex; align-items: flex-start; gap: 20px; padding-bottom: 10px; justify-content: space-between;">
                        <img src="../assets/ra1.png" alt="Camera mark" width="50" height="50">
                        <li style="width: 70%;"><span style="font-weight: 700;">TOMAR FOTOGRAFÍAS DEL ACCIDENTE INCLUYENDO: </span>Vehículo asegurado (de sus 4 ángulos), daños al vahículo asegurado, daños al vehículo afectado, al camino a vías de tránsito donde
                        ocurrió el accidente. Es muy importante tomar fotos de la póliza de seguros y licencia del afectado.</li>
                    </div>
                    <div style="display: flex; align-items: flex-start; gap: 20px; padding-bottom: 10px; justify-content: space-between;">
                        <img src="../assets/ra4.png" alt="Lupa mark" width="50" height="50">
                        <li style="width: 70%;">Si hay <span style="font-weight: 700;">TESTIGOS</span> de lo sucedido, también recabe sus datos de contacto (nombre completo, teléfono).</li>
                    </div>
                    <div style="display: flex; align-items: flex-start; gap: 20px; padding-bottom: 10px; justify-content: space-between;">
                        <img src="../assets/ra5.png" alt="Telephone mark" width="50" height="50">
                        <li style="width: 70%;"><span style="font-weight: 700;">HAGA SU REPORTE A LOS SIGUIENTES TELÉFONOS DE ATENCIÓN A SINIESTROS:</span></li>
                    </div>
                </ol>
                <div style="display: flex; gap: 10px; flex-direction: column;">
                    <div class="card card-style mb-3 ms-0 me-0 bg-white">
                        <div class="content" style="display: flex; justify-content: space-around;" onclick="noCostUSAReport()">
                            <button >
                                <img src="../assets/phone.png" alt="phone" width="64" height="64">
                            </button>
                            <div style="text-align: center;" class="mt-2">
                                <span class="" style="font-size: 14px">Sin Costo desde USA<br>1-866-329-6734</span>
                            </div>
                        </div>
                    </div>
                    <div class="card card-style mb-3 ms-0 me-0 bg-white">
                        <div class="content" style="display: flex; justify-content: space-around;" onclick="directUSAReport()">
                            <button >
                                <img src="../assets/phone.png" alt="phone" width="64" height="64">
                            </button>
                            <div style="text-align: center;" class="mt-2">
                                <span class="" style="font-size: 14px">Directo desde USA<br>512-861-0992</span>
                            </div>
                        </div>
                    </div>
                    <div class="card card-style mb-3 ms-0 me-0 bg-white">
                        <div class="content" style="display: flex; justify-content: space-around;" onclick="fromMexicoReport()">
                            <button>
                                <img src="../assets/phone.png" alt="phone" width="64" height="64">
                            </button>
                            <div style="text-align: center;" class="mt-2">
                                <span class="" style="font-size: 14px">Desde México<br>001-883-329-6734</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion mt-4 mb-4" id="accordion-2">
                    <div class="card card-style shadow-0 bg-highlight mb-1 border-white" style="background-color: #fff;">
                        <a href="https://www.nationalunity.com/national/reporte_accidente/package/html/main/" target="_blank">
                            <button class="btn accordion-btn color-white no-effect collapsed" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false">
                                Reportar accidente en línea
                            </button>
                        </a>
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
         data-menu-load="menu-main.php?t=<?=$sTarjetaEncriptada?>"
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
    function noCostUSAReport() {
      window.location.href = 'tel:+18663296734'; // Cambia el número por el que desees
    }
    function directUSAReport() {
      window.location.href = 'tel:+5128610992'; // Cambia el número por el que desees
    }
    function fromMexicoReport() {
      window.location.href = 'tel:+0018833296734'; // Cambia el número por el que desees
    }
</script>

<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>
</body>
