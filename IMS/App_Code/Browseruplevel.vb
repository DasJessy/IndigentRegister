Imports System.Web

'''*****************************************************************************
Public NotInheritable Class BrowserCompatibility
    Private Sub New()
    End Sub
#Region "IsUplevel Browser property"
    Private Enum UpLevel
        chrome
        firefox
        safari
    End Enum

    Public Shared ReadOnly Property IsUplevel() As Boolean
        Get
            Dim ret As Boolean = False
            Dim _browser As String

            Try

                If HttpContext.Current Is Nothing Then
                    Return ret
                End If
                _browser = HttpContext.Current.Request.UserAgent.ToLower()

                For Each br As UpLevel In [Enum].GetValues(GetType(UpLevel))
                    If _browser.Contains(br.ToString()) Then
                        ret = True
                        Exit For
                    End If
                Next

                Return ret
            Catch
                Return ret
            End Try
        End Get
    End Property
#End Region
End Class