Public Class Member
    '    Public Function UpdateMember(ByVal MemberID As Integer, ByVal AccountNumber As String, ByVal Type As String, _
    '    ByVal Funder As String, ByVal MedicalAidno As String, ByVal MPlan As String, ByVal Title As String, _
    '    ByVal FirstName As String, ByVal LastName As String, ByVal IDNumber As String, ByVal Age As String, _
    '    ByVal GenderID As String, ByVal RaceID As String, ByVal Htel As String, ByVal Wtel As String, _
    '    ByVal CellNo As String, ByVal Email As String, ByVal Address As String, ByVal Street As String, _
    '    ByVal Suburb As String, ByVal City As String, ByVal Code As String) As Data.DataTable

    '        Dim strSQL As String
    '        Dim obj As DataLayer.Database = New DataLayer.Database
    '        strSQL = "Exec sp_UpdateMember " & MemberID & ",'" & AccountNumber & "','" & Type & "','" & Funder & "','" & MedicalAidno & "','" & MPlan & "','" & Title & "','" & FirstName & "','" & LastName & "'" & _
    '        ",'" & IDNumber & "','" & Age & "','" & GenderID & "','" & RaceID & "','" & Htel & "','" & Wtel & "','" & CellNo & "','" & Email & "','" & Address & "'" & _
    '        ",'" & Street & "','" & Suburb & "','" & City & "','" & Code & "'"
    '        UpdateMember = obj.GetDatatable(strSQL)
    '        obj.Connection.Close()
    '        Return UpdateMember
    '    End Function
    'Public Function RegisterMember(ByVal MedicalAidno As String, ByVal FirstName As String, ByVal Surname As String, ByVal IDNumber As String, _
    ' ByVal Email As String, ByVal CellNo As String, ByVal Htel As String, ByVal Password As String) As Data.DataTable

    '    Dim strSQL As String
    '    Dim obj As DataLayer.Database = New DataLayer.Database
    '    strSQL = "Exec sp_RegisterMember '" & MedicalAidno & "','" & FirstName & "','" & Surname & "'" & _
    '    ",'" & IDNumber & "','" & Email & "','" & CellNo & "','" & Htel & "','" & Password & "'"
    '    RegisterMember = obj.GetDatatable(strSQL)
    '    obj.Connection.Close()
    '    Return RegisterMember
    'End Function
    Public Function RegisterMember(ByVal MemberID As String, ByVal txtAccountNo As String, ByVal txtSurname As String, ByVal txtFirstname As String, ByVal ddlTitle As String, ByVal txtIDnumber As String, _
                                            ByVal txtdob As String, ByVal txtage As String, ByVal txtHtel As String, ByVal txtWTel As String, ByVal txtCell As String, ByVal txtFax As String, ByVal txtEmail As String, ByVal txtOccupation As String, _
                                            ByVal txtEmployer As String, ByVal txtHaddress As String, ByVal txtHstreet As String, ByVal txtHsuburb As String, ByVal txtHcity As String, ByVal ddlHprovince As String, _
                                            ByVal txtHcode As String, ByVal txtPaddress As String, ByVal txtPStreet As String, ByVal txtPsuburb As String, ByVal txtPcity As String, ByVal ddlPprovince As String, _
                                            ByVal txtPcode As String, ByVal txtRSurname As String, ByVal txtRFirstname As String, ByVal ddlRTitle As String, ByVal txtRIDnumber As String, ByVal txtRDOB As String, _
                                            ByVal txtRCell As String, ByVal txtRoccupation As String, ByVal txtREmployer As String, ByVal txtMAName As String, ByVal txtMNumber As String, ByVal txtIOption As String, _
                                            ByVal txtDEPCode As String, ByVal txtMMname As String, ByVal txtMMIDnumber As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_RegisterMember '" & MemberID & "','" & txtAccountNo & "','" & txtSurname & "','" & txtFirstname & "'" & _
        ",'" & ddlTitle & "','" & txtIDnumber & "','" & txtdob & "','" & txtage & "','" & txtHtel & "'" & _
        ",'" & txtWTel & "','" & txtCell & "','" & txtFax & "','" & txtEmail & "','" & txtOccupation & "'" & _
        ",'" & txtEmployer & "','" & txtHaddress & "','" & txtHstreet & "','" & txtHsuburb & "','" & txtHcity & "'" & _
        ",'" & ddlHprovince & "','" & txtHcode & "','" & txtPaddress & "','" & txtPStreet & "','" & txtPsuburb & "','" & txtPcity & "'" & _
        ",'" & ddlPprovince & "','" & txtPcode & "','" & txtRSurname & "','" & txtRFirstname & "','" & ddlRTitle & "'" & _
        ",'" & txtRIDnumber & "','" & txtRDOB & "','" & txtRCell & "','" & txtRoccupation & "','" & txtREmployer & "'" & _
        ",'" & txtMAName & "','" & txtMNumber & "','" & txtIOption & "','" & txtDEPCode & "','" & txtMMname & "'" & _
        ",'" & txtMMIDnumber & "'"

        RegisterMember = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        Return RegisterMember
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
    Public Function DeleteOccupent(ByVal ID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "delete from IndegentOccupantDetails where ID = '" & ID & "'"
        DeleteOccupent = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function

    'Public Function UpdateMemberDetails(ByVal UserID As Integer, ByVal UserName As String, ByVal Password As String, ByVal Name As String, ByVal Surname As String, ByVal Type As String, ByVal Status As String, ByVal Telephone As String, ByVal Email As String, ByVal Cell As String) As Boolean
    '    Dim strSQL As String
    '    Dim obj As DataLayer.Database = New DataLayer.Database
    '    strSQL = "Exec sp_UpdateUser " & UserID & ",'" & UserName & "','" & Password & "','" & Name & "','" & Surname & "','" & Type & "','" & Status & "','" & Telephone & "','" & Email & "','" & Cell & "'"
    '    UpdateMemberDetails = obj.Execute(strSQL)
    '    obj.Connection.Close()
    '    Return UpdateMemberDetails
    'End Function
End Class
