Public Class Indigent
    'Public Function RegisterMember(ByVal MemberID As String, ByVal txtAccountNo As String, ByVal txtSurname As String, ByVal txtFirstname As String, ByVal ddlTitle As String, ByVal txtIDnumber As String, _
    '                                        ByVal txtdob As String, ByVal txtage As String, ByVal txtHtel As String, ByVal txtWTel As String, ByVal txtCell As String, ByVal txtFax As String, ByVal txtEmail As String, ByVal txtOccupation As String, _
    '                                        ByVal txtEmployer As String, ByVal txtHaddress As String, ByVal txtHstreet As String, ByVal txtHsuburb As String, ByVal txtHcity As String, ByVal ddlHprovince As String, _
    '                                        ByVal txtHcode As String, ByVal txtPaddress As String, ByVal txtPStreet As String, ByVal txtPsuburb As String, ByVal txtPcity As String, ByVal ddlPprovince As String, _
    '                                        ByVal txtPcode As String, ByVal txtRSurname As String, ByVal txtRFirstname As String, ByVal ddlRTitle As String, ByVal txtRIDnumber As String, ByVal txtRDOB As String, _
    '                                        ByVal txtRCell As String, ByVal txtRoccupation As String, ByVal txtREmployer As String, ByVal txtMAName As String, ByVal txtMNumber As String, ByVal txtIOption As String, _
    '                                        ByVal txtDEPCode As String, ByVal txtMMname As String, ByVal txtMMIDnumber As String) As Data.DataTable
    '    Dim strSQL As String
    '    Dim obj As DataLayer.Database = New DataLayer.Database
    '    strSQL = "Exec sp_RegisterMember '" & memberID & "','" & txtAccountNo & "','" & txtSurname & "','" & txtFirstname & "'" & _
    '    ",'" & ddlTitle & "','" & txtIDnumber & "','" & txtdob & "','" & txtage & "','" & txtHtel & "'" & _
    '    ",'" & txtWTel & "','" & txtCell & "','" & txtFax & "','" & txtEmail & "','" & txtOccupation & "'" & _
    '    ",'" & txtEmployer & "','" & txtHaddress & "','" & txtHstreet & "','" & txtHsuburb & "','" & txtHcity & "'" & _
    '    ",'" & ddlHprovince & "','" & txtHcode & "','" & txtPaddress & "','" & txtPStreet & "','" & txtPsuburb & "','" & txtPcity & "'" & _
    '    ",'" & ddlPprovince & "','" & txtPcode & "','" & txtRSurname & "','" & txtRFirstname & "','" & ddlRTitle & "'" & _
    '    ",'" & txtRIDnumber & "','" & txtRDOB & "','" & txtRCell & "','" & txtRoccupation & "','" & txtREmployer & "'" & _
    '    ",'" & txtMAName & "','" & txtMNumber & "','" & txtIOption & "','" & txtDEPCode & "','" & txtMMname & "'" & _
    '    ",'" & txtMMIDnumber & "'"

    '    RegisterMember = obj.GetDatatable(strSQL)
    '    obj.Connection.Close()
    '    Return RegisterMember
    '************************************************
    'RefNo, 
    'cboTitle,
    'txtSurname, 
    'txtFirstname, 
    'txtIDnumber,
    'cboRace,
    'cboMaritalStatus,
    'RDesibilityStatus,
    'txtHtel,
    'txtWTel,
    'txtCell,
    'txtEmail,
    'txtAccountNumber,
    'txtERF,
    'txtstreet,
    'txtsuburb,
    'txtcity,
    'cboProvince,
    'txtcode,
    'ROwnerStatus,
    'ROccupierStatus,
    'txtAdultResidents,
    'txtAdultsIncome,
    'txtApplicantIncomePerMonth,
    'txtAudaltsTotalIncome,
    'txtRSalary,
    'txtSalary,
    'txtOldAgePensionRecipents,
    'txtOldAgePension,
    'txtDisabilityPensionRecipents,
    'txtDisabilityPension,
    'txtRetirementPensionRecipents,
    'txtRetirementPension,
    'txtInformalBusinessIncomeRecipents,
    'txtInformalBusinessIncome,
    'txtRentalRecipents,
    'txtRental,
    'txtUIFRecipents,
    'txtUIF,
    'txtOtherRecipents,
    'txtOther,
    'txtTotalRecipents,
    'txtTotal,
    'REmployementStatusAffidavit,
    'RProofOfIncomeDocuments,
    'RMunicipalAccountNameofTheApplicant,
    'RApplicantAndOccupentIDDocuments,
    'txtPREREGISTRATION,
    'RPRVerified,
    'cboPROfficer,
    'txtPREREGISTRATIONofficialdate,
    'RPOSiteVerification,
    'txtPostREGISTRATION,
    'RPOVerified,
    'cboPOOfficer,
    'txtPostREGISTRATIONOffcial,
    'RNotification,
    'txtNotificationSentoutDate,
    'RDEBT,
    'cboNotificationOfficer,
    'txtNotificationSentoutDateOffficial,
    'RComments,
    'RProofOfIncomeDocuments,
    'txtRegisterdDate,
    'txtCommentsNotes,
    'cboQualityPROfficer,
    'txtQualityDate,
    'Session("USERID")
    '********************************************************
    Public Function AddIndigent(ByVal RefNo As String, _
        ByVal cboTitle As String, _
        ByVal txtSurname As String, _
        ByVal txtFirstname As String, _
        ByVal txtIDnumber As String, _
        ByVal cboRace As String, _
        ByVal cboMaritalStatus As String, _
        ByVal RDesibilityStatus As String, _
        ByVal txtHtel As String, _
        ByVal txtWTel As String, _
        ByVal txtCell As String, _
        ByVal txtEmail As String, _
        ByVal txtAccountNumber As String, _
        ByVal txtERF As String, _
        ByVal txtstreet As String, _
        ByVal txtsuburb As String, _
        ByVal txtcity As String, _
        ByVal cboProvince As String, _
        ByVal txtcode As String, _
        ByVal ROwnerStatus As String, _
        ByVal ROccupierStatus As String, _
        ByVal txtAdultResidents As String, _
        ByVal txtAdultsIncome As String, _
        ByVal txtApplicantIncomePerMonth As String, _
        ByVal txtAudaltsTotalIncome As String, _
        ByVal txtRSalary As String, _
        ByVal txtSalary As String, _
        ByVal txtOldAgePensionRecipents As String, _
        ByVal txtOldAgePension As String, _
        ByVal txtDisabilityPensionRecipents As String, _
        ByVal txtDisabilityPension As String, _
        ByVal txtRetirementPensionRecipents As String, _
        ByVal txtRetirementPension As String, _
        ByVal txtInformalBusinessIncomeRecipents As String, _
        ByVal txtInformalBusinessIncome As String, _
        ByVal txtRentalRecipents As String, _
        ByVal txtRental As String, _
        ByVal txtUIFRecipents As String, _
        ByVal txtUIF As String, _
        ByVal txtOtherRecipents As String, _
        ByVal txtOther As String, _
        ByVal txtTotalRecipents As String, _
        ByVal txtTotal As String, _
        ByVal userid As Integer) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_AddIndigent '" & RefNo & "','" & cboTitle & "','" & txtSurname & "','" & txtFirstname & "','" & txtIDnumber & "','" & cboRace & "','" & cboMaritalStatus & "','" & RDesibilityStatus & "','" & txtHtel & "','" & txtWTel & "','" & txtCell & "','" & txtEmail & "','" & txtAccountNumber & "','" & txtERF & "','" & txtstreet & "','" & txtsuburb & "','" & txtcity & "','" & cboProvince & "','" & txtcode & "','" & userid & "'"
        AddIndigent = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        Return AddIndigent
    End Function
    Public Function UpdateIndigent(ByVal RefNo As String, _
      ByVal cboIndigentType As String, _
      ByVal cboTitle As String, _
      ByVal txtSurname As String, _
      ByVal txtFirstname As String, _
      ByVal txtIDnumber As String, _
      ByVal cboRace As String, _
      ByVal cboMaritalStatus As String, _
      ByVal RDesibilityStatus As String, _
      ByVal txtHtel As String, _
      ByVal txtWTel As String, _
      ByVal txtCell As String, _
      ByVal txtEmail As String, _
      ByVal txtAccountNumber As String, _
      ByVal txtWard As String, _
      ByVal txtERF As String, _
      ByVal txtstreet As String, _
      ByVal txtsuburb As String, _
      ByVal txtcity As String, _
      ByVal cboProvince As String, _
      ByVal txtcode As String, _
      ByVal ROwnerStatus As String, _
      ByVal ROccupierStatus As String, _
      ByVal txtAdultResidents As String, _
      ByVal txtAdultsIncome As String, _
      ByVal txtApplicantIncomePerMonth As String, _
      ByVal txtAudaltsTotalIncome As String, _
      ByVal txtRSalary As String, _
      ByVal txtSalary As String, _
      ByVal txtOldAgePensionRecipents As String, _
      ByVal txtOldAgePension As String, _
      ByVal txtDisabilityPensionRecipents As String, _
      ByVal txtDisabilityPension As String, _
      ByVal txtRetirementPensionRecipents As String, _
      ByVal txtRetirementPension As String, _
      ByVal txtInformalBusinessIncomeRecipents As String, _
      ByVal txtInformalBusinessIncome As String, _
      ByVal txtRentalRecipents As String, _
      ByVal txtRental As String, _
      ByVal txtUIFRecipents As String, _
      ByVal txtUIF As String, _
      ByVal txtOtherRecipents As String, _
      ByVal txtOther As String, _
      ByVal txtTotalRecipents As String, _
      ByVal txtTotal As String, _
      ByVal userid As Integer) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateIndigentDetails '" & RefNo & "','" & cboIndigentType & "','" & cboTitle & "','" & txtSurname & "','" & txtFirstname & "','" & txtIDnumber & "','" & cboRace & "','" & cboMaritalStatus & "','" & RDesibilityStatus & "','" & txtHtel & "','" & txtWTel & "','" & txtCell & "','" & txtEmail & "','" & txtAccountNumber & "','" & txtWard & "','" & txtERF & "','" & txtstreet & "','" & txtsuburb & "','" & txtcity & "','" & cboProvince & "','" & txtcode & "','" & userid & "','" & ROwnerStatus & "','" & ROccupierStatus & "','" & txtAdultResidents & "','" & txtAdultsIncome & "','" & txtApplicantIncomePerMonth & "','" & txtAudaltsTotalIncome & "','" & txtRSalary & "','" & txtSalary & "','" & txtOldAgePensionRecipents & "','" & txtOldAgePension & "','" & txtDisabilityPensionRecipents & "','" & txtDisabilityPension & "','" & txtRetirementPensionRecipents & "','" & txtRetirementPension & "','" & txtInformalBusinessIncomeRecipents & "','" & txtInformalBusinessIncome & "','" & txtRentalRecipents & "','" & txtRental & "','" & txtUIFRecipents & "','" & txtUIF & "','" & txtOtherRecipents & "','" & txtOther & "','" & txtTotalRecipents & "','" & txtTotal & "'"
        UpdateIndigent = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        Return UpdateIndigent
    End Function
    Public Function UpdateINDVerification(ByVal RefNo As String, _
        ByVal cboIndigentType As String, _
        ByVal cboTitle As String, _
        ByVal txtSurname As String, _
        ByVal txtFirstname As String, _
        ByVal txtIDnumber As String, _
        ByVal cboRace As String, _
        ByVal cboMaritalStatus As String, _
        ByVal RDesibilityStatus As String, _
        ByVal txtHtel As String, _
        ByVal txtWTel As String, _
        ByVal txtCell As String, _
        ByVal txtEmail As String, _
        ByVal txtAccountNumber As String, _
        ByVal txtWard As String, _
        ByVal txtERF As String, _
        ByVal txtstreet As String, _
        ByVal txtsuburb As String, _
        ByVal txtcity As String, _
        ByVal cboProvince As String, _
        ByVal txtcode As String, _
        ByVal ROwnerStatus As String, _
        ByVal ROccupierStatus As String, _
        ByVal txtAdultResidents As String, _
        ByVal txtAdultsIncome As String, _
        ByVal txtApplicantIncomePerMonth As String, _
        ByVal txtAudaltsTotalIncome As String, _
        ByVal txtRSalary As String, _
        ByVal txtSalary As String, _
        ByVal txtOldAgePensionRecipents As String, _
        ByVal txtOldAgePension As String, _
        ByVal txtDisabilityPensionRecipents As String, _
        ByVal txtDisabilityPension As String, _
        ByVal txtRetirementPensionRecipents As String, _
        ByVal txtRetirementPension As String, _
        ByVal txtInformalBusinessIncomeRecipents As String, _
        ByVal txtInformalBusinessIncome As String, _
        ByVal txtRentalRecipents As String, _
        ByVal txtRental As String, _
        ByVal txtUIFRecipents As String, _
        ByVal txtUIF As String, _
        ByVal txtOtherRecipents As String, _
        ByVal txtOther As String, _
        ByVal txtTotalRecipents As String, _
        ByVal txtTotal As String, _
        ByVal REmployementStatusAffidavit As String, _
        ByVal RProofOfIncomeDocuments As String, _
        ByVal RMunicipalAccountNameofTheApplicant As String, _
        ByVal RApplicantAndOccupentIDDocuments As String, _
        ByVal RPRSiteVerification As String, _
        ByVal txtPREREGISTRATIONDate As String, _
        ByVal RPRVerified As String, _
        ByVal cboPROfficer As String, _
        ByVal txtPREREGISTRATIONofficialdate As String, _
        ByVal RPOSiteVerification As String, _
        ByVal txtRPOSTREGISTRATIONDate As String, _
        ByVal RPOVerified As String, _
        ByVal cboRPOOfficer As String, _
        ByVal txtRPOofficialDate As String, _
        ByVal RNotification As String, _
        ByVal RDEBTWRITTENOFF As String, _
        ByVal txtNotificationSentoutDate As String, _
        ByVal RComments As String, _
        ByVal txtRCommentsDate As String, _
        ByVal txtCommentsNotes As String, _
        ByVal cboQualityPROfficer As String, _
        ByVal txtQualityOfficialDate As String, _
        ByVal cboApplicationStatus As String, _
        ByVal userid As Integer) As Data.DataTable

        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateINDVerification '" & RefNo & "','" & cboIndigentType & "','" & cboTitle & "','" & txtSurname & "','" & txtFirstname & "','" & txtIDnumber & "','" & cboRace & "','" & cboMaritalStatus & "','" & RDesibilityStatus & "','" & txtHtel & "','" & txtWTel & "','" & txtCell & "','" & txtEmail & "','" & txtAccountNumber & "','" & txtWard & "','" & txtERF & "','" & txtstreet & "','" & txtsuburb & "','" & txtcity & "','" & cboProvince & "','" & txtcode & "','" & ROwnerStatus & "','" & ROccupierStatus & "','" & txtAdultResidents & "','" & txtAdultsIncome & "','" & txtApplicantIncomePerMonth & "','" & txtAudaltsTotalIncome & "','" & txtRSalary & "','" & txtSalary & "','" & txtOldAgePensionRecipents & "','" & txtOldAgePension & "','" & txtDisabilityPensionRecipents & "','" & txtDisabilityPension & "','" & txtRetirementPensionRecipents & "','" & txtRetirementPension & "','" & txtInformalBusinessIncomeRecipents & "','" & txtInformalBusinessIncome & "','" & txtRentalRecipents & "','" & txtRental & "','" & txtUIFRecipents & "','" & txtUIF & "','" & txtOtherRecipents & "','" & txtOther & "','" & txtTotalRecipents & "','" & txtTotal & "','" & _
        "" & REmployementStatusAffidavit & "','" & RProofOfIncomeDocuments & "','" & RMunicipalAccountNameofTheApplicant & "','" & RApplicantAndOccupentIDDocuments & "','" & _
        "" & RPRSiteVerification & "','" & txtPREREGISTRATIONDate & "','" & RPRVerified & "','" & cboPROfficer & "','" & txtPREREGISTRATIONofficialdate & "','" & _
        "" & RPOSiteVerification & "','" & txtRPOSTREGISTRATIONDate & "','" & RPOVerified & "','" & cboRPOOfficer & "','" & txtRPOofficialDate & "','" & _
        "" & RNotification & "','" & RDEBTWRITTENOFF & "','" & txtNotificationSentoutDate & "','" & RComments & "','" & txtRCommentsDate & "','" & txtCommentsNotes & "','" & _
        "" & cboQualityPROfficer & "','" & txtQualityOfficialDate & "','" & cboApplicationStatus & "','" & userid & "'"
        UpdateINDVerification = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        Return UpdateINDVerification
    End Function
    Public Function AddIndigentOfficer(ByVal RefNo As String, _
    ByVal cboTitle As String, _
    ByVal txtSurname As String, _
    ByVal txtFirstname As String, _
    ByVal txtIDnumber As String, _
    ByVal cboRace As String, _
    ByVal cboMaritalStatus As String, _
    ByVal RDesibilityStatus As String, _
    ByVal txtHtel As String, _
    ByVal txtWTel As String, _
    ByVal txtCell As String, _
    ByVal txtEmail As String, _
    ByVal txtAccountNumber As String, _
    ByVal txtERF As String, _
    ByVal txtstreet As String, _
    ByVal txtsuburb As String, _
    ByVal txtcity As String, _
    ByVal cboProvince As String, _
    ByVal txtcode As String, _
    ByVal ROwnerStatus As String, _
    ByVal ROccupierStatus As String, _
    ByVal txtAdultResidents As String, _
    ByVal txtAdultsIncome As String, _
    ByVal txtApplicantIncomePerMonth As String, _
    ByVal txtAudaltsTotalIncome As String, _
    ByVal txtRSalary As String, _
    ByVal txtSalary As String, _
    ByVal txtOldAgePensionRecipents As String, _
    ByVal txtOldAgePension As String, _
    ByVal txtDisabilityPensionRecipents As String, _
    ByVal txtDisabilityPension As String, _
    ByVal txtRetirementPensionRecipents As String, _
    ByVal txtRetirementPension As String, _
    ByVal txtInformalBusinessIncomeRecipents As String, _
    ByVal txtInformalBusinessIncome As String, _
    ByVal txtRentalRecipents As String, _
    ByVal txtRental As String, _
    ByVal txtUIFRecipents As String, _
    ByVal txtUIF As String, _
    ByVal txtOtherRecipents As String, _
    ByVal txtOther As String, _
    ByVal txtTotalRecipents As String, _
    ByVal txtTotal As String, _
    ByVal REmployementStatusAffidavit As String, _
    ByVal RProofOfIncomeDocuments As String, _
    ByVal RMunicipalAccountNameofTheApplicant As String, _
    ByVal RApplicantAndOccupentIDDocuments As String, _
    ByVal txtPREREGISTRATION As String, _
    ByVal RPRVerified As String, _
    ByVal cboPROfficer As String, _
    ByVal txtPREREGISTRATIONofficialdate As String, _
    ByVal RPOSiteVerification As String, _
    ByVal txtPostREGISTRATION As String, _
    ByVal RPOVerified As String, _
    ByVal cboPOOfficer As String, _
    ByVal txtPostREGISTRATIONOffcial As String, _
    ByVal RNotification As String, _
    ByVal txtNotificationSentoutDate As String, _
    ByVal RDEBT As String, _
    ByVal cboNotificationOfficer As String, _
    ByVal txtNotificationSentoutDateOffficial As String, _
    ByVal RComments As String, _
    ByVal txtRegisterdDate As String, _
    ByVal txtCommentsNotes As String, _
    ByVal cboQualityPROfficer As String, _
    ByVal txtQualityDate As String, _
    ByVal userid As Integer) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_AddIndigent '" & RefNo & "','" & cboTitle & "','" & txtSurname & "','" & txtFirstname & "','" & txtIDnumber & "','" & cboRace & "','" & cboMaritalStatus & "','" & RDesibilityStatus & "','" & txtHtel & "','" & txtWTel & "','" & txtCell & "','" & txtEmail & "','" & txtAccountNumber & "','" & txtERF & "','" & txtstreet & "','" & txtsuburb & "','" & cboProvince & "','" & txtcode & "','" & userid & "'"
        AddIndigentOfficer = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateMember(ByVal MemberID As Integer, ByVal Firstname As String, ByVal Lastname As String, ByVal IDnumber As String, ByVal Persal As String, ByVal Gender As Integer, ByVal Race As String, ByVal Address As String, ByVal Suburb As String, ByVal City As String, ByVal ProvinceID As Integer, ByVal Code As String, ByVal Telephone As String, ByVal Fax As String, ByVal Cell As String, ByVal Email As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateMember " & MemberID & ",'" & Firstname & "','" & Lastname & "','" & IDnumber & "','" & Persal & "'," & Gender & "," & Race & ",'" & Address & "','" & Suburb & "','" & City & "'," & ProvinceID & ",'" & Code & "','" & Telephone & "','" & Fax & "','" & Cell & "','" & Email & "'"
        UpdateMember = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function


    Public Function GetMembers() As Data.DataTable

        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetMemberList"
        GetMembers = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function GetMembersearch(ByVal membershipnumber As String, ByVal idnumber As String, ByVal Surname As String, ByVal Firstname As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetMembersearch '" & membershipnumber & "','" & idnumber & "','" & Surname & "','" & Firstname & "'"
        GetMembersearch = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function GetMemberAssessmentsearch(ByVal memberID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetMemberAsseesementsearch '" & memberID & "'"
        GetMemberAssessmentsearch = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function GetIndigents(ByVal Firstname As String, ByVal Lastname As String, ByVal IDnumber As String, ByVal Accno As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetIndigents '" & Firstname & "','" & Lastname & "','" & IDnumber & "','" & Accno & "'"
        GetIndigents = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetIndigentstatus(ByVal Status As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetIndigentstatus '" & Status & "'"
        GetIndigentstatus = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetIndigentByRefno(ByVal RefNo As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetIndigentByID '" & RefNo & "'"
        GetIndigentByRefno = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function GetIndigentDashboard() As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetDashbordReport"
        GetIndigentDashboard = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function GetMemberAssessmentDetailsearch(ByVal memberID As String, ByVal MSAID As String, ByVal ATID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetMADetailssearch '" & memberID & "','" & MSAID & "','" & ATID & "'"
        GetMemberAssessmentDetailsearch = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function SaveMemberAssessmentDetails(ByVal MSAID As Integer, ByVal MemberID As String, ByVal ATID As String, ByVal QID As String, ByVal CID As String, ByVal CT As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_SaveMemberAssessments '" & MSAID & "','" & MemberID & "','" & ATID & "','" & QID & "','" & CID & "','" & CT & "'"
        SaveMemberAssessmentDetails = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function UpdateBMIDetails(ByVal MSAID As Integer, ByVal MemberID As String, ByVal ATID As String, ByVal QID As String, ByVal CID As String, ByVal CT As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_SaveMemberAssessments '" & MSAID & "','" & MemberID & "','" & ATID & "','" & QID & "','" & CID & "','" & CT & "'"
        UpdateBMIDetails = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
    Public Function GetMembers(ByVal MemberID As String) As Data.DataTable

        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetMember'" & MemberID & "'"
        GetMembers = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return GetMembers()
    End Function
End Class
