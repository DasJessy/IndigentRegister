Public Class Roles
    Public Function GetRolesDetails() As Data.DataSet
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_GetRoles_List"
        GetRolesDetails = obj.GetDataSet(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetRoleDetailsBYID(ByVal RoleID As Integer) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec  sp_GetRoles_BYID " & RoleID & ""
        GetRoleDetailsBYID = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateRole(ByVal RoleID As Integer, ByVal RoleDesc As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateRoles " & RoleID & ",'" & RoleDesc & "'"
        UpdateRole = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateRole
    End Function
End Class
