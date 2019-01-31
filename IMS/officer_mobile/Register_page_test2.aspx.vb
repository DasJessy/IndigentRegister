Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.TemplateControl
Imports System.Object
Imports System.Web.UI.Control
Imports System.Web.UI.Page
Imports Helpers.ScriptHelper
Imports System.Security.Cryptography
Imports System.IO
Imports System.Data
Imports BusinessLayer
Imports System.Collections
Imports System.Configuration
Imports System.Web.Security
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Data.SqlClient
Imports System.Web.HttpRuntime
Partial Class mobile_Register_page_test2
    Inherits System.Web.UI.Page
    Implements IHttpHandler
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then


            RefNo = Request.QueryString("RefNo")

            Populate()
            If RefNo = "" Then
                'Dim code As String = generateVCode(6)
                'Vcode = code.ToString()
                'RefNo = Vcode
                RefNo = 0
            Else
                txtRefno.Text = RefNo
                Vcode = RefNo
                GetMembers()
                'FirstGridViewRow()
            End If
            ' BindGrid()

            MultiView1.ActiveViewIndex = 0
            ' BindGrid()
            DropDownList2.Items.Add(New ListItem("Select Doc type", "-1"))
            DropDownList2.Items.Item(DropDownList2.Items.Count - 1).Selected = True
            ddlIndigentAppOccu.Items.Add(New ListItem("Select Applicant/occupent", "-1"))
            ddlIndigentAppOccu.Items.Item(ddlIndigentAppOccu.Items.Count - 1).Selected = True
            ddlApplicantName.Items.Add(New ListItem("Select Name", "-1"))
            ddlApplicantName.Items.Item(ddlApplicantName.Items.Count - 1).Selected = True
        End If

    End Sub
    Protected Sub step2button_Click(sender As Object, e As EventArgs) Handles step2button.Click
        Page.Validate()
        If (Page.IsValid()) Then
            MultiView1.ActiveViewIndex = 1
        End If

    End Sub
    Protected Sub btnGo_to_step3_Click(sender As Object, e As EventArgs) Handles btnGo_to_step3.Click
        Page.Validate()
        If (Page.IsValid()) Then
            MultiView1.ActiveViewIndex = 2
        End If
        BindGridOccupents()

    End Sub
    'Protected Sub btnback_to_step1_Click(sender As Object, e As EventArgs) Handles btnback_to_step1.Click
    '    Page.Validate()
    '    If (Page.IsValid()) Then
    '        MultiView1.ActiveViewIndex = 0
    '    End If


    'End Sub
    Protected Sub btnGo_to_step4_Click(sender As Object, e As EventArgs) Handles btnGo_to_step4.Click


        MultiView1.ActiveViewIndex = 3


    End Sub
    'Protected Sub btnGo_back_to_step2_Click(sender As Object, e As EventArgs) Handles btnGo_back_to_step2.Click


    '    MultiView1.ActiveViewIndex = 1



    'End Sub
    'Protected Sub btnGo_back_to_step3_Click(sender As Object, e As EventArgs) Handles btnGo_back_to_step3.Click
    '    Page.Validate()
    '    If (Page.IsValid()) Then
    '        MultiView1.ActiveViewIndex = 2
    '    End If

    'End Sub
    Protected Sub btnGo_to_step5_Click(sender As Object, e As EventArgs) Handles btnGo_to_step5.Click
        Page.Validate()
        If (Page.IsValid()) Then
            ''BindGrid()
            MultiView1.ActiveViewIndex = 4
        End If

    End Sub
    Protected Sub btnGo_to_step6_Click(sender As Object, e As EventArgs) Handles btnGo_to_step6.Click
        Page.Validate()
        If (Page.IsValid()) Then
            MultiView1.ActiveViewIndex = 5
        End If
    End Sub
    'Protected Sub btnGo_back_to_step4_Click(sender As Object, e As EventArgs) Handles btnGo_back_to_step4.Click
    '    Page.Validate()
    '    If (Page.IsValid()) Then
    '        MultiView1.ActiveViewIndex = 3
    '    End If
    'End Sub



    Protected Sub btnFinish_Click(sender As Object, e As EventArgs) Handles btnFinish.Click
        txtTotalRecipents.Text = cal_rep_total()
        Dim string_Total As String = CStr(cal_total())
        txtTotal.Text = string_Total.Replace(",", ".")
        Dim ObjVerifyuser As New BusinessLayer.Member
        Try
            Dim ObjMemberBll As New BusinessLayer.Indigent
            Dim dt As Data.DataTable
            If RefNo = 0 Or RefNo = "" Then
                dt = ObjMemberBll.AddIndigent(RefNo, cboTitle.SelectedValue, txtSurname.Text, _
                                                  txtFirstname.Text, _
                                                  txtIDnumber.Text, _
                                                  cboRace.SelectedValue, _
                                                  cboMaritalStatus.SelectedValue, _
                                                  RDesibilityStatus.SelectedValue, _
                                                  txtHtel.Text, _
                                                  txtWTel.Text, _
                                                  txtCell.Text, _
                                                  txtEmail.Text, _
                                                  txtAccountNumber.Text, _
                                                  txtERF.Text, _
                                                  txtstreet.Text, _
                                                  txtsuburb.Text, _
                                                  txtcity.Text, _
                                                  cboProvince.SelectedValue, _
                                                  txtcode.Text, _
                                                  ROwnerStatus.SelectedValue, _
                                                  ROccupierStatus.SelectedValue, _
                                                  txtAdultResidents.Text, _
                                                  txtAdultsIncome.Text, _
                                                  txtApplicantIncomePerMonth.Text, _
                                                  txtAudaltsTotalIncome.Text, _
                                                  txtRSalary.Text, _
                                                  txtSalary.Text, _
                                                  txtOldAgePensionRecipents.Text, _
                                                  txtOldAgePension.Text, _
                                                  txtDisabilityPensionRecipents.Text, _
                                                  txtDisabilityPension.Text, _
                                                  txtRetirementPensionRecipents.Text, _
                                                  txtRetirementPension.Text, _
                                                  txtInformalBusinessIncomeRecipents.Text, _
                                                  txtInformalBusinessIncome.Text, _
                                                  txtRentalRecipents.Text, _
                                                  txtRental.Text, _
                                                  txtUIFRecipents.Text, _
                                                  txtUIF.Text, _
                                                  txtOtherRecipents.Text, _
                                                  txtOther.Text, _
                                                  txtTotalRecipents.Text, _
                                                  txtTotal.Text, _
                                                  Session("USERID"))
                RefNo = dt.Rows(0).Item("RefNo")
                Session("NewComplaintNumber") = dt.Rows(0).Item("RefNo")
                Response.Redirect("Applicants_mobile.aspx")
            Else
                dt = ObjMemberBll.UpdateINDVerification(RefNo, cboIndigentType.SelectedValue, cboTitle.SelectedValue, txtSurname.Text, _
                                                 txtFirstname.Text, _
                                                 txtIDnumber.Text, _
                                                 cboRace.SelectedValue, _
                                                 cboMaritalStatus.SelectedValue, _
                                                 RDesibilityStatus.SelectedItem.Value, _
                                                 txtHtel.Text, _
                                                 txtWTel.Text, _
                                                 txtCell.Text, _
                                                 txtEmail.Text, _
                                                 txtAccountNumber.Text, _
                                                 cboWard.SelectedValue, _
                                                 txtERF.Text, _
                                                 txtstreet.Text, _
                                                 txtsuburb.Text, _
                                                 txtcity.Text, _
                                                 cboProvince.SelectedValue, _
                                                 txtcode.Text, _
                                                 ROwnerStatus.SelectedValue, _
                                                 ROccupierStatus.SelectedValue, _
                                                 txtAdultResidents.Text, _
                                                 txtAdultsIncome.Text, _
                                                 txtApplicantIncomePerMonth.Text, _
                                                 txtAudaltsTotalIncome.Text, _
                                                 txtRSalary.Text, _
                                                 txtSalary.Text, _
                                                 txtOldAgePensionRecipents.Text, _
                                                 txtOldAgePension.Text, _
                                                 txtDisabilityPensionRecipents.Text, _
                                                 txtDisabilityPension.Text, _
                                                 txtRetirementPensionRecipents.Text, _
                                                 txtRetirementPension.Text, _
                                                 txtInformalBusinessIncomeRecipents.Text, _
                                                 txtInformalBusinessIncome.Text, _
                                                 txtRentalRecipents.Text, _
                                                 txtRental.Text, _
                                                 txtUIFRecipents.Text, _
                                                 txtUIF.Text, _
                                                 txtOtherRecipents.Text, _
                                                 txtOther.Text, _
                                                 txtTotalRecipents.Text, _
                                                 txtTotal.Text, _
                                                 REmployementStatusAffidavit.SelectedValue, _
                                                 RProofOfIncomeDocuments.SelectedValue, _
                                                 RMunicipalAccountNameofTheApplicant.SelectedValue, _
                                                 RApplicantAndOccupentIDDocuments.SelectedValue, _
                                                 RPRSiteVerification.SelectedValue, _
                                                 txtPREREGISTRATIONDate.Text, _
                                                 RPRVerified.SelectedValue, _
                                                 cboPROfficer.SelectedValue, _
                                                 txtPREREGISTRATIONofficialdate.Text, _
                                                 RPOSiteVerification.SelectedValue, _
                                                 txtRPOSTREGISTRATIONDate.Text, _
                                                 RPOVerified.SelectedValue, _
                                                 cboRPOOfficer.SelectedValue, _
                                                 txtRPOofficialDate.Text, _
                                                 RNotification.SelectedValue, _
                                                 RDEBTWRITTENOFF.SelectedValue, _
                                                 txtNotificationSentoutDate.Text, _
                                                 RComments.SelectedValue, _
                                                 txtRCommentsDate.Text, _
                                                 txtCommentsNotes.Text, _
                                                 cboQualityPROfficer.SelectedValue, _
                                                 txtQualityOfficialDate.Text, _
                                                 cboApplicationStatus.SelectedValue, _
                                                 Session("USERID"))
                RefNo = dt.Rows(0).Item("RefNo")
                Session("updateComplaintNumber") = dt.Rows(0).Item("RefNo")
                Response.Redirect("Applicants_mobile.aspx")
            End If

        Catch ex As Exception

        End Try

    End Sub
    'Protected Sub btnGo_back_to_step5_Click(sender As Object, e As EventArgs) Handles btnGo_back_to_step5.Click
    '    Page.Validate()
    '    If (Page.IsValid()) Then
    '        MultiView1.ActiveViewIndex = 4
    '    End If
    'End Sub


    Dim ObjIndigent As New BusinessLayer.Indigent
    Private Property RefNo() As String
        Get
            Return ViewState("RefNo")
        End Get
        Set(ByVal value As String)
            ViewState("RefNo") = value
        End Set
    End Property
    Private Property Vcode() As String
        Get
            Return ViewState("Vcode")
        End Get
        Set(ByVal value As String)
            ViewState("Vcode") = value
        End Set
    End Property
    Protected Sub Populate()
        GetWards()
        GetIndigentTypes()
        GetTitles()
        GetPopulationGroup()
        GetMaritalStatus()
        GetOfficers()
        GetStatus()


    End Sub
    Private Sub GetIndigentTypes()
        Dim ds As Data.DataSet
        Dim ObjUserBll As New BusinessLayer.Populate
        ds = ObjUserBll.GetIndigentTypes
        cboIndigentType.DataSource = ds
        cboIndigentType.DataBind()
        cboIndigentType.Items.Add(New ListItem("Select Indigent Type", "-1"))
        cboIndigentType.Items.Item(cboIndigentType.Items.Count - 1).Selected = True

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
    Private Sub GetOfficers()
        Dim ds As Data.DataSet
        Dim ObjUserBll As New BusinessLayer.Populate
        ds = ObjUserBll.GetOfficers
        cboPROfficer.DataSource = ds
        cboPROfficer.DataBind()
        cboPROfficer.Items.Add(New ListItem("Select Official", "-1"))
        cboPROfficer.Items.Item(cboPROfficer.Items.Count - 1).Selected = True

        cboRPOOfficer.DataSource = ds
        cboRPOOfficer.DataBind()
        cboRPOOfficer.Items.Add(New ListItem("Select Official", "-1"))
        cboRPOOfficer.Items.Item(cboRPOOfficer.Items.Count - 1).Selected = True

        cboQualityPROfficer.DataSource = ds
        cboQualityPROfficer.DataBind()
        cboQualityPROfficer.Items.Add(New ListItem("Select Official", "-1"))
        cboQualityPROfficer.Items.Item(cboQualityPROfficer.Items.Count - 1).Selected = True

        'cboRPOOfficer.DataSource = ds
        'cboRPOOfficer.DataBind()
        'cboRPOOfficer.Items.Add(New ListItem("Select Official", "-1"))
        'cboRPOOfficer.Items.Item(cboPROfficer.Items.Count - 1).Selected = True

    End Sub
    Protected Sub GetTitles()
        Dim ds As Data.DataTable
        Dim ObjUserBll As New BusinessLayer.Populate
        ds = ObjUserBll.GetTitles()
        cboTitle.DataSource = ds
        cboTitle.DataBind()
        cboTitle.Items.Add(New ListItem("Select Indigent Type", "-1"))
        cboTitle.Items.Item(cboIndigentType.Items.Count - 1).Selected = True
    End Sub
    Protected Sub GetOccupents()
        Dim ds As Data.DataTable
        Dim ObjUserBll As New BusinessLayer.Populate
        ds = ObjUserBll.GetOccupents(txtIDnumber.Text)
        ddlApplicantName.DataSource = ds
        ddlApplicantName.DataBind()
    End Sub
    'Protected Sub GetComplaintHandling(ByVal CompaintID As String)
    '    Dim ds As Data.DataTable
    '    Dim ObjUserBll As New BusinessLayer.Complaints
    '    ds = ObjUserBll.GetComplaintHandling(CompaintID)
    '    grdHandling.DataSource = ds
    '    grdHandling.DataBind()
    'End Sub
    'Public Sub GetOffices()
    '    Try
    '        Dim ds As New Data.DataSet
    '        Dim objdata As BusinessLayer.Offices = New BusinessLayer.Offices
    '        ds = ObjPopulate.GetOffices
    '        cboOffice.DataSource = ds
    '        cboOffice.DataBind()
    '        cboOffice.Items.Add(New ListItem("Select Office", "-1"))
    '        cboOffice.Items.Item(cboOffice.Items.Count - 1).Selected = True
    '    Catch ex As Exception
    '        MessageBox(Page, ex.Message)
    '    End Try
    'End Sub
    Public Sub GetProvinces()
        Try
            Dim ds As New Data.DataSet
            Dim objdata As BusinessLayer.Populate = New BusinessLayer.Populate
            ds = objdata.GetProvinces
            cboProvince.DataSource = ds
            cboProvince.DataBind()
            cboProvince.Items.Add(New ListItem("Select National/Provincial", "-1"))
            cboProvince.Items.Item(cboProvince.Items.Count - 1).Selected = True
        Catch ex As Exception
            MessageBox(Page, ex.Message)
        End Try
    End Sub
    Protected Sub GetWards()
        Dim ds As Data.DataSet
        Dim ObjBll As New BusinessLayer.Populate
        ds = ObjBll.GetWards()
        cboWard.DataSource = ds
        cboWard.DataBind()
        cboWard.Items.Add(New ListItem("Select Ward", "-1"))
        cboWard.Items.Item(cboWard.Items.Count - 1).Selected = True
    End Sub
    Protected Sub GetPopulationGroup()
        Dim ds As Data.DataSet
        Dim ObjBll As New BusinessLayer.Populate
        ds = ObjBll.GetPopulationGroup
        cboRace.DataSource = ds
        cboRace.DataBind()
        cboRace.Items.Add(New ListItem("Select Population Group", "-1"))
        cboRace.Items.Item(cboRace.Items.Count - 1).Selected = True
    End Sub
    Protected Sub GetMaritalStatus()
        Dim ds As Data.DataSet
        Dim ObjBll As New BusinessLayer.Populate
        ds = ObjBll.GetMaritalStatus
        cboMaritalStatus.DataSource = ds
        cboMaritalStatus.DataBind()
        cboMaritalStatus.Items.Add(New ListItem("Select Marital Status", "-1"))
        cboMaritalStatus.Items.Item(cboMaritalStatus.Items.Count - 1).Selected = True
    End Sub
    'Protected Sub GetSentBybyDirectorate()
    '    Dim ds As Data.DataTable
    '    Dim ObjUserBll As New BusinessLayer.users
    '    ds = ObjUserBll.GetUsersByDirectorate(DirectorateID)
    '    cboSentBy.DataSource = ds
    '    cboSentBy.DataBind()
    '    cboSentBy.Items.Add(New ListItem("Select user", "-1"))
    '    cboSentBy.Items.Item(cboSentBy.Items.Count - 1).Selected = True
    'End Sub
    'Protected Sub GetDeptLogged()
    '    Dim ds As Data.DataSet
    '    ds = ObjBll.GetDepartmentDetails()
    '    cboDeptLogged.DataSource = ds
    '    cboDeptLogged.DataBind()
    '    cboDeptLogged.Items.Add(New ListItem("Select Department", "-1"))
    '    cboDeptLogged.Items.Item(cboDeptLogged.Items.Count - 1).Selected = True
    'End Sub
    'Protected Sub GetSentBy()
    '    Dim ds As Data.DataTable
    '    Dim ObjUserBll As New BusinessLayer.users
    '    ds = ObjUserBll.GetUsers()
    '    cboSentBy.DataSource = ds
    '    cboSentBy.DataBind()
    '    cboSentBy.Items.Add(New ListItem("Select user", "-1"))
    '    cboSentBy.Items.Item(cboSentBy.Items.Count - 1).Selected = True
    '    cboSentBy.SelectedValue = UserID
    'End Sub
    'Protected Sub GetComplaintNatureTypes()
    '    Dim ds As Data.DataSet
    '    Dim ObjUserBll As New BusinessLayer.Nature
    '    ds = ObjUserBll.GetComplaintNatureTypes
    '    cboGNatureTypes.DataSource = ds
    '    cboGNatureTypes.DataBind()
    '    cboGNatureTypes.Items.Add(New ListItem("Select Complaint NatureTypes", "-1"))
    '    cboGNatureTypes.Items.Item(cboGNatureTypes.Items.Count - 1).Selected = True
    'End Sub
    'Protected Sub GetComplaintStatus()
    '    Dim ds As Data.DataSet
    '    Dim ObjUserBll As New BusinessLayer.Complaints
    '    ds = ObjUserBll.GetComplaintStatus
    '    cboGStatus.DataSource = ds
    '    cboGStatus.DataBind()
    '    cboGStatus.Items.Add(New ListItem("Select Complaint Status", "-1"))
    '    cboGStatus.Items.Item(cboGStatus.Items.Count - 1).Selected = True
    'End Sub
    Protected Sub cmdAddOccupant_Click(ByVal sender As Object, ByVal e As EventArgs) Handles cmdAddOccupant.Click
        Try
            Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
            Using con As New SqlConnection(constr)
                Dim query As String = "insert into IndegentOccupantDetails(INDRelation,FirstName,LastName,IDNumber,EmployerDetails,MonthlyIncome,APPIDnumber,AccNo) values (@INDRelation,@FirstName,@LastName, @IDNumber, @EmpDetails,@MonthlyIncome,@APPIDnumber,@AccNo)"
                Using cmd As New SqlCommand(query)
                    cmd.Connection = con
                    cmd.Parameters.Add("@INDRelation", SqlDbType.VarChar).Value = txtOccRelation.Text
                    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtOCCFirstname.Text
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtOCCSurname.Text
                    cmd.Parameters.Add("@IDNumber", SqlDbType.VarChar).Value = txtOCCIDnumber.Text
                    cmd.Parameters.Add("@EmpDetails", SqlDbType.VarChar).Value = txtOCCEmployer.Text
                    Dim string_occmonthly As String = txtOCCMonthly.Text
                    cmd.Parameters.Add("@MonthlyIncome", SqlDbType.VarChar).Value = string_occmonthly.Replace(",", ".")
                    cmd.Parameters.Add("@APPIDnumber", SqlDbType.VarChar).Value = txtIDnumber.Text
                    cmd.Parameters.Add("@AccNo", SqlDbType.VarChar).Value = txtAccountNumber.Text
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                    BindGridOccupents()
                    txtOccRelation.Text = ""
                    txtOCCFirstname.Text = ""
                    txtOCCSurname.Text = ""
                    txtOCCEmployer.Text = ""
                    txtOCCMonthly.Text = ""
                    txtOCCIDnumber.Text = ""
                End Using
            End Using

        Catch Ex As Exception
            Span1.Text += "Error: <br>" + Ex.Message
        End Try

    End Sub

    'Protected Function GetClassForWizardStep(ByVal wizardStep As Object) As String
    '    Dim [step] As WizardStep = TryCast(wizardStep, WizardStep)

    '    If [step] Is Nothing Then
    '        Return ""
    '    End If
    '    Dim stepIndex As Integer = Wizard1.WizardSteps.IndexOf([step])

    '    If stepIndex < Wizard1.ActiveStepIndex Then
    '        Return "prevStep"
    '    ElseIf stepIndex > Wizard1.ActiveStepIndex Then
    '        Return "nextStep"
    '    Else
    '        Return "currentStep"
    '    End If
    'End Function
    '' Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    ''  AddHandler Wizard1.PreRender, AddressOf Wizard1_PreRender
    '' selected_tab.Value = Request.Form(selected_tab.UniqueID)




    ''End Sub
    Private Sub BindGrid()
        Dim ds As Data.DataTable
        Dim ObjUserBll As New BusinessLayer.Complaints
        ds = ObjUserBll.GetDocuments(txtIDnumber.Text)
        GridView2.DataSource = ds
        GridView2.DataBind()
    End Sub
    Private Sub BindGridOccupents()
        Dim ds As Data.DataTable
        Dim ObjUserBll As New BusinessLayer.Complaints
        ds = ObjUserBll.GetOccupents(txtIDnumber.Text)
        GridView3.DataSource = ds
        GridView3.DataBind()
    End Sub
    Private Function generateVCode(ByVal CodeLength As Integer) As String
        Dim VCode As String = String.Empty
        Dim randObj As New Random()
        Dim c As Integer = 63
        For i As Byte = 1 To CodeLength
            c = randObj.Next(35)
            If c >= 10 Then
                c += 7
            End If
            c += 48
            VCode += Chr(c)
        Next
        Return VCode
    End Function
    Protected Sub DownloadFile(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As Integer = Integer.Parse(TryCast(sender, LinkButton).CommandArgument)
        Dim bytes As Byte()
        Dim fileName As String, contentType As String
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                cmd.CommandText = "select Name, Data, ContentType from Files where Id=@Id"
                'cmd.CommandText = "select Name, Data, ContentType from Files where Id=5"
                cmd.Parameters.AddWithValue("@Id", id)
                cmd.Connection = con
                con.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    sdr.Read()
                    bytes = DirectCast(sdr("Data"), Byte())
                    contentType = sdr("ContentType").ToString()
                    fileName = sdr("Name").ToString()
                End Using
                con.Close()
            End Using
        End Using
        Response.Clear()
        Response.Buffer = True
        Response.Charset = ""
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.ContentType = contentType
        Response.BinaryWrite(bytes)
        Response.BufferOutput = True
        Response.Flush()
        Response.End()

    End Sub
    Protected Sub GridView3_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView3.RowDeleting
        Dim row As GridViewRow = DirectCast(GridView3.Rows(e.RowIndex), GridViewRow)

        Dim lblHandlingID As Label = DirectCast(row.FindControl("ID0"), Label)
        GridView3.EditIndex = -1

        Dim ObjMemberBll As New BusinessLayer.Complaints
        Dim dt As Data.DataTable
        dt = ObjMemberBll.DeleteOccupentDetails(lblHandlingID.Text)
        BindGridOccupents()
    End Sub
    'Protected Sub Wizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Wizard1.ActiveStepChanged


    '    If Wizard1.ActiveStepIndex = 0 Then
    '        'MessageBox(Page, 1)
    '    ElseIf Wizard1.ActiveStepIndex = 1 Then

    '        'MessageBox(Page, 2)
    '    ElseIf Wizard1.ActiveStepIndex = 2 Then
    '        BindGridOccupents()
    '        'MessageBox(Page, 3)
    '    ElseIf Wizard1.ActiveStepIndex = 3 Then
    '        'MessageBox(Page, 4)
    '    ElseIf Wizard1.ActiveStepIndex = 4 Then
    '        BindGrid()

    '        'MessageBox(Page, 5)
    '    End If

    'End Sub
    Protected Sub GetMembers()
        Dim ObjMember As New BusinessLayer.Indigent
        Dim dtMembers As Data.DataTable
        dtMembers = ObjMember.GetIndigentByRefno(RefNo)

        If dtMembers.Rows.Count > 0 Then
            'GrievanceID = dt.Rows(0).Item("GrievanceID")
            txtRefno.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("INDRefNo")), Nothing, dtMembers.Rows(0).Item("INDRefNo"))
            cboIndigentType.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("IndigentTypeID")), Nothing, dtMembers.Rows(0).Item("IndigentTypeID"))
            txtSurname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("LastName")), Nothing, dtMembers.Rows(0).Item("LastName"))
            txtFirstname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Firstname")), Nothing, dtMembers.Rows(0).Item("Firstname"))
            cboTitle.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("Title")), Nothing, dtMembers.Rows(0).Item("Title"))
            txtIDnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("IDNumber")), Nothing, dtMembers.Rows(0).Item("IDNumber"))
            cboRace.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("RaceID")), Nothing, dtMembers.Rows(0).Item("RaceID"))
            cboMaritalStatus.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("MaritalStatusID")), Nothing, dtMembers.Rows(0).Item("MaritalStatusID"))
            RDesibilityStatus.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("DesibilityStatus")), Nothing, dtMembers.Rows(0).Item("DesibilityStatus"))

            txtHtel.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("TelephoneNumber")), Nothing, dtMembers.Rows(0).Item("TelephoneNumber"))
            txtWTel.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("FAXnumber")), Nothing, dtMembers.Rows(0).Item("FAXnumber"))
            txtCell.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("CellNumber")), Nothing, dtMembers.Rows(0).Item("CellNumber"))
            txtEmail.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Email")), Nothing, dtMembers.Rows(0).Item("Email"))
            txtAccountNumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("AccountNumber")), Nothing, dtMembers.Rows(0).Item("AccountNumber"))
            cboWard.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("WardID")), Nothing, dtMembers.Rows(0).Item("WardID"))

            txtERF.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("ERFNo")), Nothing, dtMembers.Rows(0).Item("ERFNo"))
            txtstreet.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Address")), Nothing, dtMembers.Rows(0).Item("Address"))
            txtsuburb.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Suburb")), Nothing, dtMembers.Rows(0).Item("Suburb"))
            txtcity.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("City")), Nothing, dtMembers.Rows(0).Item("City"))
            cboProvince.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("ProvinceID")), Nothing, dtMembers.Rows(0).Item("ProvinceID"))
            txtcode.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Code")), Nothing, dtMembers.Rows(0).Item("Code"))
            ROwnerStatus.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("OwnerOfTheHouse")), Nothing, dtMembers.Rows(0).Item("OwnerOfTheHouse"))
            ROccupierStatus.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("LawfulOccupierOfTheHouse")), Nothing, dtMembers.Rows(0).Item("LawfulOccupierOfTheHouse"))
            txtAdultResidents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("TotalAdultsReside")), Nothing, dtMembers.Rows(0).Item("TotalAdultsReside"))
            txtAdultsIncome.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("TotalAdultsHaveIncome")), Nothing, dtMembers.Rows(0).Item("TotalAdultsHaveIncome"))
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("YOURTOTALINCOME")), Nothing, dtMembers.Rows(0).Item("YOURTOTALINCOME")) = Nothing) Then
                Dim string_ApplicantIncomePerMonth As String = "0,00"
                txtApplicantIncomePerMonth.Text = string_ApplicantIncomePerMonth.Replace(",", ".")
            Else
                Dim string_ApplicantIncomePerMonth As String = IIf(IsDBNull(dtMembers.Rows(0).Item("YOURTOTALINCOME")), Nothing, dtMembers.Rows(0).Item("YOURTOTALINCOME"))
                txtApplicantIncomePerMonth.Text = string_ApplicantIncomePerMonth.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("OtherAdultsTotalIncome")), Nothing, dtMembers.Rows(0).Item("OtherAdultsTotalIncome")) = Nothing) Then
                Dim string_AudaltsTotalIncome As String = "0,00"
                txtAudaltsTotalIncome.Text = string_AudaltsTotalIncome.Replace(",", ".")
            Else
                Dim string_AudaltsTotalIncome As String = IIf(IsDBNull(dtMembers.Rows(0).Item("OtherAdultsTotalIncome")), Nothing, dtMembers.Rows(0).Item("OtherAdultsTotalIncome"))
                txtAudaltsTotalIncome.Text = string_AudaltsTotalIncome.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("Salary")), Nothing, dtMembers.Rows(0).Item("Salary")) = Nothing) Then
                Dim string_Salary As String = "0,00"
                txtSalary.Text = string_Salary.Replace(",", ".")
            Else
                Dim string_Salary As String = IIf(IsDBNull(dtMembers.Rows(0).Item("Salary")), Nothing, dtMembers.Rows(0).Item("Salary"))
                txtSalary.Text = string_Salary.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("OldAgePension")), Nothing, dtMembers.Rows(0).Item("OldAgePension")) = Nothing) Then
                Dim string_oldagepen As String = "0,00"
                txtOldAgePension.Text = string_oldagepen.Replace(",", ".")
            Else

                Dim string_oldagepen As String = IIf(IsDBNull(dtMembers.Rows(0).Item("OldAgePension")), Nothing, dtMembers.Rows(0).Item("OldAgePension"))
                txtOldAgePension.Text = string_oldagepen.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("DisabilityPension")), Nothing, dtMembers.Rows(0).Item("DisabilityPension")) = Nothing) Then
                Dim string_disabilityPen As String = "0,00"
                txtDisabilityPension.Text = string_disabilityPen.Replace(",", ".")
            Else
                Dim string_disabilityPen As String = IIf(IsDBNull(dtMembers.Rows(0).Item("DisabilityPension")), Nothing, dtMembers.Rows(0).Item("DisabilityPension"))
                txtDisabilityPension.Text = string_disabilityPen.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("RetirementPension")), Nothing, dtMembers.Rows(0).Item("RetirementPension")) = Nothing) Then
                Dim string_RetirementPension As String = "0,00"
                txtRetirementPension.Text = string_RetirementPension.Replace(",", ".")
            Else
                Dim string_RetirementPension As String = IIf(IsDBNull(dtMembers.Rows(0).Item("RetirementPension")), Nothing, dtMembers.Rows(0).Item("RetirementPension"))
                txtRetirementPension.Text = string_RetirementPension.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("InformalBusinessIncome")), Nothing, dtMembers.Rows(0).Item("InformalBusinessIncome")) = Nothing) Then
                Dim string_InformalBusinessIncome As String = "0,00"
                txtInformalBusinessIncome.Text = string_InformalBusinessIncome.Replace(",", ".")
            Else
                Dim string_InformalBusinessIncome As String = IIf(IsDBNull(dtMembers.Rows(0).Item("InformalBusinessIncome")), Nothing, dtMembers.Rows(0).Item("InformalBusinessIncome"))
                txtInformalBusinessIncome.Text = string_InformalBusinessIncome.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("Rental")), Nothing, dtMembers.Rows(0).Item("Rental")) = Nothing) Then
                Dim string_Rental As String = "0,00"
                txtRental.Text = string_Rental.Replace(",", ".")
            Else
                Dim string_Rental As String = IIf(IsDBNull(dtMembers.Rows(0).Item("Rental")), Nothing, dtMembers.Rows(0).Item("Rental"))
                txtRental.Text = string_Rental.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("UIF")), Nothing, dtMembers.Rows(0).Item("UIF")) = Nothing) Then
                Dim string_UIF As String = "0,00"
                txtUIF.Text = string_UIF.Replace(",", ".")
            Else
                Dim string_UIF As String = IIf(IsDBNull(dtMembers.Rows(0).Item("UIF")), Nothing, dtMembers.Rows(0).Item("UIF"))
                txtUIF.Text = string_UIF.Replace(",", ".")
            End If
            If (IIf(IsDBNull(dtMembers.Rows(0).Item("Other")), Nothing, dtMembers.Rows(0).Item("Other")) = Nothing) Then
                Dim string_Other As String = "0,00"
                txtOther.Text = string_Other.Replace(",", ".")

            Else
                Dim string_Other As String = IIf(IsDBNull(dtMembers.Rows(0).Item("Other")), Nothing, dtMembers.Rows(0).Item("Other"))
                txtOther.Text = string_Other.Replace(",", ".")

            End If
            If (CStr(cal_total()) = Nothing) Then
                Dim string_Total As String = "0,00"
                txtTotal.Text = string_Total.Replace(",", ".")
            Else
                Dim string_Total As String = CStr(cal_total())
                txtTotal.Text = string_Total.Replace(",", ".")
            End If

            txtRSalary.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("SalaryRecipents")), Nothing, dtMembers.Rows(0).Item("SalaryRecipents"))
            txtOldAgePensionRecipents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("OldAgePensionRecipents")), Nothing, dtMembers.Rows(0).Item("OldAgePensionRecipents"))
            txtDisabilityPensionRecipents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("DisabilityPensionRecipents")), Nothing, dtMembers.Rows(0).Item("DisabilityPensionRecipents"))
            txtRetirementPensionRecipents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RetirementPensionRecipents")), Nothing, dtMembers.Rows(0).Item("RetirementPensionRecipents"))
            txtInformalBusinessIncomeRecipents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("InformalBusinessIncomeRecipents")), Nothing, dtMembers.Rows(0).Item("InformalBusinessIncomeRecipents"))
            txtRentalRecipents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RentalRecipents")), Nothing, dtMembers.Rows(0).Item("RentalRecipents"))
            txtUIFRecipents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("UIFRecipents")), Nothing, dtMembers.Rows(0).Item("UIFRecipents"))
            txtOtherRecipents.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("OtherRecipents")), Nothing, dtMembers.Rows(0).Item("OtherRecipents"))
            txtTotalRecipents.Text = cal_rep_total()



            REmployementStatusAffidavit.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("EmployementStatusAffidavit")), Nothing, dtMembers.Rows(0).Item("EmployementStatusAffidavit"))
                RProofOfIncomeDocuments.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("ProofOfIncomeDocuments")), Nothing, dtMembers.Rows(0).Item("ProofOfIncomeDocuments"))
                RMunicipalAccountNameofTheApplicant.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("MunicipalAccountNameofTheApplicant")), Nothing, dtMembers.Rows(0).Item("MunicipalAccountNameofTheApplicant"))
                RApplicantAndOccupentIDDocuments.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("ApplicantAndOccupentIDDocuments")), Nothing, dtMembers.Rows(0).Item("ApplicantAndOccupentIDDocuments"))

                RPRSiteVerification.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("PRSiteVerification")), Nothing, dtMembers.Rows(0).Item("PRSiteVerification"))
                txtPREREGISTRATIONDate.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PRSiteVerificationDate")), Nothing, dtMembers.Rows(0).Item("PRSiteVerificationDate"))
                RPRVerified.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("PRSiteVerified")), Nothing, dtMembers.Rows(0).Item("PRSiteVerified"))
                cboPROfficer.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("PRSiteVerificationOfficial")), Nothing, dtMembers.Rows(0).Item("PRSiteVerificationOfficial"))
                txtPREREGISTRATIONofficialdate.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PRSiteVerificationOfficialDate")), Nothing, dtMembers.Rows(0).Item("PRSiteVerificationOfficialDate"))

                RPOSiteVerification.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("POSiteVerification")), Nothing, dtMembers.Rows(0).Item("POSiteVerification"))
                txtRPOSTREGISTRATIONDate.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("POSiteVerificationDate")), Nothing, dtMembers.Rows(0).Item("POSiteVerificationDate"))
                RPOVerified.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("POSiteVerified")), Nothing, dtMembers.Rows(0).Item("POSiteVerified"))
                cboRPOOfficer.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("POSiteVerificationOfficial")), Nothing, dtMembers.Rows(0).Item("POSiteVerificationOfficial"))
                txtRPOofficialDate.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("POSiteVerificationOfficialDate")), Nothing, dtMembers.Rows(0).Item("POSiteVerificationOfficialDate"))

                RNotification.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("NotificationLetterSentOut")), Nothing, dtMembers.Rows(0).Item("NotificationLetterSentOut"))
                RDEBTWRITTENOFF.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("DEBTWrittenOff")), Nothing, dtMembers.Rows(0).Item("DEBTWrittenOff"))
                txtNotificationSentoutDate.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("DEBTWrittenOffDate")), Nothing, dtMembers.Rows(0).Item("DEBTWrittenOffDate"))

                RComments.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("OfficialCommentsReasonsRegisterd")), Nothing, dtMembers.Rows(0).Item("OfficialCommentsReasonsRegisterd"))
                txtRCommentsDate.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("ReasonsRegisterdDate")), Nothing, dtMembers.Rows(0).Item("ReasonsRegisterdDate"))
                txtCommentsNotes.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("OfficialComments")), Nothing, dtMembers.Rows(0).Item("OfficialComments"))

                cboQualityPROfficer.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("QualityControlOfficial")), Nothing, dtMembers.Rows(0).Item("QualityControlOfficial"))
                txtQualityOfficialDate.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("QualityControlOfficialDate")), Nothing, dtMembers.Rows(0).Item("QualityControlOfficialDate"))
                cboApplicationStatus.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("Status")), Nothing, dtMembers.Rows(0).Item("Status"))

                ' BindGrid()
            End If
    End Sub

    Private Shared Function Encrypt(ByVal strText As String, ByVal strEncrKey As String) As String
        Dim IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}
        Try
            Dim bykey() As Byte = System.Text.Encoding.UTF8.GetBytes(Left(strEncrKey, 8))
            Dim InputByteArray() As Byte = System.Text.Encoding.UTF8.GetBytes(strText)
            Dim des As New DESCryptoServiceProvider
            Dim ms As New MemoryStream
            Dim cs As New CryptoStream(ms, des.CreateEncryptor(bykey, IV), CryptoStreamMode.Write)
            cs.Write(InputByteArray, 0, InputByteArray.Length)
            cs.FlushFinalBlock()
            Return Convert.ToBase64String(ms.ToArray())
        Catch ex As Exception
            Return ex.Message
        End Try
    End Function
    Private Shared Function Decrypt(ByVal strText As String, ByVal sDecrKey As String) As String
        Dim IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}
        Dim inputByteArray(strText.Length) As Byte
        Try
            Dim byKey() As Byte = System.Text.Encoding.UTF8.GetBytes(Left(sDecrKey, 8))
            Dim des As New DESCryptoServiceProvider
            inputByteArray = Convert.FromBase64String(strText)
            Dim ms As New MemoryStream
            Dim cs As New CryptoStream(ms, des.CreateDecryptor(byKey, IV), CryptoStreamMode.Write)
            cs.Write(inputByteArray, 0, inputByteArray.Length)
            cs.FlushFinalBlock()
            Dim encoding As System.Text.Encoding = System.Text.Encoding.UTF8
            Return encoding.GetString(ms.ToArray())
        Catch ex As Exception
            Return ex.Message
        End Try
    End Function
    Public Function parseIdNo(ByVal idNo As String) As Boolean
        Try
            Dim a As Integer = 0
            For i As Integer = 0 To 5
                a += CInt(idNo.Substring(i * 2, 1))
            Next

            Dim b As Integer = 0
            For i As Integer = 0 To 5
                b = b * 10 + CInt(idNo.Substring(2 * i + 1, 1))
            Next
            b *= 2
            Dim c As Integer = 0
            Do
                c += b Mod 10
                b = Int(b / 10)
            Loop Until b <= 0
            c += a
            Dim d As Integer = 0
            d = 10 - (c Mod 10)
            If (d = 10) Then d = 0
            If d = CInt(idNo.Substring(12, 1)) Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            Return False
        End Try
    End Function


    Protected Sub ddlIndigentAppOccu_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlIndigentAppOccu.SelectedIndexChanged
        If ddlIndigentAppOccu.SelectedItem.Text = "Applicant" Then
            ddlApplicantName.Items.Clear()
            ddlApplicantName.Items.Add(New ListItem((txtFirstname.Text + " " + txtSurname.Text), txtIDnumber.Text))
        Else
            GetOccupents()
        End If
    End Sub
    Protected Sub cmdUploadDocuments_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdUploadDocuments.Click
        Dim filepath As String = Server.MapPath("~/Upload/")
        Dim uploadedFiles As HttpFileCollection = Request.Files
        Span1.Text = String.Empty

        For i As Integer = 0 To uploadedFiles.Count - 1
            Dim userPostedFile As HttpPostedFile = uploadedFiles(i)

            Try
                Dim filename As String = Path.GetFileName(userPostedFile.FileName)
                Dim Id As String = RefNo.ToString
                Dim contentType As String = userPostedFile.ContentType
                Using fs As Stream = userPostedFile.InputStream
                    Using br As New BinaryReader(fs)
                        Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
                        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
                        Using con As New SqlConnection(constr)
                            Dim query As String = "insert into Files (INDRefno,Name,ContentType,Data,APPIDnumber,AccNo,IndigentAPPMemberType,FullName,IDnumber,DocumentComments) values (@INDRefno,@Name, @ContentType, @Data,@APPIDnumber,@AccNo,@IndigentAPPMemberType,@FullName,@IDnumber,@DocumentComments)"
                            Using cmd As New SqlCommand(query)
                                cmd.Connection = con
                                cmd.Parameters.Add("@INDRefno", SqlDbType.VarChar).Value = Id
                                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename
                                cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contentType
                                cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
                                cmd.Parameters.Add("@APPIDnumber", SqlDbType.VarChar).Value = txtIDnumber.Text
                                cmd.Parameters.Add("@AccNo", SqlDbType.VarChar).Value = txtAccountNumber.Text
                                cmd.Parameters.Add("@IndigentAPPMemberType", SqlDbType.VarChar).Value = ddlIndigentAppOccu.SelectedItem.Text
                                cmd.Parameters.Add("@FullName", SqlDbType.VarChar).Value = ddlApplicantName.SelectedItem.Text
                                cmd.Parameters.Add("@IDnumber", SqlDbType.VarChar).Value = ddlApplicantName.SelectedItem.Value
                                cmd.Parameters.Add("@DocumentComments", SqlDbType.VarChar).Value = txtDocumentComments.Text
                                con.Open()
                                cmd.ExecuteNonQuery()
                                con.Close()
                            End Using
                        End Using
                    End Using
                End Using
                BindGrid()
            Catch Ex As Exception
                Span1.Text += "Error: <br>" + Ex.Message
            End Try
        Next
    End Sub

    Protected Sub GridView2_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        Dim row As GridViewRow = DirectCast(GridView2.Rows(e.RowIndex), GridViewRow)

        Dim lblHandlingID As Label = DirectCast(row.FindControl("ID"), Label)
        GridView2.EditIndex = -1

        Dim ObjMemberBll As New BusinessLayer.Complaints
        Dim dt As Data.DataTable
        dt = ObjMemberBll.DeleteFile(lblHandlingID.Text)
        BindGrid()
    End Sub


    Protected Sub calculate_total_Click(sender As Object, e As EventArgs) Handles calculate_total.Click
        txtTotal.Text = cal_total().ToString().Replace(",", ".")
        txtTotalRecipents.Text = cal_rep_total()
    End Sub
    Private Function cal_total() As Decimal
        Dim total As Decimal = 0
        total += CDec(txtSalary.Text.ToString.Replace(".", ","))
        total += CDec(txtOldAgePension.Text.ToString.Replace(".", ","))
        total += CDec(txtDisabilityPension.Text.ToString.Replace(".", ","))
        total += CDec(txtRetirementPension.Text.ToString.Replace(".", ","))
        total += CDec(txtInformalBusinessIncome.Text.ToString.Replace(".", ","))
        total += CDec(txtRental.Text.ToString.Replace(".", ","))
        total += CDec(txtUIF.Text.ToString.Replace(".", ","))
        total += CDec(txtOther.Text.ToString.Replace(".", ","))


        Return total
    End Function

    Private Function cal_rep_total() As Decimal
        If (txtRSalary.Text = Nothing) Then
            txtRSalary.Text = "0"
        End If
        If (txtOldAgePensionRecipents.Text = Nothing) Then
            txtOldAgePensionRecipents.Text = "0"
        End If
        If (txtDisabilityPensionRecipents.Text = Nothing) Then
            txtDisabilityPensionRecipents.Text = "0"
        End If
        If (txtRetirementPensionRecipents.Text = Nothing) Then
            txtRetirementPensionRecipents.Text = "0"
        End If
        If (txtInformalBusinessIncomeRecipents.Text = Nothing) Then
            txtInformalBusinessIncomeRecipents.Text = "0"
        End If
        If (txtRentalRecipents.Text = Nothing) Then
            txtRentalRecipents.Text = "0"
        End If
        If (txtUIFRecipents.Text = Nothing) Then
            txtUIFRecipents.Text = "0"
        End If
        If (txtOtherRecipents.Text = Nothing) Then
            txtOtherRecipents.Text = "0"
        End If

        Dim total As Decimal = 0
        total += CDec(txtRSalary.Text)
        total += CDec(txtOldAgePensionRecipents.Text)
        total += CDec(txtDisabilityPensionRecipents.Text)
        total += CDec(txtRetirementPensionRecipents.Text)
        total += CDec(txtInformalBusinessIncomeRecipents.Text)
        total += CDec(txtRentalRecipents.Text)
        total += CDec(txtUIFRecipents.Text)
        total += CDec(txtOtherRecipents.Text)

        Return total
    End Function
End Class
