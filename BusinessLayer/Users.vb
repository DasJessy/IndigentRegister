Imports System.Data
Public Class users
    Public Function GetUser(ByVal Id As String, ByVal Password As String) As Data.DataTable
        Dim SQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        SQL = "exec sp_Getuser '" & Id & "','" & Password & "'"
        GetUser = obj.GetDatatable(SQL)
        obj.Connection.Close()
    End Function
    Public Function GetUserList() As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "exec sp_GetuserList"
        GetUserList = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        Return GetUserList
    End Function
    Public Function GetUsers() As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_GetUsers"
        GetUsers = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        Return GetUsers
    End Function
    Public Function GetUsersByDirectorate(ByVal DirectorateID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_GetusersbyDirectorate '" & DirectorateID & "'"
        GetUsersByDirectorate = obj.GetDatatable(strSQL)
        obj.Connection.Close()
    End Function
    Public Function GetuserPassword(ByVal Email As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_GetuserPassword '" & Email & "'"
        GetuserPassword = obj.GetDatatable(strSQL)
        obj.Connection.Close()
    End Function
    Public Function GetuserbyEmail(ByVal Email As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_GetuserbyEmail '" & Email & "'"
        GetuserbyEmail = obj.GetDatatable(strSQL)
        obj.Connection.Close()
    End Function
    Public Function UpdateUserPassword(ByVal Email As String, ByVal Password As String, ByVal NewPassword As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateUserPassword '" & Email & "','" & Password & "','" & NewPassword & "'"
        UpdateUserPassword = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateUserPassword

    End Function
    Public Function GetInvestigatorByDirectorate(ByVal DirectorateID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_InvestigatorbyDirectorate '" & DirectorateID & "'"
        GetInvestigatorByDirectorate = obj.GetDatatable(strSQL)
        obj.Connection.Close()
    End Function
    Public Function GetDirectorsByDirectorate(ByVal DirectorateID As String) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_DirectorsbyDirectorate '" & DirectorateID & "'"
        GetDirectorsByDirectorate = obj.GetDatatable(strSQL)
        obj.Connection.Close()
    End Function
    Public Function GetUserbyID(ByVal intUser As Integer) As Data.DataTable
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Select * from Userprofile where UserID=" & intUser & ""
        GetUserbyID = obj.GetDatatable(strSQL)
        obj.Connection.Close()
        Return GetUserbyID
    End Function
    Public Function AddUser(ByVal UserName As String, ByVal Password As String, ByVal Type As String, ByVal Status As String, ByVal Telephone As String, ByVal Email As String, ByVal Cell As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Insert into UserProfile (UserName,Password,Type,Status,Telephone,Email,Cell)Values('" & UserName & "','" & Password & "','" & Type & "','" & Status & "','" & IIf(Telephone = "", Nothing, Telephone) & "','" & IIf(Email = "", Nothing, Email) & "','" & IIf(Cell = "", Nothing, Cell) & "')"
        AddUser = obj.Execute(strSQL)
        obj.Connection.Close()
        Return AddUser
    End Function
    Public Function UpdateUser(ByVal UserID As Integer, ByVal UserName As String, ByVal Password As String, ByVal Name As String, ByVal Surname As String, ByVal Type As String, ByVal Status As String, ByVal Telephone As String, ByVal Email As String, ByVal Cell As String, ByVal Province As String, ByVal OfficeID As String) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Exec sp_UpdateUser " & UserID & ",'" & UserName & "','" & Password & "','" & Name & "','" & Surname & "','" & Type & "','" & Status & "','" & Telephone & "','" & Email & "','" & Cell & "','" & Province & "','" & OfficeID & "'"
        UpdateUser = obj.Execute(strSQL)
        obj.Connection.Close()
        Return UpdateUser
    End Function
    Public Function InactiveUser(ByVal UserID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Update UserProfile set userStatus='I' Where UserID=" & UserID & ""
        InactiveUser = obj.Execute(strSQL)
        obj.Connection.Close()
        Return InactiveUser
    End Function
    Public Function activeUser(ByVal UserID As Integer) As Boolean
        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Update UserProfile set userStatus='A' Where UserID=" & UserID & ""
        activeUser = obj.Execute(strSQL)
        obj.Connection.Close()
        Return activeUser
    End Function
    Public Function DeleteUser(ByVal UserID As Integer) As Boolean

        Dim strSQL As String
        Dim obj As DataLayer.Database = New DataLayer.Database
        strSQL = "Delete from UserProfile Where UserID=" & UserID & ""
        DeleteUser = obj.Execute(strSQL)
        obj.Connection.Close()
        Return DeleteUser

    End Function
End Class
