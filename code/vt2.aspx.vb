Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports org.jivesoftware.util
Imports System.Web

Partial Class vt
    Inherits System.Web.UI.Page
    Dim oBlow As New Blowfish("R3N3A82")
    Dim oCon As New dBTools()
    Dim EsValida As Boolean = False
    Dim oData As DataSet = Nothing
    Dim oLog As New clsLogTools


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim Tarjeta As String = Request.QueryString("t")

        If Tarjeta <> "" Then
            Try
                Tarjeta = oBlow.decryptString(Tarjeta)  ''DESENCRIPTAMOS EL CODIGO (Clase BlowFish.DS(Tarjeta))
                If IsNumeric(Tarjeta) Then              ''SI ES NUMERICO ENTRA
                    Dim oData As DataSet = Nothing
                    oData = oCon.spExecDataSet("spValidaTarjeta", New SqlParameter("@Tarjeta", Tarjeta))

                    If oData IsNot Nothing Then
                        For Each iFila As DataRow In oData.Tables(0).Rows
                            lblTitulo.Text = iFila.Item("Titulo")

                            lblTarjeta.Text = Tarjeta
                            lblDescripcion.Text = iFila.Item("Mensaje")
                            lblNombre.Text = iFila.Item("Nombre")
                            lblMarca.Text = iFila.Item("Marca")
                            lblAutoDescripcion.Text = iFila.Item("Descripcion")
                            lblModelo.Text = iFila.Item("Modelo")
                            lblPlaca.Text = iFila.Item("Placa")
                            lblFechaInicio.Text = iFila.Item("FechaInicio")
                            lblFechaTerminacion.Text = iFila.Item("FechaTermino")
                        Next
                    Else
                        lblTitulo.Text = "Tarjeta con Error"
                        lblTarjeta.Text = Tarjeta
                        lblDescripcion.Text = "Error en tarjeta"
                        lblNombre.Text = "ND"
                        lblMarca.Text = "ND"
                        lblAutoDescripcion.Text = "ND"
                        lblModelo.Text = "ND"
                        lblPlaca.Text = "ND"

                    End If
                Else
                    lblTitulo.Text = "Ha ocurrido algo!!"
                    lblTarjeta.Text = "No especificada(Err:BF)"
                    lblDescripcion.Text = "Hemos confirmado que ha ocurrido un problema al recibir los datos de tu tarjeta. Vuelve a intentarlo<br> Si aun sigue presentandose el problema por favor llama a los telefonos que aparecen en tu tarjeta Unity Card."
                    lblNombre.Text = "ND"
                    lblMarca.Text = "ND"
                    lblAutoDescripcion.Text = "ND"
                    lblModelo.Text = "ND"
                    lblPlaca.Text = "ND"
                    oLog.Log("ERR:DESC:" & Tarjeta)
                End If
            Catch ex As Exception
                oLog.Log(ex.Message)
                lblTitulo.Text = "Ha ocurrido algo!!"
                lblTarjeta.Text = "No especificada"
                lblDescripcion.Text = "(BF)Hemos confirmado que ha ocurrido un problema al recibir los datos de tu tarjeta. Vuelve a intentarlo<br> Si aun sigue presentandose el problema por favor llama a los telefonos que aparecen en tu tarjeta Unity Card."
                lblNombre.Text = "ND"
                lblMarca.Text = "ND"
                lblAutoDescripcion.Text = "ND"
                lblModelo.Text = "ND"
                lblPlaca.Text = "ND"
            End Try

        Else
            lblTitulo.Text = "Ha ocurrido algo!!"
            lblTarjeta.Text = "No especificada"
            lblDescripcion.Text = "Hemos confirmado que ha ocurrido un problema al recibir los datos de tu tarjeta. Vuelve a intentarlo<br> Si aun sigue presentandose el problema por favor llama a los telefonos que aparecen en tu tarjeta Unity Card."
            lblNombre.Text = "ND"
            lblMarca.Text = "ND"
            lblAutoDescripcion.Text = "ND"
            lblModelo.Text = "ND"
            lblPlaca.Text = "ND"
        End If
         
    End Sub
End Class
