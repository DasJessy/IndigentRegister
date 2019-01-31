Imports Helpers.ScriptHelper
Partial Class DataCapturers_Applicantlist
    Inherits System.Web.UI.UserControl
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            If Not Session("NewComplaintNumber") = "" Then
                MessageBox(Page, "Complaint Successfully Added and Complaint Refno:" & Session("NewComplaintNumber"))
                Session("NewComplaintNumber") = ""
            End If
            If Not Session("updateComplaintNumber") = "" Then
                MessageBox(Page, "Complaint Successfully updated and Complaint Refno:" & Session("updateComplaintNumber"))
                Session("updateComplaintNumber") = ""
            End If
            GetComplaints()
        End If
    End Sub
    Private Sub GetComplaints()
        Dim ds As Data.DataTable
        Dim ObjComplaintsBll As New BusinessLayer.Member
        ds = ObjComplaintsBll.GetMembers()
        grdComplaints.DataSource = ds
        grdComplaints.DataBind()
    End Sub


    'Protected Sub cmdEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdEdit.Click
    '    If grdComplaints.Rows.Count > 0 Then
    '        Dim strComplaintID As String
    '        strComplaintID = grdComplaints.SelectedRow.Cells(1).Text
    '        If Not strComplaintID Is Nothing Then
    '            Response.Redirect("ComplaintEdit.aspx?Complaintid=" & strComplaintID)
    '        Else
    '            MessageBox(Page, "Please Select Department")
    '        End If
    '    End If
    'End Sub

    'Protected Sub cmdAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdAdd.Click
    '    Response.Redirect("ComplaintEdit.aspx?Complaintid=0")
    'End Sub

    Protected Sub grdComplaints_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grdComplaints.RowCommand
        If e.CommandName = "Profile" Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            Dim hd As HiddenField = CType(grdComplaints.Rows(index).FindControl("ComplaintId"), HiddenField)
            Dim strComplaintID As String
            strComplaintID = hd.Value
            If Not strComplaintID Is Nothing Then
                Response.Redirect("ComplaintEdit.aspx?Complaintid=" & strComplaintID)
            Else
            End If
        End If
    End Sub

    Protected Sub cmdSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSearch.Click

        Dim dt As Data.DataTable
        Dim ObjComplaints As New BusinessLayer.Complaints
        dt = ObjComplaints.GetComplaintsearch(txtComplaintREFNo.Text, txtDGmemono.Text, Session("UserID"))
        If dt.Rows.Count > 0 Then
            grdComplaints.DataSource = dt
            grdComplaints.DataBind()
        End If
    End Sub
    Protected Sub grdComplaints_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdComplaints.PageIndexChanging
        grdComplaints.PageIndex = e.NewPageIndex
        GetComplaints()
    End Sub

    Protected Sub cmdAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdAdd.Click
        Response.Redirect("RegisterApplicant.aspx?Complaintid= 0")
    End Sub
End Class
