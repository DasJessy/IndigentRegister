Imports Helpers.ScriptHelper
Partial Class DataCapturers_Applicants
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
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
    Private Sub GetApplicants()
        Dim dt As Data.DataTable
        Dim ObjGrievances As New BusinessLayer.Indigent
        dt = ObjGrievances.GetIndigents(txtName.Text, txtSurname.Text, txtIDnumber.Text, txtAccNo.Text)
        If dt.Rows.Count > 0 Then
            grdMembers.DataSource = dt
            grdMembers.DataBind()
            grdMembers.Visible = True
        Else
            grdMembers.Visible = False
            'grdGrievances.Visible = False
            'MessageBox(Page, "No Aggrieved Found on your search")
        End If
    End Sub
    Protected Sub cmdAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdAdd.Click
        'Dim dt As Data.DataTable
        'Dim ObjGrievances As New BusinessLayer.Grievances
        'dt = ObjGrievances.GetGreviances(txtName.Text, txtSurname.Text, txtIDnumber.Text)
        'If dt.Rows.Count > 0 Then
        '    'GridView1.DataSource = dt
        '    'GridView1.DataBind()
        'Else
        Response.Redirect("RegisterApplicant.aspx")
        'End If
    End Sub

    Protected Sub grdMembers_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdMembers.PageIndexChanging
        grdMembers.PageIndex = e.NewPageIndex
        Dim dt As Data.DataTable
        Dim ObjIndigents As New BusinessLayer.Indigent
        dt = ObjIndigents.GetIndigents(txtName.Text, txtSurname.Text, txtIDnumber.Text, txtAccNo.Text)
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
    'Protected Sub grdMembers_Sorting(sender As Object, e As GridViewSortEventArgs) Handles grdMembers.Sorting
    '    Dim sortExp As String = e.SortExpression
    '    Dim direction As String = String.Empty

    '    If SortDir.Equals(SortDirection.Ascending) Then
    '        SortDir = SortDirection.Descending
    '        direction = " DESC"
    '    Else
    '        SortDir = SortDirection.Ascending
    '        direction = " ASC"

    '    End If
    '    Dim dt As Data.DataTable
    '    Dim ObjGrievances As New BusinessLayer.Indigent
    '    dt = ObjGrievances.GetIndigents(txtName.Text, txtSurname.Text, txtIDnumber.Text, txtAccNo.Text)
    '    dt.DefaultView.Sort = sortExp + direction

    '    If dt.Rows.Count > 0 Then
    '        grdMembers.DataSource = dt
    '        grdMembers.DataBind()
    '        grdMembers.Visible = True
    '    Else
    '        grdMembers.Visible = False
    '        'grdGrievances.Visible = False
    '        'MessageBox(Page, "No Aggrieved Found on your search")
    '    End If

    'End Sub

    'Public Property SortDir As SortDirection
    '    Get
    '        If ViewState("SortDir").Equals(Nothing) Then
    '            ViewState("SortDir") = SortDirection.Ascending
    '        End If

    '        Return DirectCast(ViewState("SortDir"), SortDirection)


    '    End Get
    '    Set(value As SortDirection)
    '        ViewState("SortDir") = value


    '    End Set
    'End Property
End Class
