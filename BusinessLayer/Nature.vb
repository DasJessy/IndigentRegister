Public Class Nature
    Public Function GetComplaintNatureTypes() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetComplaintNatureTypes"
        GetComplaintNatureTypes = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetComplaintNatureTypesByID(ByVal NatureTypeID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetComplaintNatureTypesbyID " & NatureTypeID & ""
        GetComplaintNatureTypesByID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateNatureType(ByVal NatureID As Integer, ByVal NatureDesc As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateNatureTypes " & NatureID & ",'" & NatureDesc & "'"
        UpdateNatureType = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateNatureType
    End Function
End Class
