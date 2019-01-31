Imports System.Web.UI
Imports System.Text

Namespace Helpers
    ''' <summary>
    ''' Summary description for ScriptHelper.
    ''' </summary>
    Public Class ScriptHelper
        Public Sub New()
        End Sub

        Private Shared Function SetupModalDialogBox(ByVal URL As String, ByVal ReturnValueHolder As String) As String
            Return "var strReturn; strReturn=window.showModalDialog('" & URL & "',null,'status:no;dialogWidth:370px;dialogHeight:220px;dialogHide:true;help:no;scroll:no');if (strReturn != null) document.getElementById('" & ReturnValueHolder & "').value=strReturn;"
        End Function

        Private Shared Function SetupWindowClose() As String
            Return "window.close();"
        End Function

        Private Shared Function SetupWindowCloseWithReturnValue(ByVal ReturnValueHolder As String) As String
            Return "window.returnValue = document.getElementById('" & ReturnValueHolder & "').value; window.close();"
        End Function

        Public Shared Sub MessageBox(ByVal CurrentPage As Page, ByVal Message As String)
            Dim tmp As String = Message
            tmp = tmp.Replace(vbLf, " ")
            tmp = tmp.Replace(vbCr, " ")
            tmp = tmp.Replace("'", " ")

            Dim sb As New StringBuilder("")
            sb.Append("<script>")
            sb.Append(" alert('" & tmp & "');")
            sb.Append(" </script>")
            CurrentPage.RegisterStartupScript("MsgBox", sb.ToString())
        End Sub

        Public Shared Sub SetFocus(ByVal CurrentPage As Page, ByVal ControlName As String)
            Dim sb As New StringBuilder()
            sb.Append(" <script language='javascript'> ")
            sb.Append(" document.getElementById('" & ControlName & "').focus()")
            sb.Append(" </script>")
            CurrentPage.RegisterStartupScript("Focus", sb.ToString())
        End Sub

        Public Shared Sub CloseWindow(ByVal CurrentPage As Page)
            Dim sb As New StringBuilder()
            sb.Append(" <script language='javascript'> ")
            sb.Append(" window.close(); ")
            sb.Append(" </script>")
            CurrentPage.RegisterStartupScript("CloseWindow", sb.ToString())
        End Sub
        Public Function GeneratePassword() As [String]
            Dim minPassSize As Integer = 6
            Dim maxPassSize As Integer = 12
            Dim stringBuilder As New StringBuilder()
            Dim charArray As Char() = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()".ToCharArray()
            Dim newPassLength As Integer = New Random().[Next](minPassSize, maxPassSize)
            Dim character As Char
            Dim rnd As New Random(DateTime.Now.Millisecond)
            For i As Integer = 0 To newPassLength - 1
                character = charArray(rnd.[Next](0, (charArray.Length - 1)))
                stringBuilder.Append(character)
            Next
            Return stringBuilder.ToString()
        End Function
        
    End Class
End Namespace
