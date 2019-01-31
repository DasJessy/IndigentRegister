Imports System.IO
Imports System.Data
Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class mobile_Main_mobile
    Inherits System.Web.UI.Page

    Private totalind As Integer
    Private approved As Integer
    Private pending As Integer
    Private declined As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.LoadDashboard()

        End If
    End Sub

    Private Sub LoadDashboard()

        Dim ObjMember As New BusinessLayer.Indigent
        Dim dtMembers As Data.DataTable
        dtMembers = ObjMember.GetIndigentDashboard
        If dtMembers.Rows.Count > 0 Then
            TotalIndigents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("TotalIndigents")), 0, dtMembers.Rows(0).Item("TotalIndigents"))
            totalind = CInt(TotalIndigents.Text)

            PendingIndigents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PendingIndigents")), 0, dtMembers.Rows(0).Item("PendingIndigents"))
            pending = CInt(PendingIndigents.Text)

            ApprovedIndigents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("ApprovedIndigents")), 0, dtMembers.Rows(0).Item("ApprovedIndigents"))
            approved = CInt(ApprovedIndigents.Text)

            DeclinedIndigents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("DeclinedIndigents")), 0, dtMembers.Rows(0).Item("DeclinedIndigents"))
            declined = CInt(DeclinedIndigents.Text)


        End If
        Create_Donut_graph()
    End Sub

    Protected Sub TotalIndigents_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles TotalIndigents.Click
        Dim url As String = "../Indigentsreport.aspx"
        Dim s As String = "window.open('" & url + "', 'popup_window', 'width=800,height=600,left=100,top=100,resizable=yes');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
        'Response.Redirect("../Indigentsreport.aspx")
    End Sub

    Protected Sub ApprovedIndigents_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ApprovedIndigents.Click
        Dim url As String = "../ApprovedIndigents.aspx"
        Dim s As String = "window.open('" & url + "', 'popup_window', 'width=800,height=600,left=100,top=100,resizable=yes');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
    End Sub

    Protected Sub PendingIndigents_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles PendingIndigents.Click
        Dim url As String = "../PendingIndigents.aspx"
        Dim s As String = "window.open('" & url + "', 'popup_window', 'width=800,height=600,left=100,top=100,resizable=yes');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
    End Sub

    Protected Sub DeclinedIndigents_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles DeclinedIndigents.Click
        Dim url As String = "../DeclinedIndigents.aspx"
        Dim s As String = "window.open('" & url + "', 'popup_window', 'width=800,height=600,left=100,top=100,resizable=yes');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
    End Sub
    Private Function percentage(value As Integer) As Integer
        Dim total_all As Integer
        total_all = totalind + pending + approved + declined
        Dim result As Integer = CInt((value / total_all) * 100)
        Return result
    End Function
    Private Sub Create_Donut_graph()
        Dim display_donut As String = ""
        display_donut += " <script> "
        display_donut += "new Morris.Donut({ "
        display_donut += "element: 'graph-donut',"
        display_donut += "data:["
        display_donut += "{value: " + CStr(totalind) + ", label: 'Applied Indigents " + percentage(totalind).ToString() + "%' },"
        display_donut += "{value: " + CStr(approved) + ", label: 'Approved Indigents  " + percentage(approved).ToString() + "%' },"
        display_donut += "{value: " + CStr(pending) + ", label: 'Pending Indigents  " + percentage(pending).ToString() + "%' } ,"
        display_donut += "{value: " + CStr(declined) + ", label: 'Declined Indigents  " + percentage(declined).ToString() + "%' }"
        display_donut += "],"
        display_donut += "backgroundColor: false, "
        display_donut += "labelColor:'#fff',"
        display_donut += "colors: ['#4acacb','#6a8bc0','#5ab6df','#fe8676'],"
        ' display_donut += "formatter: Function (x, data){ Return data.formatted; }"
        display_donut += "});"

        display_donut += " </script> "

        ghrap_to_display.InnerHtml = display_donut



    End Sub
End Class
