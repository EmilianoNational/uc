Imports Microsoft.VisualBasic
Imports System.IO

Public Class clsLogTools
    Implements System.IDisposable

    Private mFileName As String
    Private mPath As String
    'Private mDB As dBTools
    Public mDBSQL As Boolean

    Public Sub New()
        Me.New("Log.txt")
    End Sub

    Public Sub New(ByVal FileName As String)
        Me.New(FileName, HttpContext.Current.Server.MapPath("~\Log\"))
    End Sub

    Public Sub New(ByVal FileName As String, ByVal Path As String)
        Me.New(FileName, Path, False)
    End Sub

    Public Sub New(ByVal FileName As String, ByVal Path As String, ByVal dbSQL As Boolean)

        'If dbSQL Then
        '    mDB = New dBTools
        'End If

        mDBSQL = dbSQL

        Path = Path.Replace("/", "\")

        mFileName = FileName
        mPath = Path & IIf(Path.Substring(Path.Length - 1, 1) = "\", "", "\")

        Try
            MkDir()
        Catch ex As Exception
            mPath = "C:\"
        End Try
    End Sub

    Public Sub Log(ByVal strLog As String)
        Try
            Dim Cadena As String = Now().ToString("yyyyMMdd|HHmmss") & "|" & strLog
            If Not IO.File.Exists(mPath & mFileName) Then
                Dim sfWrite As StreamWriter = Nothing
                Try
                    sfWrite = IO.File.CreateText(mPath & mFileName)
                Catch ex As Exception
                    Try
                        MkDir()
                    Catch e As Exception
                        sfWrite = IO.File.CreateText("C:\" & mFileName)
                        mPath = "C:\"
                    End Try
                Finally
                    sfWrite.WriteLine(Cadena)
                    sfWrite.Close()
                    sfWrite.Dispose()
                    sfWrite = Nothing
                End Try
            Else
                File.AppendAllText(mPath & mFileName, Cadena & vbCrLf)
            End If

            '******************************************************************************
            '* Pendiente Agregar log a DbSQL
            '******************************************************************************

        Catch ex As Exception
            Throw New Exception(ex.Message, ex.InnerException)
        End Try
    End Sub

    Private Sub MkDir()
        If Not IO.Directory.Exists(mPath.Substring(0, mPath.Length - 1)) Then
            Try
                IO.Directory.CreateDirectory(mPath.Substring(0, mPath.Length - 1))
            Catch ex As Exception
                Throw ex
            End Try
        End If
    End Sub

#Region "IDisposable Support"
    Private disposedValue As Boolean ' To detect redundant calls

    ' IDisposable
    Protected Overridable Sub Dispose(ByVal disposing As Boolean)
        If Not Me.disposedValue Then
            If disposing Then
                ' TODO: dispose managed state (managed objects).
            End If

            ' TODO: free unmanaged resources (unmanaged objects) and override Finalize() below.
            ' TODO: set large fields to null.
        End If
        Me.disposedValue = True
    End Sub

    ' TODO: override Finalize() only if Dispose(ByVal disposing As Boolean) above has code to free unmanaged resources.
    'Protected Overrides Sub Finalize()
    '    ' Do not change this code.  Put cleanup code in Dispose(ByVal disposing As Boolean) above.
    '    Dispose(False)
    '    MyBase.Finalize()
    'End Sub

    ' This code added by Visual Basic to correctly implement the disposable pattern.
    Public Sub Dispose() Implements IDisposable.Dispose
        ' Do not change this code.  Put cleanup code in Dispose(ByVal disposing As Boolean) above.
        Dispose(True)
        GC.SuppressFinalize(Me)
    End Sub
#End Region

End Class
