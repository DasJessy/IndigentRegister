Public Class Directorate
    Public Function GetDirectorateDetails() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetDirectorates_List"
        GetDirectorateDetails = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateDirectorate(ByVal DirectorateID As Integer, ByVal Directorate As String, ByVal OfiicedID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateDirectorate " & DirectorateID & ",'" & Directorate & "'," & OfiicedID & ""
        UpdateDirectorate = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateDirectorate
    End Function
    Public Function InactiveDirectorate(ByVal DirectorateID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Update Directorates set Status='I' Where Directorate=" & DirectorateID & ""
        InactiveDirectorate = obj.Execute(strSQL)
        obj.Connection.Close()
        Return InactiveDirectorate
    End Function
    Public Function activeDirectorate(ByVal DirectorateID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Update Directorates set Status='A' Where DirectorateID=" & DirectorateID & ""
        activeDirectorate = obj.Execute(strSQL)
        obj.Connection.Close()
        Return activeDirectorate
    End Function
    Public Function DeleteDirectorate(ByVal DirectorateID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Delete from Directorates Where DirectorateID=" & DirectorateID & ""
        DeleteDirectorate = obj.Execute(strSQL)
        obj.Connection.Close()
        Return DeleteDirectorate
    End Function
    Public Function GetDirectorateBYID(ByVal OfficeID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetDirectorate_BYID " & OfficeID & ""
        obj.Connection.Close()
        GetDirectorateBYID = obj.GetDatatable(SQL)
    End Function
End Class
