function habilitarDatosAsegurado() {
    text_nombre = document.getElementById("nombre").value;
    //text_fecha_nacimiento = document.getElementById("fechaNacimiento").value;
    text_direccion = document.getElementById("direccion").value;
    select_ciudad = document.getElementById("ciudad").value;
    select_estado = document.getElementById("estado").value;
    text_codigo_postal = document.getElementById("codigoPostal").value;
    text_telefono = document.getElementById("telefono").value;
    text_correo = document.getElementById("correo").value;
    text_dias = document.getElementById("dias").value;
    text_cobertura = document.getElementById("cobertura").value;
    text_hora_contratacion = document.getElementById("horaContratacion").value;
    val = 0;

    if (text_nombre == "") {
        val++;
    }
    if (text_fecha_nacimiento == "") {
        val++;
    }
    if (text_direccion == "") {
        val++;
    }
    if (select_ciudad == "") {
        val++;
    }
    if (select_estado == "") {
        val++;
    }
    if (text_codigo_postal == "") {
        val++;
    }
    if (text_telefono == "") {
        val++;
    }
    if (text_correo == "") {
        val++;
    }
    if (text_dias == "") {
        val++;
    }
    if (text_cobertura == "") {
        val++;
    }
    if (text_hora_contratacion == "") {
        val++;
    }

    if (val == 0) {
        const list_ = document.getElementById("btnDatosAsegurado");
        // const div =  document.querySelector('div');
        list_.classList.remove('disabled');
        document.getElementById("btnDatosAsegurado").classList.add("enabled");
        document.getElementById("btnDatosAsegurado").style["background-color"] = "#0276DD";
    } else {
        document.getElementById("btnDatosAsegurado").disabled = true;
    }
}
document.getElementById("nombre").addEventListener("keyup", habilitarDatosAsegurado);
/*document.getElementById("fechaNacimiento").addEventListener("keyup", habilitarDatosAsegurado);*/
document.getElementById("fechaNacimiento").addEventListener("change", habilitarDatosAsegurado);
document.getElementById("direccion").addEventListener("keyup", habilitarDatosAsegurado);
document.getElementById("ciudad").addEventListener("change", habilitarDatosAsegurado);
document.getElementById("estado").addEventListener("change", habilitarDatosAsegurado)
document.getElementById("codigoPostal").addEventListener("keyup", habilitarDatosAsegurado);
document.getElementById("telefono").addEventListener("keyup", habilitarDatosAsegurado);
document.getElementById("correo").addEventListener("keyup", habilitarDatosAsegurado);
document.getElementById("dias").addEventListener("keyup", habilitarDatosAsegurado);
document.getElementById("cobertura").addEventListener("keyup", habilitarDatosAsegurado);
document.getElementById("cobertura").addEventListener("change", habilitarDatosAsegurado);
document.getElementById("horaContratacion").addEventListener("keyup", habilitarDatosAsegurado);
document.getElementById("horaContratacion").addEventListener("change", habilitarDatosAsegurado);
document.getElementById("btnDatosAsegurado").addEventListener("click", () => {
    // alert("Todos los campos estan llenos");
    const list_ = document.getElementById("collapseOne");
    list_.classList.remove('show');

    const list2_ = document.getElementById("collapseTwo");
    list2_.classList.add('show');
    // document.getElementById('form-1').classList.add('hide-left')
    // const element = document.getElementById('collapseTwo');
    // // const element = document.querySelector(".class__name");

    // element.addEventListener("click", () => {
    //     console.log("clicked element");
    // });
});

//
function habilitarDatosVehiculo() {
    select_marca = document.getElementById("marca").value;
    select_modelo = document.getElementById("modelo").value;
    text_serie = document.getElementById("serie").value;
    text_anio = document.getElementById("anio").value;
    text_placas = document.getElementById("placas").value;
    text_marca_remolque = document.getElementById("marcaRemolque").value;
    text_serie_remolque = document.getElementById("serieRemolque").value;
    val = 0;

    if (select_marca == "") {
        val++;
    }
    if (select_modelo == "") {
        val++;
    }
    if (text_serie == "") {
        val++;
    }
    if (text_anio == "") {
        val++;
    }
    if (text_placas == "") {
        val++;
    }
    if (text_marca_remolque == "") {
        val++;
    }
    if (text_serie_remolque == "") {
        val++;
    }

    if (val == 0) {
        const list_ = document.getElementById("btnDatosVehiculo");
        list_.classList.remove('disabled');
        document.getElementById("btnDatosVehiculo").classList.add("enabled");
        document.getElementById("btnDatosVehiculo").style["background-color"] = "#0276DD";
    } else {
        document.getElementById("btnDatosVehiculo").disabled = true;
    }
}

document.getElementById("marca").addEventListener("change", habilitarDatosVehiculo);
document.getElementById("modelo").addEventListener("change", habilitarDatosVehiculo);
document.getElementById("serie").addEventListener("keyup", habilitarDatosVehiculo);
document.getElementById("anio").addEventListener("keyup", habilitarDatosVehiculo);
document.getElementById("placas").addEventListener("keyup", habilitarDatosVehiculo)
document.getElementById("marcaRemolque").addEventListener("keyup", habilitarDatosVehiculo);
document.getElementById("serieRemolque").addEventListener("keyup", habilitarDatosVehiculo);
document.getElementById("btnDatosVehiculo").addEventListener("click", () => {
    const list_ = document.getElementById("collapseTwo");
    list_.classList.remove('show');

    const list2_ = document.getElementById("collapseThree");
    list2_.classList.add('show');
});

//
function habilitarAcuerdoConformidad() {
    check_acuerdo = document.getElementById("chkViaje").checked;
    val = true;

    if (check_acuerdo == true) {
        val = false;
    }

    if (val == false) {
        const list_ = document.getElementById("btnAcuerdoConformidad");
        list_.classList.remove('disabled');
        document.getElementById("btnAcuerdoConformidad").classList.add("enabled");
        document.getElementById("btnAcuerdoConformidad").style["background-color"] = "#0276DD";
    } else {
        document.getElementById("btnAcuerdoConformidad").disabled = true;
    }
}

document.getElementById("chkViaje").addEventListener("change", habilitarAcuerdoConformidad);
document.getElementById("btnAcuerdoConformidad").addEventListener("click", () => {
    //
});