Imports System.Data.SqlClient
Imports System.CcmdUploadDocuments_Clickonfiguration
Public Class Database2
    Private m_cnDB As SqlConnection
    Public Sub New()

        Dim objCnf As New AppSettingsReader
        Dim strOutput As New String("")

        strOutput = objCnf.GetValue("ConnectionStringAcc", strOutput.GetType())
        If strOutput = "" Then
            Throw New Exception("Connection string not found " _
               & "in application configuration file.")
        Else
            m_cnDB = New SqlConnection(strOutput)
            m_cnDB.Open()
        End If
    End Sub

    Public Sub New(ByVal ConnectionString As String)
        m_cnDB = New SqlConnection(ConnectionString)
        m_cnDB.Open()
    End Sub
    Public ReadOnly Property Connection() As SqlConnection
        Get
            Return m_cnDB
        End Get
    End Property
    Public Function BuildStoredProcedure(ByVal procedureName As String, ByVal deriveParameters As Boolean) As SqlCommand
        Dim command As SqlCommand
        Try
            command = Me.m_cnDB.CreateCommand()
            command.CommandText = procedureName
            command.CommandType = CommandType.StoredProcedure

            If deriveParameters Then
                SqlCommandBuilder.DeriveParameters(command)
            End If

            Return command
        Catch ex As Exception
            'LogDataBaseError(ex)
            Throw ex
        Finally
            command = Nothing
        End Try
    End Function

    Public Function ExecuteNonQuery(ByVal comm As SqlCommand) As Integer
        Try
            Dim retVal As Integer = comm.ExecuteNonQuery()
            'Rows Affected 
            If comm.Parameters.Count > 0 Then
                If comm.Parameters(0).ParameterName.ToUpper() = "@RETURN_VALUE" Then
                    If Convert.ToInt32(comm.Parameters(0).Value) > 0 Then
                        retVal = Convert.ToInt32(comm.Parameters(0).Value)
                    End If
                End If
            End If
            If (m_cnDB IsNot Nothing) AndAlso (m_cnDB.State <> ConnectionState.Closed) Then
                m_cnDB.Close()
            End If
            m_cnDB = Nothing

            Return retVal
        Catch ex As Exception
            'LogDataBaseError(ex)
            Throw ex
        End Try
    End Function
    Public Function Execute(ByVal SQL As String) As Integer
        Dim lngRecords As Integer
        Dim cmdQuery As New SqlCommand
        cmdQuery.Connection = m_cnDB
        cmdQuery.CommandText = SQL
        cmdQuery.CommandType = Data.CommandType.Text
        lngRecords = cmdQuery.ExecuteNonQuery()
        'm_cnDB.Close()
        'm_cnDB.Dispose()
    End Function
    Public Function ExecuteStoredProc(ByVal SQL As String) As Integer
        Dim lngRecords As Integer
        Dim cmdQuery As New SqlCommand
        cmdQuery.Connection = m_cnDB
        cmdQuery.CommandText = SQL
        cmdQuery.CommandType = Data.CommandType.StoredProcedure
        lngRecords = cmdQuery.ExecuteNonQuery()
    End Function
    Public Function GetDataReader(ByVal SQL As String) As SqlDataReader
        Dim cmdQuery As New SqlCommand
        Dim dr As SqlDataReader
        cmdQuery.Connection = m_cnDB
        cmdQuery.CommandText = SQL
        cmdQuery.CommandType = Data.CommandType.Text
        dr = cmdQuery.ExecuteReader
        dr.Read()
        Return dr
    End Function
    Public Function ReturnDataReader(ByVal SQL As String) As SqlDataReader
        Dim cmdQuery As New SqlCommand
        Dim dr As SqlDataReader
        cmdQuery.Connection = m_cnDB
        cmdQuery.CommandText = SQL
        cmdQuery.CommandType = Data.CommandType.Text
        dr = cmdQuery.ExecuteReader
        dr.Read()
        Return dr
    End Function
    Public Function GetDataSet(ByVal SQL As String) As Data.DataSet
        Dim da As New SqlDataAdapter(SQL, m_cnDB)
        Dim ds As New Data.DataSet("Results")
        da.Fill(ds)
        Return ds
    End Function
    Public Function GetDatatable(ByVal SQL As String) As Data.DataTable
        Dim da As New SqlDataAdapter(SQL, m_cnDB)
        Dim dt As New Data.DataTable("Results")
        da.Fill(dt)
        Return dt
    End Function
    Public Function Clean(ByVal strInput As String) As String
        Return strInput.Replace("'", "''")
    End Function

    Public Function Testconn() As Data.SqlClient.SqlConnection

        Dim objCnf As New AppSettingsReader
        Dim strOutput As New String("")

        strOutput = objCnf.GetValue("ConnectionString", strOutput.GetType())
        If strOutput = "" Then
            Throw New Exception("Connection string not found " _
               & "in application configuration file.")
        Else
            m_cnDB = New SqlConnection(strOutput)
            m_cnDB.Open()
            Return m_cnDB

        End If

    End Function

    Public Sub Close()
        m_cnDB.Close()
        m_cnDB.Dispose()
    End Sub

End Class

