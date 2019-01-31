Imports Helpers.ScriptHelper
Partial Class Admin_Status
    Inherits System.Web.UI.Page
    Dim ObjUserBll As New BusinessLayer.Status
    Dim dt As Data.DataTable
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("ComplaintsStatusEdit.aspx")
    End Sub
    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        Dim strID As String
        strID = GridView1.SelectedRow.Cells(1).Text
        If Not strID Is Nothing Then
            Response.Redirect("ComplaintsStatusEdit.aspx?ID=" & strID)
        Else
            MessageBox(Page, "Please Select Status")
        End If
    End Sub
    Private Sub GetComplaintsStatuses()
        Dim ds As Data.DataSet
        ds = ObjUserBll.GetComplaintStatuses()
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GetComplaintsStatuses()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        btnEdit.Enabled = True
        btnInactive.Enabled = True
        'btnDelete.Enabled = True
        btnActive.Enabled = True
    End Sub
End Class
