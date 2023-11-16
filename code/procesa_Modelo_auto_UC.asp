<!--#include file="header.asp"-->
<!--#include file="funciones.asp"-->
<%

iIdMarca=request.querystring("IdMarca")

if iIdMarca=0 then
%>
	<label for="marca">Modelo</label>
	<select class="form-control"  id="Descripcion" name="Descripcion" required style="color:#000000;">
		<option value="">----SIN MODELOS----</option>
	</select>
<%response.end()
End if
%>


<label for="marca">Modelo</label>
	<select class="form-control"  id="Descripcion" name="Descripcion" required style="color:#000000;">
	<option value="">----Selecciona----</option>
	<%sSQlModeloAutos="EXEC spMarcaModeloAutoUC " & iIdMarca	
		Set oModeloVehiculos = objConn.execute(sSQlModeloAutos)
		WHILE NOT oModeloVehiculos.EOF
			iIdModelo=oModeloVehiculos("IdModelo")
			sMarcaNombre=oModeloVehiculos("Modelo")
			bPermitido=cint(oModeloVehiculos("Permitido"))%>	

			<option value=<%if bPermitido then response.write(sMarcaNombre) Else response.write("0") End if%> <%if iIdModelo=idMod then%> SELECTED <%End if%>><%=sMarcaNombre%></option>
		 
			<%oModeloVehiculos.MoveNext
		wend%>
	</select>