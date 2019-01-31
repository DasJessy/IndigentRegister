
Public Class Populate
    Public Function GetDepartmentDetailsByDirectorate(ByVal ProvinceID As String) As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetDepartment_ListByDirectorate '" & ProvinceID & "'"
        GetDepartmentDetailsByDirectorate = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function

    Public Function GetUsertypesByDirectorate(ByVal ProvinceID As String) As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetUsertypes_ListByDirectorate '" & ProvinceID & "'"
        GetUsertypesByDirectorate = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetDepartmentDetails() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetDepartment_List"
        GetDepartmentDetails = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetOfficers() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetOfficers"
        GetOfficers = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetStatus() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "SELECT [StatusID],[StatusDesc]  FROM [Status]"
        GetStatus = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function

    Public Function GetUsertypes() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetUsertypes_List"
        GetUsertypes = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetGender() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetGender"
        GetGender = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetIndigentTypes() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "SELECT [ITYPEID],[ITYPEDESC]FROM [IndigentTypes]"
        GetIndigentTypes = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetWards() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "Select WID,WDESC from wards"
        GetWards = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetPopulationGroup() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetPopulationGroup"
        GetPopulationGroup = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetMaritalStatus() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "SELECT [MID],[MStatusDesc] FROM [MaritalStatus]"
        GetMaritalStatus = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetProvinces() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetProvinces"
        GetProvinces = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetProvincesforMembers() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetProvinces_Members"
        GetProvincesforMembers = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function


    Public Function GetOffices() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetOffice_List"
        GetOffices = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetDirectorateByOfficeID(ByVal OfficeID As String) As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "sp_GetDirectorate_BYOfficeID '" & OfficeID & "'"
        GetDirectorateByOfficeID = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintNatureTypes() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetComplaintNatureTypes"
        GetComplaintNatureTypes = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetTitles() As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetTitles"
        GetTitles = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetPriorityLevels() As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetPriorityLevels"
        GetPriorityLevels = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function

    Public Function GetInvestigationTypes() As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetInvestigationTypes"
        GetInvestigationTypes = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetOccupents(ByVal AppIDnumber As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "select * from IndegentOccupantDetails where AppIDNumber = '" & AppIDnumber & "'"
        GetOccupents = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
End Class
