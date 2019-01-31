Imports Helpers.ScriptHelper
Partial Class Admin_Offices
    Inherits System.Web.UI.Page
    Dim ObjUserBll As New BusinessLayer.Offices
    Private Sub GetOffices()
        Dim ds As Data.DataSet
        ds = ObjUserBll.GetOfficeDetails()
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GetOffices()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        btnEdit.Enabled = True
    End Sub
    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        Dim strOfficeID As String
        strOfficeID = GridView1.SelectedRow.Cells(1).Text
        If Not strOfficeID Is Nothing Then
            Response.Redirect("OfficesEdit.aspx?ID=" & strOfficeID)
        Else
            MessageBox(Page, "Please Select User")
        End If
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("OfficesEdit.aspx?ID=" & 0)
    End Sub
End Class
