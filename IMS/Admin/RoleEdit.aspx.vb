Imports Helpers.ScriptHelper
Partial Class Admin_RoleEdit
    Inherits System.Web.UI.Page
    Dim intRoleID As Integer
    Dim ObjBll As New BusinessLayer.Roles
    Dim Dt As New Data.DataTable
    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Response.Redirect("Roles.aspx")
    End Sub
    Public Sub UserMsgBox(ByVal sMsg As String)

        Dim sb As New StringBuilder
        Dim oFormObject As System.Web.UI.Control

        sMsg = sMsg.Replace("'", "\'")
        sMsg = sMsg.Replace(Chr(34), "\" & Chr(34))
        sMsg = sMsg.Replace(vbCrLf, "\n")
        sMsg = "<script language=javascript>alert(""" & sMsg & """)</script>"

        sb = New StringBuilder
        sb.Append(sMsg)

        For Each oFormObject In Me.Controls
            If TypeOf oFormObject Is HtmlForm Then
                Exit For
            End If
        Next
        Controls.AddAt(Controls.Count, New LiteralControl(sb.ToString()))
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            intRoleID = Request.QueryString("ID")
            If intRoleID = 0 Then
                MessageBox(Page, "Create Role")
            Else
                GetRoles(intRoleID)
            End If
        End If
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click

        If txtRole.Text = "" Then
            txtRole.Focus()
            MessageBox(Page, "Please Enter Role Description")
            Exit Sub
        End If
        ObjBll.UpdateRole(Request.QueryString("ID"), txtRole.Text)
        MessageBox(Page, "Successfully Done")
    End Sub
    Sub GetRoles(ByVal intRoleID As Integer)
        Dt = ObjBll.GetRoleDetailsBYID(intRoleID)
        If Not Dt.Rows.Count = 0 Then
            intRoleID = Dt.Rows(0).Item("UserTypeID")
            txtRole.Text = Dt.Rows(0).Item("UserTypeDesc")
        End If
    End Sub

End Class
