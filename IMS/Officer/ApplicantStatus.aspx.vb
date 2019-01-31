Imports Helpers.ScriptHelper
Partial Class Officer_ApplicantStatus
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            GetStatus()
            If Not Session("NewComplaintNumber") = "" Then
                MessageBox(Page, "Indigent Successfully Added and Indigent Refno:" & Session("NewComplaintNumber"))
                Session("NewComplaintNumber") = ""
            End If
            If Not Session("updateComplaintNumber") = "" Then
                MessageBox(Page, "Indigent Successfully updated and Indigent Refno:" & Session("updateComplaintNumber"))
                Session("updateComplaintNumber") = ""
            End If
            GetApplicants()
        End If
    End Sub
    Private Sub GetStatus()
        Dim ds As Data.DataSet
        Dim ObjUserBll As New BusinessLayer.Populate
        ds = ObjUserBll.GetStatus
        cboApplicationStatus.DataSource = ds
        cboApplicationStatus.DataBind()
        cboApplicationStatus.Items.Add(New ListItem("Select Status", "-1"))
        cboApplicationStatus.Items.Item(cboApplicationStatus.Items.Count - 1).Selected = True
    End Sub
    Private Sub GetApplicants()
        Dim dt As Data.DataTable
        Dim ObjGrievances As New BusinessLayer.Indigent
        dt = ObjGrievances.GetIndigentstatus(cboApplicationStatus.SelectedValue)
        If dt.Rows.Count > 0 Then
            grdMembers.DataSource = dt
            grdMembers.DataBind()
            grdMembers.Visible = True
        Else
            grdMembers.Visible = False
        End If
    End Sub
    'Protected Sub cmdAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdAdd.Click
    '    Response.Redirect("RegisterApplicant.aspx")
    'End Sub

    Protected Sub grdMembers_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdMembers.PageIndexChanging
        grdMembers.PageIndex = e.NewPageIndex
        Dim dt As Data.DataTable
        Dim ObjGrievances As New BusinessLayer.Indigent
        dt = ObjGrievances.GetIndigentstatus(cboApplicationStatus.SelectedItem.Text)
        If dt.Rows.Count > 0 Then
            grdMembers.DataSource = dt
            grdMembers.DataBind()
        End If
    End Sub

    Protected Sub grdMembers_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grdMembers.RowCommand
        If e.CommandName = "Profile" Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            ' Dim hd As HiddenField = CType(grdMembers.Rows(index).FindControl("Accno"), HiddenField)
            Dim strAccountNumber As String
            strAccountNumber = grdMembers.Rows(index).Cells(2).Text
            'grdMembers.SelectedRow.Cells(2).Text
            If Not strAccountNumber Is Nothing Then
                Response.Redirect("RegisterApplicant.aspx?RefNo=" & strAccountNumber)
            Else
            End If
        End If
    End Sub

    Protected Sub cmdSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSearch.Click
        GetApplicants()
    End Sub
End Class
