
Partial Class Officer_MasterPageOfficer
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            lblUser.Text = Session("username")
        End If
    End Sub
End Class

