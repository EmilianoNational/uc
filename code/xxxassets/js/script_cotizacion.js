function habilitarDatosCotizacion() {
    select_estado = document.getElementById("estado").value;
    select_medio = document.getElementById("medio").value;
    text_dias = document.getElementById("dias").value;
    text_edad = document.getElementById("edad").value;
    val = 0;

    if (select_estado == "") {
        val++;
    }
    if (select_medio == "") {
        val++;
    }
    if (text_dias == "") {
        val++;
    }
    if (text_edad == "") {
        val++;
    }

    if (val == 0) {
        const list_ = document.getElementById("btnDatosCotizacion");
        list_.classList.remove('disabled');
        document.getElementById("btnDatosCotizacion").classList.add("enabled");
        document.getElementById("btnDatosCotizacion").style["background-color"] = "#0276DD";
    } else {
        document.getElementById("btnDatosCotizacion").disabled = true;
    }
}

document.getElementById("estado").addEventListener("change", habilitarDatosCotizacion);
document.getElementById("medio").addEventListener("change", habilitarDatosCotizacion);
document.getElementById("dias").addEventListener("keyup", habilitarDatosCotizacion);
document.getElementById("edad").addEventListener("keyup", habilitarDatosCotizacion);
document.getElementById("btnDatosCotizacion").addEventListener("click", () => {
    //
});