Imports Helpers.ScriptHelper
Partial Class Admin_Roles
    Inherits System.Web.UI.Page
    Dim ObjUserBll As New BusinessLayer.Populate
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("RoleEdit.aspx")
    End Sub
    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        Dim strRoleID As String
        strRoleID = GridView1.SelectedRow.Cells(1).Text
        If Not strRoleID Is Nothing Then
            Response.Redirect("RoleEdit.aspx?ID=" & strRoleID)
        Else
            MessageBox(Page, "Please Select Role")
        End If
    End Sub
    Private Sub GetUserTypes()
        Dim ds As Data.DataSet
        ds = ObjUserBll.GetUsertypes()
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GetUserTypes()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        btnEdit.Enabled = True
        btnInactive.Enabled = True
        'btnDelete.Enabled = True
        btnActive.Enabled = True
    End Sub
    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        GetUserTypes()
    End Sub
End Class
