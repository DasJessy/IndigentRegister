Public Class Complaints
   
    Public Function GetComplaintNature(ByVal GetComplaintNatureTypeID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintNature " & GetComplaintNatureTypeID & ""
        GetComplaintNature = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintStatus() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetComplaintStatus"
        GetComplaintStatus = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintOutcomes(ByVal GetComplaintStatusID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintOutcome " & GetComplaintStatusID & ""
        GetComplaintOutcomes = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaints() As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaint"
        GetComplaints = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsearch(ByVal ComplaintREFNo As String, ByVal DGmemoNo As String, ByVal UserId As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsearch '" & ComplaintREFNo & "','" & DGmemoNo & "','" & UserId & "'"
        GetComplaintsearch = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetIComplaintsearch(ByVal ComplaintREFNo As String, ByVal DGmemoNo As String, ByVal UserId As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetIComplaintsearch '" & ComplaintREFNo & "','" & DGmemoNo & "','" & UserId & "'"
        GetIComplaintsearch = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsByMemberID(ByVal MemberID As String, ByVal DirectorateID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsbyMemberID '" & MemberID & "','" & DirectorateID & "'"
        GetComplaintsByMemberID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsReferedtoCCC() As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsforCCC"
        GetComplaintsReferedtoCCC = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsByDirectorID(ByVal DirectorID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsByDirectorateID '" & DirectorID & "'"
        GetComplaintsByDirectorID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsByInvestigatorID(ByVal InvestigatorID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsbyInvestigatorID '" & InvestigatorID & "'"
        GetComplaintsByInvestigatorID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsByReportusers(ByVal OfficeID As String, ByVal DirectorateID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsByReportusers '" & OfficeID & "','" & DirectorateID & "'"
        GetComplaintsByReportusers = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsByGrievienceRefno(ByVal InvestigatorID As String, ByVal FName As String, ByVal Surname As String, ByVal IDnumber As String, ByVal Grefno As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsbyGrievienceRefno '" & InvestigatorID & "','" & FName & "','" & Surname & "','" & IDnumber & "','" & Grefno & "'"
        GetComplaintsByGrievienceRefno = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsByComplaintID(ByVal ComplaintID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsbyComplaintID " & ComplaintID & ""
        GetComplaintsByComplaintID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintsByComplaintRefID(ByVal ComplaintRefID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintsbyComplaintRefID '" & ComplaintRefID & "'"
        GetComplaintsByComplaintRefID = obj.GetDatatable(SQL)
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
    'Public Function AddComplaint(ByVal FileRefno As String, ByVal DGRefno As String, ByVal Sentby As Integer, ByVal sentto As Integer, ByVal datesent As String, ByVal datereceived As String, ByVal datereceivedbychief As String, ByVal DeptLogged As Integer, ByVal EmpDept As Integer, ByVal Rep As String, ByVal Rank As String, ByVal Confidential As Integer, ByVal natureType As Integer, ByVal Nature As String, ByVal Status As Integer, ByVal outcome As Integer, ByVal Cmments As String, ByVal memberid As Integer, ByVal UserID As Integer, ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal ProvinceID As Integer) As Data.DataTable
    'Public Function AddComplaint(ByVal FileRefno As String, ByVal Dgmemono As String, ByVal nachcaseno As String, ByVal UserID As Integer) As Data.DataTable

    '    Dim strSQL As String
    '    Dim obj As DataLayer.Database = New DataLayer.Database
    '    strSQL = "Exec sp_AddComplaint '" & FileRefno & "','" & Dgmemono & "','" & nachcaseno & "'," & UserID & ""
    '    AddComplaint = obj.GetDatatable(strSQL)
    '    'Return UpdateMember
    'End Function
    Public Function AddDirectorComplaint(ByVal NACHCaseNO As String, ByVal FileRefno As String, ByVal DGRefno As String, ByVal Sentby As Integer, ByVal sentto As Integer, ByVal datesent As String, ByVal datereceived As String, ByVal datereceivedbychief As String, ByVal DeptLogged As Integer, ByVal EmpDept As Integer, ByVal SubmissionNo As String, ByVal Confidential As Integer, ByVal natureType As Integer, ByVal Nature As String, ByVal Status As Integer, ByVal Anonymous As Integer, ByVal Firstname As String, ByVal Lastname As String, ByVal UserID As Integer, ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal ProvinceID As Integer, ByVal handlingdate As String, ByVal race As String, ByVal gender As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_AddComplaint ,'" & NACHCaseNO & "','" & FileRefno & "','" & DGRefno & "','" & Sentby & "'," & sentto & ",'" & datesent & "','" & datereceived & "','" & datereceivedbychief & "'," & DeptLogged & "," & EmpDept & ",'" & NACHCaseNO & "','" & SubmissionNo & "'," & Confidential & "," & natureType & "," & Nature & "," & Status & "," & Anonymous & ",'" & Firstname & "'," & Lastname & "," & UserID & "," & OfficeID & "," & DirectorateID & "," & ProvinceID & ",'" & handlingdate & "','" & race & "','" & gender & "'"
        AddDirectorComplaint = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateHandling(ByVal ComplaintStatusID As String, ByVal ComplaintsHandling As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateHandling '" & ComplaintStatusID & "','" & ComplaintsHandling & "'"
        UpdateHandling = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function DeleteHandling(ByVal HandlingID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_DeleteHandling '" & HandlingID & "'"
        DeleteHandling = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember 
    End Function
    Public Function DeleteOccupentDetails(ByVal ID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "delete from IndegentOccupantDetails where ID = '" & ID & "'"
        DeleteOccupentDetails = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function DeleteFile(ByVal ID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_DeleteFile '" & ID & "'"
        DeleteFile = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function AddComplaint(ByVal NachCaseno As String, ByVal FileRefno As String, ByVal DGRefno As String, ByVal SubmissionNo As String, _
                                    ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal UserID As Integer, _
                                    ByVal datesent As String, ByVal datereceived As String, _
                                    ByVal Sentto As String, ByVal ProvinceID As Integer, _
                                    ByVal DeptLogged As Integer, ByVal Anonymous As Integer, ByVal Title As Integer, _
                                    ByVal Firstname As String, ByVal Lastname As String, _
                                    ByVal natureType As Integer, ByVal PriorityLevels As String, _
                                    ByVal ITypes As Integer, ByVal GStstus As Integer, _
                                    ByVal HandlingDate As String, ByVal txtHandling As String, _
                                    ByVal txtstatus As String, ByVal txtOrganisation As String, _
                                    ByVal txtPhone As String, ByVal txtEmail As String, _
                                    ByVal txtAddress As String, ByVal txtPAddress As String, ByVal Currentuser As String, ByVal Summaryofcase As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_AddComplaint '" & NachCaseno & "','" & FileRefno & "','" & DGRefno & "','" & SubmissionNo & "','" & OfficeID & "','" & DirectorateID & "','" & UserID & "','" & datesent & "','" & datereceived & "','" & Sentto & "','" & ProvinceID & "','" & DeptLogged & "','" & Anonymous & "','" & Title & "','" & Firstname & "','" & Lastname & "','" & natureType & "','" & PriorityLevels & "','" & ITypes & "','" & GStstus & "','" & HandlingDate & "','" & txtHandling & "','" & txtstatus & "','" & txtOrganisation & "','" & txtPhone & "','" & txtEmail & "','" & txtAddress & "','" & txtPAddress & "','" & Currentuser & "','" & summaryofcase & "'"
        AddComplaint = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateComplaint(ByVal ComplaintID As Integer, ByVal ComplaintRefno As String, ByVal NachCaseno As String, ByVal FileRefno As String, ByVal DGRefno As String, ByVal SubmissionNo As String, _
                                    ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal UserID As Integer, _
                                    ByVal datesent As String, ByVal datereceived As String, _
                                    ByVal Sentto As String, ByVal ProvinceID As Integer, _
                                    ByVal DeptLogged As Integer, ByVal Anonymous As Integer, ByVal Title As Integer, _
                                    ByVal Firstname As String, ByVal Lastname As String, _
                                    ByVal natureType As Integer, ByVal PriorityLevels As String, _
                                    ByVal ITypes As Integer, ByVal GStstus As Integer, _
                                    ByVal HandlingDate As String, ByVal txtHandling As String, _
                                    ByVal txtstatus As String, ByVal txtorganisation As String, _
                                    ByVal txtPhone As String, ByVal txtEmail As String, _
                                    ByVal txtAddress As String, ByVal txtPAddress As String, ByVal Currentuser As String, ByVal summaryofcase As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateComplaint " & ComplaintID & ",'" & ComplaintRefno & "','" & NachCaseno & "','" & FileRefno & "','" & DGRefno & "','" & SubmissionNo & "','" & OfficeID & "','" & DirectorateID & "','" & UserID & "','" & datesent & "','" & datereceived & "','" & Sentto & "','" & ProvinceID & "','" & DeptLogged & "','" & Anonymous & "','" & Title & "','" & Firstname & "','" & Lastname & "','" & natureType & "','" & PriorityLevels & "','" & ITypes & "','" & GStstus & "','" & HandlingDate & "','" & txtHandling & "','" & txtstatus & "','" & txtorganisation & "','" & txtPhone & "','" & txtEmail & "','" & txtAddress & "','" & txtPAddress & "','" & Currentuser & "','" & summaryofcase & "'"
        UpdateComplaint = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function AddDirectorComplaint(ByVal NachCaseno As String, ByVal FileRefno As String, ByVal DGRefno As String, ByVal SubmissionNo As String, _
                                    ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal UserID As Integer, _
                                    ByVal datesent As String, ByVal datereceived As String, _
                                    ByVal Sentto As String, ByVal ProvinceID As Integer, _
                                    ByVal DeptLogged As Integer, ByVal Anonymous As Integer, ByVal Title As Integer, _
                                    ByVal Firstname As String, ByVal Lastname As String, _
                                    ByVal natureType As Integer, ByVal PriorityLevels As String, _
                                    ByVal ITypes As Integer, ByVal GStstus As Integer, _
                                    ByVal HandlingDate As String, ByVal txtHandling As String, _
                                    ByVal txtstatus As String, ByVal txtOrganisation As String, _
                                    ByVal txtPhone As String, ByVal txtEmail As String, _
                                    ByVal txtAddress As String, ByVal txtPAddress As String, _
                                    ByVal txtInvestigatorIDs As String, ByVal txtInvestigatorNames As String, ByVal Currentuser As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_AddDirectorComplaint '" & NachCaseno & "','" & FileRefno & "','" & DGRefno & "','" & SubmissionNo & "','" & OfficeID & "','" & DirectorateID & "','" & UserID & "','" & datesent & "','" & datereceived & "','" & Sentto & "','" & ProvinceID & "','" & DeptLogged & "','" & Anonymous & "','" & Title & "','" & Firstname & "','" & Lastname & "','" & natureType & "','" & PriorityLevels & "','" & ITypes & "','" & GStstus & "','" & HandlingDate & "','" & txtHandling & "','" & txtstatus & "','" & txtOrganisation & "','" & txtPhone & "','" & txtEmail & "','" & txtAddress & "','" & txtPAddress & "','" & txtInvestigatorIDs & "','" & txtInvestigatorNames & "','" & Currentuser & "'"
        AddDirectorComplaint = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateDirectorComplaint(ByVal ComplaintID As Integer, ByVal ComplaintRefno As String, ByVal NachCaseno As String, ByVal FileRefno As String, ByVal DGRefno As String, ByVal SubmissionNo As String, _
                                    ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal UserID As Integer, _
                                    ByVal datesent As String, ByVal datereceived As String, _
                                    ByVal Sentto As String, ByVal ProvinceID As Integer, _
                                    ByVal DeptLogged As Integer, ByVal Anonymous As Integer, ByVal Title As Integer, _
                                    ByVal Firstname As String, ByVal Lastname As String, _
                                    ByVal natureType As Integer, ByVal PriorityLevels As String, _
                                    ByVal ITypes As Integer, ByVal GStstus As Integer, _
                                    ByVal HandlingDate As String, ByVal txtHandling As String, _
                                    ByVal txtstatus As String, ByVal txtorganisation As String, _
                                    ByVal txtPhone As String, ByVal txtEmail As String, _
                                    ByVal txtAddress As String, ByVal txtPAddress As String, _
                                    ByVal txtInvestigatorIDs As String, ByVal txtInvestigatorNames As String, ByVal Currentuser As String) As Data.DataTable

        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateDirectorComplaint " & ComplaintID & ",'" & ComplaintRefno & "','" & NachCaseno & "','" & FileRefno & "','" & DGRefno & "','" & SubmissionNo & "','" & OfficeID & "','" & DirectorateID & "','" & UserID & "','" & datesent & "','" & datereceived & "','" & Sentto & "','" & ProvinceID & "','" & DeptLogged & "','" & Anonymous & "','" & Title & "','" & Firstname & "','" & Lastname & "','" & natureType & "','" & PriorityLevels & "','" & ITypes & "','" & GStstus & "','" & HandlingDate & "','" & txtHandling & "','" & txtstatus & "','" & txtorganisation & "','" & txtPhone & "','" & txtEmail & "','" & txtAddress & "','" & txtPAddress & "','" & txtInvestigatorIDs & "','" & txtInvestigatorNames & "','" & Currentuser & "'"
        UpdateDirectorComplaint = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateDataCapturerComplaint(ByVal ComplaintID As Integer, ByVal ComplaintRefno As String, ByVal FileRefno As String, ByVal DGRefno As String, ByVal Sentby As Integer, ByVal sentto As Integer, ByVal datesent As String, ByVal datereceived As String, ByVal datereceivedbychief As String, ByVal DeptLogged As Integer, ByVal EmpDept As Integer, ByVal NACHCaseNO As String, ByVal SubmissionNo As String, ByVal Confidential As Integer, ByVal natureType As Integer, ByVal Nature As String, ByVal Status As Integer, ByVal Anonymous As Integer, ByVal Firstname As String, ByVal Lastname As String, ByVal UserID As Integer, ByVal OfficeID As Integer, ByVal DirectorateID As Integer, ByVal ProvinceID As Integer, ByVal handlingdate As String, ByVal race As String, ByVal gender As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateComplaint " & ComplaintID & ",'" & ComplaintRefno & "','" & FileRefno & "','" & DGRefno & "','" & Sentby & "'," & sentto & ",'" & datesent & "','" & datereceived & "','" & datereceivedbychief & "'," & DeptLogged & "," & EmpDept & ",'" & NACHCaseNO & "','" & SubmissionNo & "'," & Confidential & "," & natureType & "," & Nature & "," & Status & "," & Anonymous & ",'" & Firstname & "'," & Lastname & "," & UserID & "," & OfficeID & "," & DirectorateID & "," & ProvinceID & ",'" & handlingdate & "','" & race & "','" & gender & "'"
        UpdateDataCapturerComplaint = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UploadFile(ByVal ComplaintRefno As String, ByVal Filename As String, ByVal Filepath As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_FileUpload '" & ComplaintRefno & "','" & Filename & "','" & Filepath & "'"
        UploadFile = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UploadFiles(ByVal ComplaintRefno As String, ByVal Name As String, ByVal ContentType As String, ByVal Data As Byte) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_FileUploads '" & ComplaintRefno & "','" & Name & "','" & ContentType & "','" & Data & "'"
        UploadFiles = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateComplaint(ByVal ComplaintID As Integer, ByVal FileRefno As String, ByVal Dgmemono As String, ByVal nachcaseno As String, ByVal UserID As Integer) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateComplaint " & ComplaintID & ",'" & FileRefno & "','" & Dgmemono & "','" & nachcaseno & "'," & UserID & ""
        UpdateComplaint = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function UpdateComplaintStatus(ByVal ComplaintID As Integer, ByVal Status As Integer, ByVal txtStatus As String, ByVal Handling As String, ByVal HandlingDate As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateComplaintStatus " & ComplaintID & "," & Status & ",'" & txtStatus & "','" & Handling & "','" & HandlingDate & "'"
        UpdateComplaintStatus = obj.GetDatatable(strSQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateComplaintInvestigators(ByVal ComplaintID As Integer, ByVal UserID As Integer, ByVal Username As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateComplaintInvestigators " & ComplaintID & "," & UserID & ",'" & Username & "'"
        UpdateComplaintInvestigators = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        'Return UpdateMember
    End Function
    Public Function GetComplaintProgress(ByVal ComplaintID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintProgress '" & ComplaintID & "'"
        GetComplaintProgress = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintInvestigators(ByVal ComplaintID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintInvestigators '" & ComplaintID & "'"
        GetComplaintInvestigators = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintHandling(ByVal ComplaintID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetComplaintHandling '" & ComplaintID & "'"
        GetComplaintHandling = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function

    Public Function GetMembersByMemberID(ByVal MemberID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetMembersbyMemberID " & MemberID & ""
        GetMembersByMemberID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintMemberEmailDetails(ByVal ComplaintID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetDirectoremailbyComplaintID " & ComplaintID & ""
        GetComplaintMemberEmailDetails = obj.GetDatatable(SQL)
    End Function
    Public Function GetComplaintinvestigatorEmailDetails(ByVal UserID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetInvestigatoremailbyComplaintID " & UserID & ""
        GetComplaintinvestigatorEmailDetails = obj.GetDatatable(SQL)
    End Function
    Public Function GetUploadFiles(ByVal ComplaintID As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetFileupload " & ComplaintID & ""
        GetUploadFiles = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function UploadFiles(ByVal INDRefno As String, ByVal Name As String, ByVal ContentType As String, ByVal Data As Array) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "insert into Files (INDRefno,Name,ContentType,Data) values ('" & INDRefno & "','" & Name & "', '" & ContentType & "',"")"
        UploadFiles = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetDocuments(ByVal INDRefno As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "select * from Files where APPIDnumber ='" & INDRefno & "' "
        GetDocuments = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetOccupents(ByVal AppIDNumber As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "select * from IndegentOccupantDetails where AppIDNumber ='" & AppIDNumber & "' "
        GetOccupents = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function SQLDate(ByVal dIn As Date) As String

        Dim sTmp As String

        sTmp = "" & Format$(dIn, "yyyy/MM/dd") & ""
        'If Not IsMissing(bComma) Then
        '    If bComma = True Then sTmp = sTmp & ", "
        'End If

        SQLDate = sTmp

        Return SQLDate
    End Function
    Function StringToDate(ByVal strInputText As String) As String
        Dim dt As Date = strInputText
        Return (Format(dt, "yyyy-MM-dd"))
    End Function
End Class
