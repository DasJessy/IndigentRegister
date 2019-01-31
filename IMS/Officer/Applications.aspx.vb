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
Partial Class Officer_Applications
    Inherits System.Web.UI.Page
    Implements IHttpHandler
    Private Property RefNo() As String
        Get
            Return (ViewState("RefNo"))
        End Get
        Set(ByVal value As String)
            ViewState("RefNo") = value
        End Set
    End Property
    Protected Sub Wizard1_PreRender(ByVal sender As Object, ByVal e As EventArgs)
        Dim SideBarList As Repeater = TryCast(Wizard1.FindControl("HeaderContainer").FindControl("SideBarList"), Repeater)
        SideBarList.DataSource = Wizard1.WizardSteps
        SideBarList.DataBind()

    End Sub
    Protected Function GetClassForWizardStep(ByVal wizardStep As Object) As String
        Dim [step] As WizardStep = TryCast(wizardStep, WizardStep)

        If [step] Is Nothing Then
            Return ""
        End If
        Dim stepIndex As Integer = Wizard1.WizardSteps.IndexOf([step])

        If stepIndex < Wizard1.ActiveStepIndex Then
            Return "prevStep"
        ElseIf stepIndex > Wizard1.ActiveStepIndex Then
            Return "nextStep"
        Else
            Return "currentStep"
        End If
    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        AddHandler Wizard1.PreRender, AddressOf Wizard1_PreRender
        If Not IsPostBack = True Then
            RefNo = Request.QueryString("RefNo")
            If (Request.QueryString("RefNo") = "") Then
                RefNo = ""
            Else
                RefNo = Request.QueryString("RefNo")
                txtRefno.Text = RefNo
                GetMembers()
                FirstGridViewRow()
            End If
        End If
    End Sub

    Protected Sub Wizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Wizard1.ActiveStepChanged
        'If Wizard1.ActiveStepIndex = "1" Then
        '    Dim NextButton As Button = Wizard1.FindControl("StepNavigationTemplateContainerID").FindControl("StepNextButton")
        '    NextButton.Enabled = False
        'End If
        'If Wizard1.ActiveStepIndex = "5" Then
        '    Dim PrevButton As Button = Wizard1.FindControl("StepNavigationTemplateContainerID").FindControl("StepPreviousButton")
        '    Dim NextButton As Button = Wizard1.FindControl("StepNavigationTemplateContainerID").FindControl("StepNextButton")
        '    If Not (NextButton Is Nothing) Then

        '        NextButton.Enabled = False

        '    End If

        '    If Not (PrevButton Is Nothing) Then

        '        PrevButton.Enabled = False
        '    End If


        'End If

        'Dim [step] As Integer = Wizard1.ActiveStepIndex

        '' Disable validation for Step 2. (index is zero-based)
        'If [step] = 1 Then
        '    If txtAccountNo.Text = "" Then
        '        MessageBox(Page, "Please Enter account number")
        '        Exit Sub
        '    End If
        '    ToggleValidation(True)

        '    'Dim nextButton As Button = DirectCast(Wizard1.FindControl("StartNavigationTemplateContainerID").FindControl("StartNextButton"), Button)
        '    'nextButton.Attributes.Add("onclick", "alert('This is the client click event');")
        'Else
        '    ' Enable validation for subsequent steps.
        '    ToggleValidation(True)
        'End If
    End Sub
    Protected Sub GetMembers()
        Dim ObjMember As New BusinessLayer.Indigent
        Dim dtMembers As Data.DataTable
        dtMembers = ObjMember.GetIndigentByRefno(RefNo)

        If dtMembers.Rows.Count > 0 Then
            'GrievanceID = dt.Rows(0).Item("GrievanceID")
            txtRefno.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("INDRefNo")), Nothing, dtMembers.Rows(0).Item("INDRefNo"))
            txtSurname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("LastName")), Nothing, dtMembers.Rows(0).Item("LastName"))
            txtFirstname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Firstname")), Nothing, dtMembers.Rows(0).Item("Firstname"))
            cboTitle.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("Title")), Nothing, dtMembers.Rows(0).Item("Title"))
            txtIDnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("IDNumber")), Nothing, dtMembers.Rows(0).Item("IDNumber"))
            cboRace.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("RaceID")), Nothing, dtMembers.Rows(0).Item("RaceID"))
            txtHtel.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("TelephoneNumber")), Nothing, dtMembers.Rows(0).Item("TelephoneNumber"))
            txtWTel.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("FAXnumber")), Nothing, dtMembers.Rows(0).Item("FAXnumber"))
            txtCell.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("CellNumber")), Nothing, dtMembers.Rows(0).Item("CellNumber"))
            txtEmail.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Email")), Nothing, dtMembers.Rows(0).Item("Email"))
            txtAccountNumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("AccountNumber")), Nothing, dtMembers.Rows(0).Item("AccountNumber"))
            txtERF.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("ERFNo")), Nothing, dtMembers.Rows(0).Item("ERFNo"))
            txtstreet.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Address")), Nothing, dtMembers.Rows(0).Item("Address"))
            'txtHstreet.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HStreet")), Nothing, dtMembers.Rows(0).Item("HStreet"))
            txtsuburb.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Suburb")), Nothing, dtMembers.Rows(0).Item("Suburb"))
            txtcity.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("City")), Nothing, dtMembers.Rows(0).Item("City"))
            cboProvince.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("ProvinceID")), Nothing, dtMembers.Rows(0).Item("ProvinceID"))
            txtcode.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Code")), Nothing, dtMembers.Rows(0).Item("Code"))
            'txtPaddress.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PAddress")), Nothing, dtMembers.Rows(0).Item("PAddress"))
            'txtPStreet.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PStreet")), Nothing, dtMembers.Rows(0).Item("PStreet"))
            'txtPsuburb.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PSuburb")), Nothing, dtMembers.Rows(0).Item("PSuburb"))
            'txtPcity.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PCity")), Nothing, dtMembers.Rows(0).Item("PCity"))
            'ddlPprovince.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("PProvince")), Nothing, dtMembers.Rows(0).Item("PProvince"))
            'txtPcode.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Pcode")), Nothing, dtMembers.Rows(0).Item("Pcode"))
            'txtRSurname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RSurname")), Nothing, dtMembers.Rows(0).Item("RSurname"))
            'txtRFirstname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RFirstname")), Nothing, dtMembers.Rows(0).Item("RFirstname"))
            'ddlRTitle.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("RTitle")), Nothing, dtMembers.Rows(0).Item("RTitle"))
            'txtRIDnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RIDnumber")), Nothing, dtMembers.Rows(0).Item("RIDnumber"))
            'txtRDOB.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RDOB")), Nothing, dtMembers.Rows(0).Item("RDOB"))
            'txtRCell.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RCell")), Nothing, dtMembers.Rows(0).Item("RCell"))
            'txtRoccupation.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Roccupation")), Nothing, dtMembers.Rows(0).Item("Roccupation"))
            'txtREmployer.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("REmployer")), Nothing, dtMembers.Rows(0).Item("REmployer"))
            'txtMAName.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MAName")), Nothing, dtMembers.Rows(0).Item("MAName"))
            'txtMnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MNumber")), Nothing, dtMembers.Rows(0).Item("MNumber"))
            'txtIOption.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("IOption")), Nothing, dtMembers.Rows(0).Item("IOption"))
            'txtDEPCode.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("DEPCode")), Nothing, dtMembers.Rows(0).Item("DEPCode"))
            'txtMMname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MMname")), Nothing, dtMembers.Rows(0).Item("MMname"))
            'txtMMIDnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MMIDnumber")), Nothing, dtMembers.Rows(0).Item("MMIDnumber"))
        End If
    End Sub
    Protected Sub Wizard1_FinishButtonClick(ByVal sender As Object, ByVal e As WizardNavigationEventArgs)
        Dim ObjVerifyuser As New BusinessLayer.Member
        Dim Medicalasidno As String
        ' Medicalasidno = txtMnumber.Text
        'MemeberID = txtMdicalaidno.Text
        'ObjVerifyuser.RegisterMember(Medicalasidno, txtFirstname.Text, txtSurname.Text, _
        '                     txtIDnumber.Text, txtEmail.Text, txtCell.Text, txtHtel.Text, Encrypt(txtMnumber.Text.Trim, "&%#@?,:*"))

        'ObjVerifyuser.RegisterMember(MemberID, txtAccountNo.Text, txtSurname.Text, txtFirstname.Text, ddlTitle.SelectedValue, txtIDnumber.Text, _
        '                             txtdob.Text, txtAge.Text, txtHtel.Text, txtWTel.Text, txtCell.Text, txtFax.Text, txtEmail.Text, txtOccupation.Text, _
        '                             txtEmployer.Text, txtHaddress.Text, txtHstreet.Text, txtHsuburb.Text, txtHcity.Text, ddlHprovince.SelectedValue, _
        '                             txtHcode.Text, txtPaddress.Text, txtPStreet.Text, txtPsuburb.Text, txtPcity.Text, ddlPprovince.SelectedItem.Text, _
        '                             txtPcode.Text, txtRSurname.Text, txtRFirstname.Text, ddlRTitle.SelectedValue, txtRIDnumber.Text, txtRDOB.Text, _
        '                             txtRCell.Text, txtRoccupation.Text, txtREmployer.Text, txtMAName.Text, txtMnumber.Text, txtIOption.Text, _
        '                             txtDEPCode.Text, txtMMname.Text, txtMMIDnumber.Text)
        Try

            Dim ObjMemberBll As New BusinessLayer.Indigent
            Dim dt As Data.DataTable

            'If txtDGmemono.Text = "" And txtNachCaseno.Text = "" Then
            '    MessageBox(Page, "Please Enter DGmemo Number or NACH Case Number")
            '    Exit Sub
            'ElseIf cboOffice.SelectedValue = "-1" Then
            '    cboOffice.Focus()
            '    MessageBox(Page, "Please select Complaint Received Office")
            '    Exit Sub
            'ElseIf cboDirectorate.SelectedValue = "-1" Then
            '    cboDirectorate.Focus()
            '    MessageBox(Page, "Please select Directorate")
            '    Exit Sub
            'ElseIf cboSentTo.SelectedValue = "-1" Then
            '    cboSentTo.Focus()
            '    MessageBox(Page, "Please select Director")
            '    Exit Sub
            'ElseIf cboSentBy.SelectedValue = "-1" Then
            '    cboSentBy.Focus()
            '    MessageBox(Page, "Please select  Sentby")
            '    Exit Sub
            'ElseIf txtDateRecevied.Text = "" Then
            '    txtDateLogged.Focus()
            '    MessageBox(Page, "Please select Date Received")
            '    Exit Sub
            'ElseIf txtDateLogged.Text = "" Then
            '    txtDateLogged.Focus()
            '    MessageBox(Page, "Please select Date Logged")
            '    Exit Sub

            'ElseIf cboProvince.SelectedValue = "-1" Then
            '    cboProvince.Focus()
            '    MessageBox(Page, "Please select National/Provincial/Municipalities/Private")
            '    Exit Sub
            'ElseIf cboProvince.SelectedItem.Text <> "PRIVATE" And cboDeptLogged.SelectedValue = "-1" Then
            '    cboDeptLogged.Focus()
            '    MessageBox(Page, "Please select  Department")
            '    Exit Sub
            'ElseIf cboGNatureTypes.SelectedValue = "-1" Then
            '    cboGNatureTypes.Focus()
            '    MessageBox(Page, "Please select  NatureTypes")
            '    Exit Sub
            'ElseIf cboGStatus.SelectedValue = "-1" Then
            '    cboGStatus.Focus()
            '    MessageBox(Page, "Please select Status")
            '    Exit Sub
            'Else
            If RefNo = 0 Then

                dt = ObjMemberBll.AddIndigent(RefNo, cboTitle.SelectedValue, txtSurname.Text, _
                                                  txtFirstname.Text, _
                                                  txtIDnumber.Text, _
                                                  "1", _
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

                'Dim ObjIndBll As New BusinessLayer.Complaints
                'Dim dt1 As Data.DataTable
                'dt1 = ObjIndBll.UpdateComplaintStatus(ComplaintID, cboGStatus.SelectedValue, txtstatus.Text, txtHandling.Text, txtHandlingdate.Text)
                'ObjGrievanceBll.GetComplaintProgress(dt.Rows(0).Item("ComplaintID"))
                'RefNo = dt.Rows(0).Item("ComplaintID")
                Session("NewComplaintNumber") = dt.Rows(0).Item("RefNo")
                Response.Redirect("Applicants.aspx")
                'sendEmailbyComplaintID(ComplaintID)
                'Response.Redirect("Complaints.aspx")
            Else
                'dt = ObjMemberBll.UpdateComplaint(ComplaintID, _
                '                                  txtComplaintRefno.Text, _
                '                                  txtNachCaseno.Text, _
                '                                  txtFileREFNo.Text, _
                '                                  txtDGmemono.Text, _
                '                                  txtSubmissionNo.Text, _
                '                                  cboOffice.SelectedValue, _
                '                                  cboDirectorate.SelectedValue, _
                '                                  cboSentBy.SelectedValue, _
                '                                  txtDateLogged.Text, _
                '                                  txtDateRecevied.Text, _
                '                                  cboSentTo.SelectedValue, _
                '                                  cboProvince.SelectedValue, _
                '                                  cboDeptLogged.SelectedValue, _
                '                                  cboAnonymous.SelectedValue, _
                '                                  cboTitles.SelectedValue, _
                '                                  txtFirstname.Text, _
                '                                  txtLastname.Text, _
                '                                  cboGNatureTypes.SelectedValue, _
                '                                  cboPriorityLevels.SelectedValue, _
                '                                  cboITypes.SelectedValue, _
                '                                  cboGStatus.SelectedValue, _
                '                                  txtHandlingdate.Text, _
                '                                  txtHandling.Text, _
                '                                  txtstatus.Text, _
                '                                  txtOrganisation.Text, _
                '                                  txtPhone.Text, _
                '                                  txtEmail.Text, _
                '                                  txtAddress.Text, _
                '                                  txtPAddress.Text, Session("USERID"), txtSummaryofcase.Text)

                'Dim ObjGrievanceBll As New BusinessLayer.Complaints
                'Dim dt1 As Data.DataTable
                'dt1 = ObjGrievanceBll.UpdateComplaintStatus(ComplaintID, cboGStatus.SelectedValue, txtstatus.Text, txtHandling.Text, txtHandlingdate.Text)
                'ObjGrievanceBll.GetComplaintProgress(dt.Rows(0).Item("ComplaintID"))
                'ComplaintID = dt.Rows(0).Item("ComplaintID")
                'Session("updateComplaintNumber") = dt.Rows(0).Item("ComplaintRefno")
                'Response.Redirect("Complaints.aspx")
                '**************************************************************************
                'dt = ObjMemberBll.UpdateMember("", txtFirstname.Text, txtSurname.Text, txtIDnumber.Text, txtAccountNumber.Text, cboMaritalStatus.SelectedValue, cboRace.SelectedValue, txtERF.Text, txtsuburb.Text, txtcity.Text, cboProvince.SelectedValue, txtcode.Text, txtHtel.Text, txtWTel.Text, txtCell.Text, txtEmail.Text)

                'If dt.Rows.Count > 0 Then
                '    Dim Objindigent As New BusinessLayer.Indigent
                '    Dim MemberID As Integer
                '    Dim dt1 As Data.DataTable
                '    Session("MemberID") = dt.Rows(0).Item("MemberID")
                '    MemberID = dt.Rows(0).Item("MemberID")
                '    'dt1 = Objindigent.GetGreviancesByMemberID(MemberID, Session("UserDirectorateID"))
                '    'If dt1.Rows.Count > 0 Then
                '    '    Response.Redirect("grievances.aspx?Memberid=" & MemberID)
                '    'Else
                '    '    Response.Redirect("grievanceEdit.aspx?Memberid=" & MemberID)
                '    'End If
                'End If
                MessageBox(Page, "Successfully Done")
            End If

        Catch ex As Exception

        End Try





        'Response.Redirect("Login.aspx")
        'Wizard1.Visible = False
    End Sub
    'Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
    '    Try

    '        Dim ObjMemberBll As New BusinessLayer.Complaints
    '        Dim dt As Data.DataTable

    '        If txtDGmemono.Text = "" And txtNachCaseno.Text = "" Then
    '            MessageBox(Page, "Please Enter DGmemo Number or NACH Case Number")
    '            Exit Sub
    '        ElseIf cboOffice.SelectedValue = "-1" Then
    '            cboOffice.Focus()
    '            MessageBox(Page, "Please select Complaint Received Office")
    '            Exit Sub
    '        ElseIf cboDirectorate.SelectedValue = "-1" Then
    '            cboDirectorate.Focus()
    '            MessageBox(Page, "Please select Directorate")
    '            Exit Sub
    '        ElseIf cboSentTo.SelectedValue = "-1" Then
    '            cboSentTo.Focus()
    '            MessageBox(Page, "Please select Director")
    '            Exit Sub
    '        ElseIf cboSentBy.SelectedValue = "-1" Then
    '            cboSentBy.Focus()
    '            MessageBox(Page, "Please select  Sentby")
    '            Exit Sub
    '        ElseIf txtDateRecevied.Text = "" Then
    '            txtDateLogged.Focus()
    '            MessageBox(Page, "Please select Date Received")
    '            Exit Sub
    '        ElseIf txtDateLogged.Text = "" Then
    '            txtDateLogged.Focus()
    '            MessageBox(Page, "Please select Date Logged")
    '            Exit Sub

    '        ElseIf cboProvince.SelectedValue = "-1" Then
    '            cboProvince.Focus()
    '            MessageBox(Page, "Please select National/Provincial/Municipalities/Private")
    '            Exit Sub
    '        ElseIf cboProvince.SelectedItem.Text <> "PRIVATE" And cboDeptLogged.SelectedValue = "-1" Then
    '            cboDeptLogged.Focus()
    '            MessageBox(Page, "Please select  Department")
    '            Exit Sub
    '        ElseIf cboGNatureTypes.SelectedValue = "-1" Then
    '            cboGNatureTypes.Focus()
    '            MessageBox(Page, "Please select  NatureTypes")
    '            Exit Sub
    '        ElseIf cboGStatus.SelectedValue = "-1" Then
    '            cboGStatus.Focus()
    '            MessageBox(Page, "Please select Status")
    '            Exit Sub
    '        ElseIf ComplaintID = 0 Then

    '            dt = ObjMemberBll.AddComplaint(txtNachCaseno.Text, txtFileREFNo.Text, _
    '                                              txtDGmemono.Text, _
    '                                              txtSubmissionNo.Text, _
    '                                              cboOffice.SelectedValue, _
    '                                              cboDirectorate.SelectedValue, _
    '                                              cboSentBy.SelectedValue, _
    '                                              txtDateLogged.Text, _
    '                                              txtDateRecevied.Text, _
    '                                              cboSentTo.SelectedValue, _
    '                                              cboProvince.SelectedValue, _
    '                                              cboDeptLogged.SelectedValue, _
    '                                              cboAnonymous.SelectedValue, _
    '                                              cboTitles.SelectedValue, _
    '                                              txtFirstName.Text, _
    '                                              txtLastname.Text, _
    '                                              cboGNatureTypes.SelectedValue, _
    '                                              cboPriorityLevels.SelectedValue, _
    '                                              cboITypes.SelectedValue, _
    '                                              cboGStatus.SelectedValue, _
    '                                              txtHandlingdate.Text, _
    '                                              txtHandling.Text, _
    '                                              txtstatus.Text, _
    '                                              txtOrganisation.Text, _
    '                                              txtPhone.Text, _
    '                                              txtEmail.Text, _
    '                                              txtAddress.Text, _
    '                                              txtPAddress.Text, Session("USERID"), txtSummaryofcase.Text)
    '            ComplaintID = dt.Rows(0).Item("ComplaintID")

    '            Dim ObjGrievanceBll As New BusinessLayer.Complaints
    '            Dim dt1 As Data.DataTable
    '            dt1 = ObjGrievanceBll.UpdateComplaintStatus(ComplaintID, cboGStatus.SelectedValue, txtstatus.Text, txtHandling.Text, txtHandlingdate.Text)
    '            ObjGrievanceBll.GetComplaintProgress(dt.Rows(0).Item("ComplaintID"))
    '            ComplaintID = dt.Rows(0).Item("ComplaintID")
    '            Session("NewComplaintNumber") = dt.Rows(0).Item("ComplaintRefNo")
    '            sendEmailbyComplaintID(ComplaintID)
    '            Response.Redirect("Complaints.aspx")
    '        Else
    '            dt = ObjMemberBll.UpdateComplaint(ComplaintID, _
    '                                              txtComplaintRefno.Text, _
    '                                              txtNachCaseno.Text, _
    '                                              txtFileREFNo.Text, _
    '                                              txtDGmemono.Text, _
    '                                              txtSubmissionNo.Text, _
    '                                              cboOffice.SelectedValue, _
    '                                              cboDirectorate.SelectedValue, _
    '                                              cboSentBy.SelectedValue, _
    '                                              txtDateLogged.Text, _
    '                                              txtDateRecevied.Text, _
    '                                              cboSentTo.SelectedValue, _
    '                                              cboProvince.SelectedValue, _
    '                                              cboDeptLogged.SelectedValue, _
    '                                              cboAnonymous.SelectedValue, _
    '                                              cboTitles.SelectedValue, _
    '                                              txtFirstName.Text, _
    '                                              txtLastname.Text, _
    '                                              cboGNatureTypes.SelectedValue, _
    '                                              cboPriorityLevels.SelectedValue, _
    '                                              cboITypes.SelectedValue, _
    '                                              cboGStatus.SelectedValue, _
    '                                              txtHandlingdate.Text, _
    '                                              txtHandling.Text, _
    '                                              txtstatus.Text, _
    '                                              txtOrganisation.Text, _
    '                                              txtPhone.Text, _
    '                                              txtEmail.Text, _
    '                                              txtAddress.Text, _
    '                                              txtPAddress.Text, Session("USERID"), txtSummaryofcase.Text)

    '            Dim ObjGrievanceBll As New BusinessLayer.Complaints
    '            Dim dt1 As Data.DataTable
    '            dt1 = ObjGrievanceBll.UpdateComplaintStatus(ComplaintID, cboGStatus.SelectedValue, txtstatus.Text, txtHandling.Text, txtHandlingdate.Text)
    '            ObjGrievanceBll.GetComplaintProgress(dt.Rows(0).Item("ComplaintID"))
    '            ComplaintID = dt.Rows(0).Item("ComplaintID")
    '            Session("updateComplaintNumber") = dt.Rows(0).Item("ComplaintRefno")
    '            Response.Redirect("Complaints.aspx")
    '        End If

    '    Catch ex As Exception

    '    End Try
    'End Sub
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
    'Protected Sub Wizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As EventArgs)
    '    Dim [step] As Integer = Wizard1.ActiveStepIndex

    '    ' Disable validation for Step 2. (index is zero-based)
    '    If [step] = 1 Then
    '        ToggleValidation(False)
    '    Else
    '        ' Enable validation for subsequent steps.
    '        ToggleValidation(True)
    '    End If
    'End Sub
    Private Sub ToggleValidation(ByVal flag As Boolean)
        Dim stepNavTemplate As WebControl = TryCast(Me.Wizard1.FindControl("StepNavigationTemplateContainerID"), WebControl)
        If stepNavTemplate IsNot Nothing Then
            Dim b As Button = TryCast(stepNavTemplate.FindControl("StepNextButton"), Button)
            If b IsNot Nothing Then
                b.CausesValidation = flag
            End If
        End If

    End Sub
    Private Sub FirstGridViewRow()
        Dim dt As New DataTable()
        Dim dr As DataRow = Nothing
        dt.Columns.Add(New DataColumn("RowNumber", GetType(String)))
        dt.Columns.Add(New DataColumn("Col1", GetType(String)))
        dt.Columns.Add(New DataColumn("Col2", GetType(String)))
        dt.Columns.Add(New DataColumn("Col3", GetType(String)))
        dt.Columns.Add(New DataColumn("Col4", GetType(String)))
        dt.Columns.Add(New DataColumn("Col5", GetType(String)))
        dt.Columns.Add(New DataColumn("Col6", GetType(String)))
        dr = dt.NewRow()
        dr("RowNumber") = 1
        dr("Col1") = String.Empty
        dr("Col2") = String.Empty
        dr("Col3") = String.Empty
        dr("Col4") = String.Empty
        dr("Col5") = String.Empty
        dr("Col6") = String.Empty
        dt.Rows.Add(dr)

        ViewState("CurrentTable") = dt


        GridView1.DataSource = dt
        GridView1.DataBind()


        Dim txn As TextBox = DirectCast(GridView1.Rows(0).Cells(1).FindControl("txtName"), TextBox)
        txn.Focus()
        Dim btnAdd As Button = DirectCast(GridView1.FooterRow.Cells(5).FindControl("ButtonAdd"), Button)

    End Sub
    Private Sub AddNewRow()
        Dim rowIndex As Integer = 0

        If ViewState("CurrentTable") IsNot Nothing Then
            Dim dtCurrentTable As DataTable = DirectCast(ViewState("CurrentTable"), DataTable)
            Dim drCurrentRow As DataRow = Nothing
            If dtCurrentTable.Rows.Count > 0 Then
                For i As Integer = 1 To dtCurrentTable.Rows.Count
                    Dim TextBoxName As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(1).FindControl("txtName"), TextBox)
                    Dim TextBoxTelephone As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(2).FindControl("txtTelephone"), TextBox)
                    Dim TextBoxEmail As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(3).FindControl("txtemail"), TextBox)
                    Dim TextBoxCostcode As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(4).FindControl("txtPIDnumber"), TextBox)
                    Dim TextBoxEmployer As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(5).FindControl("txtEMPLOYER"), TextBox)
                    Dim TextBoxMonthlyIncome As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(6).FindControl("txtMonthly"), TextBox)

                    'Dim DrpQualification As DropDownList = DirectCast(GridView1.Rows(rowIndex).Cells(5).FindControl("drpQualification"), DropDownList)
                    drCurrentRow = dtCurrentTable.NewRow()
                    drCurrentRow("RowNumber") = i + 1

                    dtCurrentTable.Rows(i - 1)("Col1") = TextBoxName.Text
                    dtCurrentTable.Rows(i - 1)("Col2") = TextBoxTelephone.Text
                    dtCurrentTable.Rows(i - 1)("Col3") = TextBoxEmail.Text
                    dtCurrentTable.Rows(i - 1)("Col4") = TextBoxCostcode.Text
                    dtCurrentTable.Rows(i - 1)("Col5") = TextBoxEmployer.Text
                    dtCurrentTable.Rows(i - 1)("Col6") = TextBoxMonthlyIncome.Text
                    'dtCurrentTable.Rows(i - 1)("Col5") = DrpQualification.SelectedValue
                    rowIndex += 1
                Next
                dtCurrentTable.Rows.Add(drCurrentRow)
                ViewState("CurrentTable") = dtCurrentTable

                GridView1.DataSource = dtCurrentTable
                GridView1.DataBind()

                Dim txn As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(1).FindControl("txtName"), TextBox)
                ' txn.Focus;
                txn.Focus()
            End If
        Else
            Response.Write("ViewState is null")
        End If
        SetPreviousData()
    End Sub
    Private Sub SetPreviousData()
        Dim rowIndex As Integer = 0
        If ViewState("CurrentTable") IsNot Nothing Then
            Dim dt As DataTable = DirectCast(ViewState("CurrentTable"), DataTable)
            If dt.Rows.Count > 0 Then
                For i As Integer = 0 To dt.Rows.Count - 1
                    Dim TextBoxName As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(1).FindControl("txtName"), TextBox)
                    Dim TextBoxTelephone As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(2).FindControl("txtTelephone"), TextBox)
                    Dim TextBoxEmail As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(3).FindControl("txtemail"), TextBox)
                    Dim TextBoxCostcode As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(4).FindControl("txtPIDnumber"), TextBox)
                    Dim TextBoxEmployer As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(5).FindControl("txtEMPLOYER"), TextBox)
                    Dim TextBoxMonthlyIncome As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(6).FindControl("txtMonthly"), TextBox)

                    GridView1.Rows(i).Cells(0).Text = Convert.ToString(i + 1)
                    TextBoxName.Text = dt.Rows(i)("Col1").ToString()
                    TextBoxTelephone.Text = dt.Rows(i)("Col2").ToString()
                    TextBoxEmail.Text = dt.Rows(i)("Col3").ToString()
                    TextBoxCostcode.Text = dt.Rows(i)("Col4").ToString()
                    TextBoxEmployer.Text = dt.Rows(i)("Col5").ToString()
                    TextBoxMonthlyIncome.Text = dt.Rows(i)("Col6").ToString()
                    'DrpQualification.SelectedValue = dt.Rows(i)("Col5").ToString()
                    rowIndex += 1
                Next
            End If
        End If
    End Sub
    Protected Sub ButtonAdd_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonAdd.Click
        AddNewRow()
    End Sub
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)
        SetRowData()
        If ViewState("CurrentTable") IsNot Nothing Then
            Dim dt As DataTable = DirectCast(ViewState("CurrentTable"), DataTable)
            Dim drCurrentRow As DataRow = Nothing
            Dim rowIndex As Integer = Convert.ToInt32(e.RowIndex)
            If dt.Rows.Count > 1 Then
                dt.Rows.Remove(dt.Rows(rowIndex))
                drCurrentRow = dt.NewRow()
                ViewState("CurrentTable") = dt
                GridView1.DataSource = dt
                GridView1.DataBind()

                For i As Integer = 0 To GridView1.Rows.Count - 2
                    GridView1.Rows(i).Cells(0).Text = Convert.ToString(i + 1)
                Next
                SetPreviousData()
            End If
        End If
    End Sub
    Private Sub SetRowData()
        Dim rowIndex As Integer = 0

        If ViewState("CurrentTable") IsNot Nothing Then
            Dim dtCurrentTable As DataTable = DirectCast(ViewState("CurrentTable"), DataTable)
            Dim drCurrentRow As DataRow = Nothing
            If dtCurrentTable.Rows.Count > 0 Then
                For i As Integer = 1 To dtCurrentTable.Rows.Count
                    Dim TextBoxName As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(1).FindControl("txtName"), TextBox)
                    Dim TextBoxTelephone As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(2).FindControl("txtTelephone"), TextBox)
                    Dim TextBoxEmail As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(3).FindControl("txtemail"), TextBox)
                    Dim TextBoxCostcode As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(4).FindControl("txtPIDnumber"), TextBox)
                    Dim TextBoxEmployer As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(5).FindControl("txtEMPLOYER"), TextBox)
                    Dim TextBoxMonthlyIncome As TextBox = DirectCast(GridView1.Rows(rowIndex).Cells(6).FindControl("txtMonthly"), TextBox)
                    drCurrentRow = dtCurrentTable.NewRow()
                    drCurrentRow("RowNumber") = i + 1
                    dtCurrentTable.Rows(i - 1)("Col1") = TextBoxName.Text
                    dtCurrentTable.Rows(i - 1)("Col2") = TextBoxTelephone.Text
                    dtCurrentTable.Rows(i - 1)("Col3") = TextBoxEmail.Text
                    dtCurrentTable.Rows(i - 1)("Col4") = TextBoxCostcode.Text
                    dtCurrentTable.Rows(i - 1)("Col5") = TextBoxEmployer.Text
                    dtCurrentTable.Rows(i - 1)("Col6") = TextBoxMonthlyIncome.Text
                    rowIndex += 1
                Next

                'GridView1.DataSource = dtCurrentTable;
                'GridView1.DataBind();
                ViewState("CurrentTable") = dtCurrentTable
            End If
        Else
            Response.Write("ViewState is null")
        End If
        'SetPreviousData();
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
        Try
            SetRowData()
            Dim table As DataTable = TryCast(ViewState("CurrentTable"), DataTable)

            If table IsNot Nothing Then
                For Each row As DataRow In table.Rows
                    Dim txName As String = TryCast(row.ItemArray(1), String)
                    Dim txAge As String = TryCast(row.ItemArray(2), String)
                    Dim txAdd As String = TryCast(row.ItemArray(3), String)
                    Dim rbGen As String = TryCast(row.ItemArray(4), String)
                    Dim drpQual As String = TryCast(row.ItemArray(5), String)
                    Dim drpQual1 As String = TryCast(row.ItemArray(6), String)


                    If txName IsNot Nothing OrElse txAge IsNot Nothing OrElse txAdd IsNot Nothing OrElse rbGen IsNot Nothing OrElse drpQual IsNot Nothing Then
                        ' Do whatever is needed with this data, 
                        ' Possibily push it in database
                        ' I am just printing on the page to demonstrate that it is working.
                        Response.Write(String.Format("{0} {1} {2} {3} {4}<br/>", txName, txAge, txAdd, rbGen, drpQual))

                    End If
                Next
            End If
        Catch ex As Exception
            Throw New Exception(ex.Message)
        End Try
    End Sub
End Class
