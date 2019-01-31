Imports Helpers.ScriptHelper
Partial Class Admin_Departments
    Inherits System.Web.UI.Page
    Dim ObjUserBll As New BusinessLayer.Populate
    Dim dt As Data.DataTable
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("DepartmentEdit.aspx")
    End Sub
    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        Dim strDepartmentID As String
        strDepartmentID = GridView1.SelectedRow.Cells(1).Text
        If Not strDepartmentID Is Nothing Then
            Response.Redirect("DepartmentEdit.aspx?ID=" & strDepartmentID)
        Else
            MessageBox(Page, "Please Select Department")
        End If
    End Sub
    Private Sub Getdepartments()
        Dim ds As Data.DataSet
        ds = ObjUserBll.GetDepartmentDetails()
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Getdepartments()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        btnEdit.Enabled = True
        btnInactive.Enabled = True
        'btnDelete.Enabled = True
        btnActive.Enabled = True
    End Sub
End Class
