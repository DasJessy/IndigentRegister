Public Class Offices
    Public Function GetOfficeDetails() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetOffices_List"
        GetOfficeDetails = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateOffice(ByVal OfiiceID As Integer, ByVal Office As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateOffice " & OfiiceID & ",'" & Office & "'"
        UpdateOffice = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateOffice
    End Function
    Public Function GetOfficeBYID(ByVal OfficeID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetOffice_BYID " & OfficeID & ""
        GetOfficeBYID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
End Class
