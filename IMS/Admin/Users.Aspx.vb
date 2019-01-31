Imports BusinessLayer.users
Imports System.Data
Imports System.Web
Imports Helpers.ScriptHelper
Partial Class Admin_Users
    Inherits System.Web.UI.Page
    Dim ObjUserBll As New BusinessLayer.users
    Dim Dt As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'GetData()
            bindGridView()
        End If
    End Sub
    Sub GetData()
        Dt = ObjUserBll.GetUserList()
        GridView1.DataSource = Dt
        GridView1.DataBind()
    End Sub
    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        Dim strUserID As String
        strUserID = GridView1.SelectedRow.Cells(1).Text
        If Not strUserID Is Nothing Then
            Response.Redirect("UserEdit.aspx?ID=" & strUserID)
        Else
            MessageBox(Page, "Please Select User")
        End If
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("UserEdit.aspx?ID=" & 0)
    End Sub
    Protected Sub btnInactive_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInactive.Click
        Dim strUserID As String
        Dim gridviewrow As GridViewRow

        gridviewrow = GridView1.SelectedRow


        ' If Not GridView1.SelectedRow.Cells(1).Text = Nothing Then
        strUserID = GridView1.SelectedRow.Cells(1).Text
        If Not strUserID Is Nothing Then
            If ObjUserBll.InactiveUser(strUserID) Then
                MessageBox(Page, "Successfully Done")
                GetData()
            Else
                MessageBox(Page, "Successfully Done")
            End If
        Else
            MessageBox(Page, "Please Select User")
        End If
        GetData()
        'Else
        'lblError.Text = "Please Select User"
        'End If
    End Sub

    Protected Sub btnActive_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnActive.Click
        Dim strUserID As String
        strUserID = GridView1.SelectedRow.Cells(1).Text
        If Not strUserID Is Nothing Then
            If ObjUserBll.activeUser(strUserID) Then
                MessageBox(Page, "Successfully Done")
                GetData()
            Else
                MessageBox(Page, "Successfully Done")
            End If
        Else
            MessageBox(Page, "Please Select User")
        End If
        GetData()
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        bindGridView()
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        btnEdit.Enabled = True
        btnInactive.Enabled = True
        'btnDelete.Enabled = True
        btnActive.Enabled = True
    End Sub
    Public Sub bindGridView(ByVal sortExp As String, ByVal sortDir As String)
        Dim myDataView As New DataView()
        myDataView = Dt.DefaultView
        If Not String.IsNullOrEmpty(sortExp) Then
            myDataView.Sort = String.Format("{0} {1}", sortExp, sortDir)
        End If
        GridView1.DataSource = myDataView
        GridView1.DataBind()
    End Sub

    Private Function GetSortDirection(ByVal column As String) As String

        Dim sortDirection As String = "ASC"
        Dim sortExpression As String = ViewState("SortExpression")

        If Not sortExpression Is Nothing Then
            If sortExpression = column Then
                Dim lastDirection As String = ViewState("SortDirection")
                If (lastDirection <> Nothing) And (lastDirection = "ASC") Then
                    sortDirection = "DESC"
                End If
            End If
        End If
        ViewState("SortDirection") = sortDirection
        ViewState("SortExpression") = column
        Return sortDirection
    End Function
    Private Sub BindGridView()
        Dt = ObjUserBll.GetUserList()
        GridView1.DataSource = Dt
        GridView1.DataBind()
        Session("sess_table") = Dt
    End Sub
    Public Sub GridView1_Sorting(ByVal sender As Object, ByVal e As GridViewSortEventArgs)
        Dim sortExpression As String = e.SortExpression

        If GridView1.SortDirection = SortDirection.Ascending Then
            GridView1.Sort(sortExpression, SortDirection.Ascending)
        Else
            GridView1.Sort(sortExpression, SortDirection.Descending)
        End If

    End Sub
    Public Sub SortGridView(ByVal sortExpression As String, ByVal direction As String)
        ' You can cache the DataTable for improving performance
        Dim dt As DataTable
        dt = ObjUserBll.GetUsers()
        Dim dv As New DataView(dt)
        dv.Sort = sortExpression & direction
        GridView1.DataSource = dv
        GridView1.DataBind()
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
End Class
