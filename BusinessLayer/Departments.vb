Public Class Departments
    Public Function GetDepartmentDetails() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetDepartments_List"
        GetDepartmentDetails = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetDepartmentDetailsBYID(ByVal DepartmentID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetDepartment_BYID " & DepartmentID & ""
        GetDepartmentDetailsBYID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateDepartment(ByVal DepartmentID As Integer, ByVal DepartmentDesc As String, ByVal DirectorateID As Integer, ByVal Status As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateDepartment " & DepartmentID & ",'" & DepartmentDesc & "'," & DirectorateID & ",'" & Status & "'"
        UpdateDepartment = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateDepartment
    End Function
    Public Function InactiveDepartment(ByVal DepartmentID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Update Department set Status='I' Where DepartmentID=" & DepartmentID & ""
        InactiveDepartment = obj.Execute(strSQL)
        obj.Connection.Close()
        Return InactiveDepartment
    End Function
    Public Function activeDepartment(ByVal DepartmentID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Update Department set Status='A' Where DepartmentID=" & DepartmentID & ""
        activeDepartment = obj.Execute(strSQL)
        obj.Connection.Close()
        Return activeDepartment
    End Function
    Public Function DeleteDepartment(ByVal DepartmentID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Delete from Department Where DepartmentID=" & DepartmentID & ""
        DeleteDepartment = obj.Execute(strSQL)
        obj.Connection.Close()
        Return DeleteDepartment
    End Function
End Class
