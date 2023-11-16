function habilitarDatosCheckOut() {
    text_numero_tarjeta = document.getElementById("numeroTarjeta").value;
    text_fecha_expiracion = document.getElementById("fechaExpiracion").value;
    text_nombre_tarjeta_habiente = document.getElementById("nombreTarjetaHabiente").value;
    text_ccv = document.getElementById("ccv").value;
    val = 0;

    if (text_numero_tarjeta == "") {
        val++;
    }
    if (text_fecha_expiracion == "") {
        val++;
    }
    if (text_nombre_tarjeta_habiente == "") {
        val++;
    }
    if (text_ccv == "") {
        val++;
    }

    if (val == 0) {
        const list_ = document.getElementById("btnCheckOut");
        list_.classList.remove('disabled');
        document.getElementById("btnCheckOut").classList.add("enabled");
        document.getElementById("btnCheckOut").style["background-color"] = "#0276DD";
    } else {
        document.getElementById("btnCheckOut").disabled = true;
    }
}

document.getElementById("numeroTarjeta").addEventListener("change", habilitarDatosCheckOut);
document.getElementById("fechaExpiracion").addEventListener("change", habilitarDatosCheckOut);
document.getElementById("nombreTarjetaHabiente").addEventListener("keyup", habilitarDatosCheckOut);
document.getElementById("ccv").addEventListener("keyup", habilitarDatosCheckOut);
document.getElementById("btnCheckOut").addEventListener("click", () => {
    //
});