Imports Helpers.ScriptHelper
Partial Class Admin_Directorates
    Inherits System.Web.UI.Page
    Dim ObjUserBll As New BusinessLayer.Directorate
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("DirectorateEdit.aspx")
    End Sub

    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        Dim strDirectorateID As String
        strDirectorateID = GridView1.SelectedRow.Cells(1).Text
        If Not strDirectorateID Is Nothing Then
            Response.Redirect("DirectorateEdit.aspx?ID=" & strDirectorateID)
        Else
            MessageBox(Page, "Please Select Directorate")
        End If
    End Sub
    'Private Sub GetProvinces()
    '    Dim ds As Data.DataSet
    '    ds = ObjUserBll.GetProvinces()
    '    GridView1.DataSource = ds
    '    GridView1.DataBind()
    'End Sub
    Private Sub GetDirectorate()
        Dim ds As Data.DataSet
        ds = ObjUserBll.GetDirectorateDetails()
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GetDirectorate()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        btnEdit.Enabled = True
    End Sub
End Class
