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
<title>Inicio</title>  
<link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/style.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="fonts/css/fontawesome-all.min.css">    
<link rel="manifest" href="_manifest.json" data-pwa-version="set_in_manifest_and_pwa_js">
<link rel="apple-touch-icon" sizes="180x180" href="app/icons/icon-192x192.png">
</head>
 
    
<body class="theme-light" data-highlight="blue2" style="background-color: #eef2f1;">
    
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
    
<div id="page">
    
    <div class="page-content" style="padding-bottom: 0;">
        
        <div class="page-title page-title-large" style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
            <div>
                <a href="index.php?t=<?=$sTarjetaEncriptada?>">
                    <img src="../assets/nationalAzul.png" alt="National Unity logo" width="107" height="74">
                </a>
            </div>
            <a href="#" data-menu="menu-main" class="header-icon header-icon-2 color-black icon-xxl"><i class="fas fa-bars" style="font-size: 30px;"></i></a>
        </div>
        <div class="card header-card" data-card-height="120" style="padding-bottom: 0;">
            <div class="card-overlay opacity-95" style="background-color: #eef2f1;;"></div>
            <div class="card-overlay dark-mode-tint"></div>
            <div class="card-bg preload-img" data-src="images/pictures/20s.jpg"></div>
        </div>

        <div style="margin-bottom: 25px;"> 
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="../assets/banner2.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="../assets/banner3.png" class="d-block w-100" alt="...">
                  </div>
                  
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        
        <!-- <div style="height:45vh"> -->

        <div class="row text-center mb-0 mt-6">
            <a href="./activa.asp?t=<?=$sTarjetaEncriptada?>" class="col-6 pe-2">
                <div class="card card-style me-0 mb-3" style="height: 196px;">
                    <h1 class="center-text pt-4 mt-2">
                        <img src="../assets/card.png" alt="Car crash"  width="60" height="60">
                    </h1>
                    <h4 class="color-theme font-600 mb-5">Activar <br> Tarjeta</h4>
                    
                </div>
            </a>
            <a href="./reportar-accidente.php?t=<?=$sTarjetaEncriptada?>" class="col-6 ps-2">
                <div class="card card-style ms-0 mb-3">
                    <h1 class="center-text pt-4 mt-2">
                        <img src="../assets/choque.png" alt="Car crash"  width="60" height="60">
                    </h1>
                    <h4 class="color-theme font-600 mb-5">Reportar <br>accidente</h4>
                    
                </div>
            </a>
            <a href="./asistencia-vial.php?t=<?=$sTarjetaEncriptada?>" class="col-6 pe-2">
                <div class="card card-style me-0 mb-3">
                    <h1 class="center-text pt-4 mt-2">
                        <img src="../assets/remolque_NU.png" alt="Grúa" width="60" height="50">
                    </h1>
                    <h4 class="color-theme font-600 mb-5">Asistencia <br>Vial</h4>
                    
                </div>
            </a>
            <a href="./vt2.aspx?t=<?=$sTarjetaEncriptada?>" class="col-6 ps-2">
                <div class="card card-style ms-0 mb-3">
                    <h1 class="center-text pt-4 mt-2">
                        <img src="../assets/poliza.png" alt="Consulta de póliza" width="35" height="51">
                    </h1>
                    <h4 class="color-theme font-600 mb-5">Consulta <br>tu póliza</h4>
                    
                </div>
            </a>
        </div>            
        <!-- </div> -->


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
            <i class="fa-ios-arrow fa fa-caret-down                           font-40"></i>
        </div>
    </div> -->

    
</div>    

<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>

</body>