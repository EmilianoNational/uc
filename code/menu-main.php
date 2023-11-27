<!-- <script src="script.js"></script> -->
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

<div class="menu-items mb-4 mt-4">
    <h5 class="text-uppercase opacity-20 font-12 pl-3">Menu</h5>
    <a class="menu-item" id="nav-welcome" href="index.php?t=<?=$sTarjetaEncriptada?>">
        <i data-feather="home" data-feather-line="1" data-feather-size="16" data-feather-color="blue-dark" data-feather-bg="blue-fade-light"></i>
        <span>Home</span>
        <i class="fa fa-circle"></i>
    </a>
    <a class="menu-item" id="nav-features" href="activa.asp">
        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 35 35" fill="none" stroke="#0276DD" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-smartphone" data-feather-line="1" data-feather-size="20" data-feather-color="#0276DD" data-feather-bg="#0276DD" style="stroke-width: 1; width: 15px; height: 20px;"><rect x="5" y="2" width="14" height="20" rx="2" ry="2"></rect><line x1="12" y1="18" x2="12.01" y2="18"></line></svg>
        <span>Activar Tarjeta</span>
        <i class="fa fa-circle"></i>
    </a>
    <a class="menu-item" id="nav-pages" href="reportar-accidente.php?t=<?=$sTarjetaEncriptada?>">
        <img src="../assets/crash.png" alt="Car crash" width="15" height="15" style="margin-left: 20px;">
        <span style="padding-left: 20px;">Reportar Accidente</span>
        <i class="fa fa-circle"></i>
    </a>
    <a class="menu-item" id="nav-media" href="asistencia-vial.php?t=<?=$sTarjetaEncriptada?>">
        <img src="../assets/remolque_NU.png" alt="Grúa" width="17" height="15" style="margin-left: 20px;">
        <span style="padding-left: 20px;">Asistencia Vial</span>
        <i class="fa fa-circle"></i>
    </a>
    <a class="menu-item" id="nav-settings" href="./vt2.aspx?t=<?=$sTarjetaEncriptada?>">
        <img src="../assets/poliza.png" alt="Consulta de póliza" width="15" height="15" style="margin-left: 20px;">
        <span style="padding-left: 20px;">Consulta tu Póliza</span>
        <i class="fa fa-circle"></i>
    </a>
    <!--<a class="menu-item" href="#" class="close-menu">
        <img src="../assets/exit.png" alt="Consulta de póliza" width="15" height="15" style="margin-left: 20px;">
        <span style="padding-left: 20px;">Cerrar</span>
        <i class="fa fa-circle"></i>
    </a>-->
</div>



