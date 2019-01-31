Imports System.Security.Cryptography
Imports System.IO
Imports System.Data
Imports BusinessLayer
Imports Helpers.ScriptHelper

Partial Class mobile_Login_mobile
    Inherits System.Web.UI.Page
    Public Property CurrentUserID() As Integer
        Get
            Return CInt(ViewState("CurrentUserID"))
        End Get
        Set(ByVal value As Integer)
            ViewState("CurrentUserID") = value
        End Set
    End Property
    Public Property CurrentUserName() As Integer
        Get
            Return CInt(ViewState("CurrentUserName"))
        End Get
        Set(ByVal value As Integer)
            ViewState("CurrentUserName") = value
        End Set
    End Property
    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim Username As String = txtUsername.Text
        Dim Password As String = txtPassword.Text
        Dim ObjUserBll As New BusinessLayer.users
        Dim UserDt As New DataTable
        Dim strStatus As String

        UserDt = ObjUserBll.GetUser(Username, Encrypt(Password.Trim(), "&%#@?,:*"))
        If UserDt.Rows.Count > 0 Then 'first check if user exists
            If UserDt.Rows(0).Item("Password").ToString = Encrypt(Password.Trim(), "&%#@?,:*") Then 'match the passwords
                strStatus = UserDt.Rows(0).Item("userStatus")
                Session("username") = Username.ToString
                Session("UserID") = UserDt.Rows(0).Item("UserID")
                Session("UserOfiiceID") = UserDt.Rows(0).Item("Office")
                Session("UserDirectorateID") = UserDt.Rows(0).Item("DirectorateID")
                CurrentUserID = UserDt.Rows(0).Item("UserID")
                If UserDt.Rows(0).Item("userType") = "1" Then
                    Response.Redirect("~/Admin/Admin.aspx")
                ElseIf UserDt.Rows(0).Item("userType") = "10" Then
                    Response.Redirect("~/officer_mobile/Main_mobile.aspx")
                ElseIf UserDt.Rows(0).Item("userType") = "3" Then
                    Response.Redirect("~/officer_mobile/Main_mobile.aspx")
                ElseIf UserDt.Rows(0).Item("userType") = "4" Then
                    Response.Redirect("~/CCC/Dashboard.aspx")
                Else
                    Response.Redirect("~/DataCapturers_Mobile/Main_mobile.aspx")
                End If
            Else
                MessageBox(Page, "Password do not match.")
            End If
        Else
            MessageBox(Page, "Please Enter Correct Login Details.")
        End If

    End Sub
    Private Shared Function Encrypt(ByVal strText As String, ByVal strEncrKey As String) As String
        Dim IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}
        Try
            Dim bykey() As Byte = System.Text.Encoding.UTF8.GetBytes(Left(strEncrKey, 8))
            Dim InputByteArray() As Byte = System.Text.Encoding.UTF8.GetBytes(strText)
            Dim des As New DESCryptoServiceProvider
            Dim ms As New MemoryStream
            Dim cs As New CryptoStream(ms, des.CreateEncryptor(bykey, IV), CryptoStreamMode.Write)
            cs.Write(InputByteArray, 0, InputByteArray.Length)
            cs.FlushFinalBlock()
            Return Convert.ToBase64String(ms.ToArray())
        Catch ex As Exception
            Return ex.Message
        End Try
    End Function
    Private Shared Function Decrypt(ByVal strText As String, ByVal sDecrKey As String) As String
        Dim IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}
        Dim inputByteArray(strText.Length) As Byte
        Try
            Dim byKey() As Byte = System.Text.Encoding.UTF8.GetBytes(Left(sDecrKey, 8))
            Dim des As New DESCryptoServiceProvider
            inputByteArray = Convert.FromBase64String(strText)
            Dim ms As New MemoryStream
            Dim cs As New CryptoStream(ms, des.CreateDecryptor(byKey, IV), CryptoStreamMode.Write)
            cs.Write(inputByteArray, 0, inputByteArray.Length)
            cs.FlushFinalBlock()
            Dim encoding As System.Text.Encoding = System.Text.Encoding.UTF8
            Return encoding.GetString(ms.ToArray())
        Catch ex As Exception
            Return ex.Message
        End Try
    End Function
    Protected Sub cmdIndigentRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdIndigentRegister.Click
        Response.Redirect("Indigentregister.aspx")
    End Sub

End Class
