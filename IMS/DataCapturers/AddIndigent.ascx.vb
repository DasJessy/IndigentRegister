﻿Imports System
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
Partial Class DataCapturers_AddIndigent
    Inherits System.Web.UI.UserControl
    Private Property MemberID() As Integer
        Get
            Return CInt(ViewState("MemberID"))
        End Get
        Set(ByVal value As Integer)
            ViewState("MemberID") = value
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
            MemberID = Request.QueryString("Memberid")
            GetMembers()
        End If
    End Sub
    Protected Sub Wizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Wizard1.ActiveStepChanged
        'If Wizard1.ActiveStepIndex = "1" Then
        '    Dim NextButton As Button = Wizard1.FindControl("StepNavigationTemplateContainerID").FindControl("StepNextButton")
        '    NextButton.Enabled = False
        'End If
        If Wizard1.ActiveStepIndex = "4" Then
            Dim PrevButton As Button = Wizard1.FindControl("StepNavigationTemplateContainerID").FindControl("StepPreviousButton")
            Dim NextButton As Button = Wizard1.FindControl("StepNavigationTemplateContainerID").FindControl("StepNextButton")
            If Not (NextButton Is Nothing) Then
                NextButton.Enabled = False
            End If

            If Not (PrevButton Is Nothing) Then

                PrevButton.Enabled = False
            End If


        End If

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
        Dim ObjMember As New BusinessLayer.Member
        Dim dtMembers As Data.DataTable
        dtMembers = ObjMember.GetMembers(MemberID)

        If dtMembers.Rows.Count > 0 Then
            'GrievanceID = dt.Rows(0).Item("GrievanceID")
            txtAccountNo.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("AccountNumber")), Nothing, dtMembers.Rows(0).Item("AccountNumber"))
            txtSurname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Surname")), Nothing, dtMembers.Rows(0).Item("Surname"))
            txtFirstname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Firstname")), Nothing, dtMembers.Rows(0).Item("Firstname"))
            ddlTitle.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("Title")), Nothing, dtMembers.Rows(0).Item("Title"))
            txtIDnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("IDNumber")), Nothing, dtMembers.Rows(0).Item("IDNumber"))
            txtdob.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("DOB")), Nothing, dtMembers.Rows(0).Item("DOB"))
            txtAge.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Age")), Nothing, dtMembers.Rows(0).Item("Age"))
            txtHtel.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HTel")), Nothing, dtMembers.Rows(0).Item("HTel"))
            txtWTel.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("WTel")), Nothing, dtMembers.Rows(0).Item("WTel"))
            txtCell.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("CellNo")), Nothing, dtMembers.Rows(0).Item("CellNo"))
            txtFax.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Fax")), Nothing, dtMembers.Rows(0).Item("Fax"))
            txtEmail.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Email")), Nothing, dtMembers.Rows(0).Item("Email"))
            txtOccupation.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Occupation")), Nothing, dtMembers.Rows(0).Item("Occupation"))
            txtEmployer.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Employer")), Nothing, dtMembers.Rows(0).Item("Employer"))
            txtHaddress.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HAddress")), Nothing, dtMembers.Rows(0).Item("HAddress"))
            txtHstreet.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HStreet")), Nothing, dtMembers.Rows(0).Item("HStreet"))
            txtHsuburb.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HSuburb")), Nothing, dtMembers.Rows(0).Item("HSuburb"))
            txtHcity.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HCity")), Nothing, dtMembers.Rows(0).Item("HCity"))
            ddlHprovince.SelectedItem.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HProvince")), Nothing, dtMembers.Rows(0).Item("HProvince"))
            txtHcode.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("HCode")), Nothing, dtMembers.Rows(0).Item("HCode"))
            txtPaddress.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PAddress")), Nothing, dtMembers.Rows(0).Item("PAddress"))
            txtPStreet.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PStreet")), Nothing, dtMembers.Rows(0).Item("PStreet"))
            txtPsuburb.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PSuburb")), Nothing, dtMembers.Rows(0).Item("PSuburb"))
            txtPcity.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("PCity")), Nothing, dtMembers.Rows(0).Item("PCity"))
            ddlPprovince.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("PProvince")), Nothing, dtMembers.Rows(0).Item("PProvince"))
            txtPcode.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Pcode")), Nothing, dtMembers.Rows(0).Item("Pcode"))
            txtRSurname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RSurname")), Nothing, dtMembers.Rows(0).Item("RSurname"))
            txtRFirstname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RFirstname")), Nothing, dtMembers.Rows(0).Item("RFirstname"))
            ddlRTitle.SelectedValue = IIf(IsDBNull(dtMembers.Rows(0).Item("RTitle")), Nothing, dtMembers.Rows(0).Item("RTitle"))
            txtRIDnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RIDnumber")), Nothing, dtMembers.Rows(0).Item("RIDnumber"))
            txtRDOB.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RDOB")), Nothing, dtMembers.Rows(0).Item("RDOB"))
            txtRCell.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("RCell")), Nothing, dtMembers.Rows(0).Item("RCell"))
            txtRoccupation.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("Roccupation")), Nothing, dtMembers.Rows(0).Item("Roccupation"))
            txtREmployer.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("REmployer")), Nothing, dtMembers.Rows(0).Item("REmployer"))
            txtMAName.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MAName")), Nothing, dtMembers.Rows(0).Item("MAName"))
            txtMnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MNumber")), Nothing, dtMembers.Rows(0).Item("MNumber"))
            txtIOption.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("IOption")), Nothing, dtMembers.Rows(0).Item("IOption"))
            txtDEPCode.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("DEPCode")), Nothing, dtMembers.Rows(0).Item("DEPCode"))
            txtMMname.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MMname")), Nothing, dtMembers.Rows(0).Item("MMname"))
            txtMMIDnumber.Text = IIf(IsDBNull(dtMembers.Rows(0).Item("MMIDnumber")), Nothing, dtMembers.Rows(0).Item("MMIDnumber"))

        End If
    End Sub
    Protected Sub Wizard1_FinishButtonClick(ByVal sender As Object, ByVal e As WizardNavigationEventArgs)
        Dim ObjVerifyuser As New BusinessLayer.Member
        Dim Medicalasidno As String
        Medicalasidno = txtMnumber.Text
        'MemeberID = txtMdicalaidno.Text
        'ObjVerifyuser.RegisterMember(Medicalasidno, txtFirstname.Text, txtSurname.Text, _
        '                     txtIDnumber.Text, txtEmail.Text, txtCell.Text, txtHtel.Text, Encrypt(txtMnumber.Text.Trim, "&%#@?,:*"))

        ObjVerifyuser.RegisterMember(MemberID, txtAccountNo.Text, txtSurname.Text, txtFirstname.Text, ddlTitle.SelectedValue, txtIDnumber.Text, _
                                     txtdob.Text, txtAge.Text, txtHtel.Text, txtWTel.Text, txtCell.Text, txtFax.Text, txtEmail.Text, txtOccupation.Text, _
                                     txtEmployer.Text, txtHaddress.Text, txtHstreet.Text, txtHsuburb.Text, txtHcity.Text, ddlHprovince.SelectedValue, _
                                     txtHcode.Text, txtPaddress.Text, txtPStreet.Text, txtPsuburb.Text, txtPcity.Text, ddlPprovince.SelectedItem.Text, _
                                     txtPcode.Text, txtRSurname.Text, txtRFirstname.Text, ddlRTitle.SelectedValue, txtRIDnumber.Text, txtRDOB.Text, _
                                     txtRCell.Text, txtRoccupation.Text, txtREmployer.Text, txtMAName.Text, txtMnumber.Text, txtIOption.Text, _
                                     txtDEPCode.Text, txtMMname.Text, txtMMIDnumber.Text)

        MessageBox(Page, "Thank you for registering with us")
        'Response.Redirect("Login.aspx")
        'Wizard1.Visible = False
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

End Class
