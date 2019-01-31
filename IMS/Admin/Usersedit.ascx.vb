Imports System.Text
Imports System.Security.Cryptography
Imports System.IO
Imports BusinessLayer
Imports System.Data
Imports Helpers.ScriptHelper
Partial Class Admin_UsersEdit
    Inherits System.Web.UI.UserControl
    Dim ObjUserBll As New BusinessLayer.users
    Dim ObjPopulate As New BusinessLayer.Populate
    Dim Dt As New DataTable
    Dim Passsword As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            Populate()
            Dim intUser As Integer
            intUser = Request.QueryString("ID")
            If intUser = 0 Then
                'MessageBox(Page, "Create User")
                'If Session("UserID") Is Nothing Then
                'Else
                '    GetUserbyID(Session("UserID"))
                'End If
            Else
                GetUserbyID(intUser)
            End If
        End If
    End Sub
    Public Sub Populate()
        txtUserName.Text = ""
        txtName.Text = ""
        txtSurname.Text = ""
        Passsword = ""
        txtTelephone.Text = ""
        txtEmail.Text = ""
        txtCell.Text = ""
        GetOffices()
        GetUserTypes()
    End Sub
    Protected Function GeneratePassword() As [String]
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
    Public Sub GetOffices()
        Try
            Dim ds As New Data.DataSet
            Dim objdata As BusinessLayer.Offices = New BusinessLayer.Offices
            ds = ObjPopulate.GetOffices
            cboOffice.DataSource = ds
            cboOffice.DataBind()
            cboOffice.Items.Add(New ListItem("Select Office", "-1"))
            cboOffice.Items.Item(cboOffice.Items.Count - 1).Selected = True
        Catch ex As Exception
            MessageBox(Page, ex.Message)
        End Try
    End Sub
   
    Public Sub GetUserTypes()
        Try
            Dim ds As New Data.DataSet
            Dim objdata As BusinessLayer.Populate = New BusinessLayer.Populate
            ds = objdata.GetUsertypes
            cboUsertypes.DataSource = ds
            cboUsertypes.DataBind()
            cboUsertypes.Items.Add(New ListItem("Select UserType", "-1"))
            cboUsertypes.Items.Item(cboUsertypes.Items.Count - 1).Selected = True
        Catch ex As Exception
            MessageBox(Page, ex.Message)
        End Try
    End Sub
    Sub GetUserbyID(ByVal intUser As Integer)

        Dt = ObjUserBll.GetUserbyID(intUser)
        If Not Dt.Rows.Count = 0 Then
            txtUserName.Text = Dt.Rows(0).Item("UserName")
            txtName.Text = Dt.Rows(0).Item("FirstName")
            txtSurname.Text = Dt.Rows(0).Item("LastName")
            Passsword = Decrypt(Dt.Rows(0).Item("Password"), "&%#@?,:*")
            cboUsertypes.SelectedValue = Dt.Rows(0).Item("UserType")
            cboOffice.SelectedValue = Dt.Rows(0).Item("Office")
            txtTelephone.Text = IIf(IsDBNull(Dt.Rows(0).Item("Telephone")), Nothing, Dt.Rows(0).Item("Telephone"))
            txtEmail.Text = IIf(IsDBNull(Dt.Rows(0).Item("Email")), Nothing, Dt.Rows(0).Item("Email"))
            txtCell.Text = IIf(IsDBNull(Dt.Rows(0).Item("Cell")), Nothing, Dt.Rows(0).Item("Cell"))
        End If
    End Sub
    Protected Sub sendEmail()
        Dim dt2 As Data.DataTable
        Dim Obj2 As New BusinessLayer.users
        dt2 = Obj2.GetuserbyEmail(txtEmail.Text)
        If dt2.Rows.Count > 0 Then
            Dim obj As New BusinessLayer.Sendmail
            Dim sbody As String
            sbody = "Dear  " & dt2.Rows(0).Item("Username") & "<br><br>An account has been set up for you to use the Indigent Management System. <br><br> Here are the details:<br><br>  Username:" & dt2.Rows(0).Item("UserName") & " <br> Password:" & Decrypt(dt2.Rows(0).Item("Password"), "&%#@?,:*") & "<br>"
            obj.Sendmail("dev@genssoft.co.za", dt2.Rows(0).Item("Email"), "User Login Details", sbody, dt2.Rows(0).Item("FirstName"))
            MessageBox(Page, "Your Account Details sent to your email Address")
        End If
    End Sub

    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Response.Redirect("Users.aspx")
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
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim intUser As Integer
        intUser = IIf(IsDBNull(Request.QueryString("ID")), 0, Request.QueryString("ID"))
        'Encrypt(txtPassword.Text, "&%#@?,:*")
        'Validation

        If txtName.Text = "" Then
            txtName.Focus()
            MessageBox(Page, "Please Enter Name")
            Exit Sub
        End If
        If txtSurname.Text = "" Then
            txtSurname.Focus()
            MessageBox(Page, "Please Enter SurnameName")
            Exit Sub
        End If
        If txtUserName.Text = "" Then
            txtUserName.Focus()
            MessageBox(Page, "Please Enter UserName")
            Exit Sub
        End If

        'If txtPassword.Text = "" Then
        '    txtPassword.Focus()
        '    MessageBox(Page, "Please Enter Password")
        '    Exit Sub
        'End If
        If cboOffice.SelectedItem.Value = -1 Then
            cboOffice.Focus()
            MessageBox(Page, "Please Select Office")
            Exit Sub
        End If
        If cboUsertypes.SelectedItem.Value = -1 Then
            cboUsertypes.Focus()
            MessageBox(Page, "Please Select usertype")
            Exit Sub
        End If
        If txtTelephone.Text = "" Then
            txtTelephone.Focus()
            MessageBox(Page, "Please Enter Telephone Number")
            Exit Sub
        End If
        If txtEmail.Text = "" Then
            txtTelephone.Focus()
            MessageBox(Page, "Please Enter Email Address")
            Exit Sub
        End If
        Dim ObjVerifyuser As New BusinessLayer.users

        If intUser = 0 Then
            Dim dtVerifyUser As New Data.DataTable
            dtVerifyUser = ObjVerifyuser.GetuserbyEmail(txtEmail.Text)
            If dtVerifyUser.Rows.Count > 0 Then
                MessageBox(Page, "This user email already exists in our directory")
                txtEmail.Focus()
                Exit Sub
            Else
                Passsword = "password"
                ObjUserBll.UpdateUser(intUser, txtUserName.Text, Encrypt(Passsword, "&%#@?,:*"), txtName.Text, txtSurname.Text, cboUsertypes.SelectedValue, dpdStatus.SelectedValue, txtTelephone.Text, txtEmail.Text, txtCell.Text, "", cboOffice.SelectedValue)
                sendEmail()
                MessageBox(Page, "Successfully Done")
            End If
        Else
            Passsword = "password"
            ObjUserBll.UpdateUser(intUser, txtUserName.Text, Encrypt(Passsword, "&%#@?,:*"), txtName.Text, txtSurname.Text, cboUsertypes.SelectedValue, dpdStatus.SelectedValue, txtTelephone.Text, txtEmail.Text, txtCell.Text, "", cboOffice.SelectedValue)
            MessageBox(Page, "Successfully Done")
        End If

    End Sub
 
End Class
