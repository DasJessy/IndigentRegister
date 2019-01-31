Public Class Grievances
    Public Function GetGrevianceNatureTypes() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetGrievanceNatureTypes"
        GetGrevianceNatureTypes = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGrevianceNature(ByVal GetGrevianceNatureTypeID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievanceNature " & GetGrevianceNatureTypeID & ""
        GetGrevianceNature = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGrevianceStatus() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetGrievanceStatus"
        GetGrevianceStatus = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGrevianceOutcomes(ByVal GetGrevianceStatusID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievanceOutcome " & GetGrevianceStatusID & ""
        GetGrevianceOutcomes = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviances(ByVal Firstname As String, ByVal Lastname As String, ByVal IDnumber As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievances '" & Firstname & "','" & Lastname & "','" & IDnumber & "'"
        GetGreviances = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviancesearch(ByVal GrievanceREFNo As String, ByVal FileREFNo As String, ByVal DGRefno As String, ByVal StartDate As String, ByVal EndDate As String, ByVal DeptLogged As String, ByVal GNatureTypes As String, ByVal GNature As String, ByVal GStatus As String, ByVal Office As String, ByVal Directorate As String, ByVal Province As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievancesearch '" & GrievanceREFNo & "','" & FileREFNo & "','" & DGRefno & "','" & StartDate & "','" & EndDate & "','" & DeptLogged & "','" & GNatureTypes & "','" & GNature & "','" & GStatus & "','" & Office & "','" & Directorate & "','" & Province & "'"
        GetGreviancesearch = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviancesByMemberID(ByVal MemberID As String, ByVal DirectorateID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievancesbyMemberID '" & MemberID & "','" & DirectorateID & "'"
        GetGreviancesByMemberID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviancesByInvestigatorID(ByVal InvestigatorID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievancesbyInvestigatorID '" & InvestigatorID & "'"
        GetGreviancesByInvestigatorID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviancesByReportusers(ByVal OfficeID As String, ByVal DirectorateID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGreviancesByReportusers '" & OfficeID & "','" & DirectorateID & "'"
        GetGreviancesByReportusers = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviancesByGrievienceRefno(ByVal InvestigatorID As String, ByVal FName As String, ByVal Surname As String, ByVal IDnumber As String, ByVal Grefno As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievancesbyGrievienceRefno '" & InvestigatorID & "','" & FName & "','" & Surname & "','" & IDnumber & "','" & Grefno & "'"
        GetGreviancesByGrievienceRefno = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviancesByGrievanceID(ByVal GrievanceID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievancesbyGrievanceID " & GrievanceID & ""
        GetGreviancesByGrievanceID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGreviancesByGrievanceRefID(ByVal GrievanceRefID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievancesbyGrievanceRefID '" & GrievanceRefID & "'"
        GetGreviancesByGrievanceRefID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateMember(ByVal MemberID As Integer, ByVal Firstname As String, ByVal Lastname As String, ByVal IDnumber As String, ByVal Persal As String, ByVal Gender As Integer, ByVal Race As String, ByVal Address As String, ByVal Suburb As String, ByVal City As String, ByVal ProvinceID As Integer, ByVal Code As String, ByVal Telephone As String, ByVal Fax As String, ByVal Cell As String, ByVal Email As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateMember " & MemberID & ",'" & Firstname & "','" & Lastname & "','" & IDnumber & "','" & Persal & "'," & Gender & "," & Race & ",'" & Address & "','" & Suburb & "','" & City & "'," & ProvinceID & ",'" & Code & "','" & Telephone & "','" & Fax & "','" & Cell & "','" & Email & "'"
        UpdateMember = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function AddGrievance(ByVal FileRefno As String, ByVal DGRefno As String, ByVal Sentby As Integer, ByVal sentto As Integer, ByVal datesent As String, ByVal datereceived As String, ByVal datereceivedbychief As String, ByVal DeptLogged As Integer, ByVal EmpDept As Integer, ByVal Rep As String, ByVal Rank As String, ByVal Confidential As Integer, ByVal natureType As Integer, ByVal Nature As String, ByVal Status As Integer, ByVal outcome As Integer, ByVal Cmments As String, ByVal memberid As Integer, ByVal UserID As Integer, ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal ProvinceID As Integer) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_AddGrievance '" & FileRefno & "','" & DGRefno & "','" & Sentby & "'," & sentto & ",'" & datesent & "','" & datereceived & "','" & datereceivedbychief & "'," & DeptLogged & "," & EmpDept & ",'" & Rep & "','" & Rank & "'," & Confidential & "," & natureType & "," & Nature & "," & Status & "," & outcome & ",'" & Cmments & "'," & memberid & "," & UserID & "," & OfficeID & "," & DirectorateID & "," & ProvinceID & ""
        AddGrievance = obj.GetDatatable(strSQL)
        'Return UpdateMember
    End Function
    Public Function UploadFile(ByVal GrievanceRefno As String, ByVal Filename As String, ByVal Filepath As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_FileUpload '" & GrievanceRefno & "','" & Filename & "','" & Filepath & "'"
        UploadFile = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function DeleteFile(ByVal ID As String, ByVal GrievanceID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_DeleteFile '" & ID & "','" & GrievanceID & "'"
        DeleteFile = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateGrievance(ByVal GrievanceID As Integer, ByVal GrievanceRefno As String, ByVal FileRefno As String, ByVal DGRefno As String, ByVal Sentby As Integer, ByVal sentto As Integer, ByVal datesent As String, ByVal datereceived As String, ByVal datereceivedbychief As String, ByVal DeptLogged As Integer, ByVal EmpDept As Integer, ByVal Rep As String, ByVal Rank As String, ByVal Confidential As Integer, ByVal natureType As Integer, ByVal Nature As String, ByVal Status As Integer, ByVal outcome As Integer, ByVal Cmments As String, ByVal memberid As Integer, ByVal UserID As Integer, ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal ProvinceID As Integer) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateGrievance " & GrievanceID & ",'" & GrievanceRefno & "','" & FileRefno & "','" & DGRefno & "','" & Sentby & "'," & sentto & ",'" & datesent & "','" & datereceived & "','" & datereceivedbychief & "'," & DeptLogged & "," & EmpDept & ",'" & Rep & "','" & Rank & "'," & Confidential & "," & natureType & "," & Nature & "," & Status & "," & outcome & ",'" & Cmments & "'," & memberid & "," & UserID & "," & OfficeID & "," & DirectorateID & "," & ProvinceID & ""
        UpdateGrievance = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateGrievanceStatus(ByVal GrievanceID As Integer, ByVal Status As Integer, ByVal outcome As Integer, ByVal Cmments As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateGrievanceStatus " & GrievanceID & "," & Status & "," & outcome & ",'" & Cmments & "'"
        UpdateGrievanceStatus = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function GetGrevianceProgress(ByVal GrievanceID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetGrievanceProgress '" & GrievanceID & "'"
        GetGrevianceProgress = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function

    Public Function GetMembersByMemberID(ByVal MemberID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetMembersbyMemberID " & MemberID & ""
        GetMembersByMemberID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGrevianceMemberEmailDetails(ByVal GrievanceID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetAcknowledgementdetails " & GrievanceID & ""
        GetGrevianceMemberEmailDetails = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetUploadFiles(ByVal GrievanceID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetFileupload " & GrievanceID & ""
        GetUploadFiles = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function

End Class
