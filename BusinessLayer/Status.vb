Public Class Status
    Public Function GetComplaintStatuses() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetComplaintStatuses"
        GetComplaintStatuses = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintStatusesByID(ByVal ID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetComplaintStatusesbyID " & ID & ""
        GetComplaintStatusesByID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateComplaintStatuses(ByVal ID As Integer, ByVal Desc As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateNatureTypes " & ID & ",'" & Desc & "'"
        UpdateComplaintStatuses = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateComplaintStatuses
    End Function
End Class
