Imports System
Imports System.Collections
Imports System.Configuration
Imports System.Data
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.IO
Imports System.Data.SqlClient
Partial Class Officer_FileUpload
    Inherits System.Web.UI.Page
    Private Property ComplaintID() As Integer
        Get
            Return CInt(ViewState("ComplaintID"))
        End Get
        Set(ByVal value As Integer)
            ViewState("ComplaintID") = 10
            'value()
        End Set
    End Property
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim filepath As String = Server.MapPath("~/Upload/")
        Dim uploadedFiles As HttpFileCollection = Request.Files
        Span1.Text = String.Empty

        For i As Integer = 0 To uploadedFiles.Count - 1
            Dim userPostedFile As HttpPostedFile = uploadedFiles(i)

            Try
                Dim filename As String = Path.GetFileName(userPostedFile.FileName)
                Dim Id As String = ComplaintID.ToString
                Dim contentType As String = userPostedFile.ContentType
                Using fs As Stream = userPostedFile.InputStream
                    Using br As New BinaryReader(fs)
                        Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))

                        'Dim ObjUserBll As New BusinessLayer.Complaints
                        'Dim Documents As New DataTable
                        'Dim strStatus As String

                        'Documents = ObjUserBll.UploadFiles(4, filename, contentType, bytes)

                        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
                        Using con As New SqlConnection(constr)
                            Dim query As String = "insert into Files (ComplaintID,Name,ContentType,Data) values (@ComplaintId,@Name, @ContentType, @Data)"
                            Using cmd As New SqlCommand(query)
                                cmd.Connection = con
                                cmd.Parameters.Add("@ComplaintId", SqlDbType.VarChar).Value = Id
                                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename
                                cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contentType
                                cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
                                con.Open()
                                cmd.ExecuteNonQuery()
                                con.Close()
                            End Using
                        End Using
                    End Using
                End Using
            Catch Ex As Exception
                Span1.Text += "Error: <br>" + Ex.Message
            End Try
        Next
        Response.Redirect(Request.Url.AbsoluteUri)


        'If userPostedFile.ContentLength > 0 Then
        '    Span1.Text += "<u>File #" & (i + 1) & "</u><br>"
        '    Span1.Text += "File Content Type: " + userPostedFile.ContentType & "<br>"
        '    Span1.Text += "File Size: " + userPostedFile.ContentLength & "kb<br>"
        '    Span1.Text += "File Name: " + userPostedFile.FileName & "<br>"

        '    userPostedFile.SaveAs(filepath & "\" & Path.GetFileName(userPostedFile.FileName))
        '    Span1.Text += "Location where saved: " & filepath & "\" & Path.GetFileName(userPostedFile.FileName) & "<p>"
        'End If

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ComplaintID = Request.QueryString("ComplaintID")
            BindGrid()
        End If
    End Sub
    'Private Sub BindGrid()
    '    Dim constr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
    '    Using con As New SqlConnection(constr)
    '        Using cmd As New SqlCommand()
    '            cmd.CommandText = "select Id, Name from tblFiles"
    '            cmd.Connection = con
    '            con.Open()
    '            GridView1.DataSource = cmd.ExecuteReader()
    '            GridView1.DataBind()
    '            con.Close()
    '        End Using
    '    End Using
    'End Sub
    Private Sub BindGrid()
        Dim ds As Data.DataTable
        Dim ObjUserBll As New BusinessLayer.Complaints
        ds = ObjUserBll.GetDocuments(ComplaintID)
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub
    'Protected Sub Upload(ByVal sender As Object, ByVal e As EventArgs)
    '    Dim filename As String = Path.GetFileName(FileUpload1.PostedFile.FileName)
    '    Dim contentType As String = FileUpload1.PostedFile.ContentType
    '    Using fs As Stream = FileUpload1.PostedFile.InputStream
    '        Using br As New BinaryReader(fs)
    '            Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
    '            Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
    '            Using con As New SqlConnection(constr)
    '                Dim query As String = "insert into tblFiles values (@Name, @ContentType, @Data)"
    '                Using cmd As New SqlCommand(query)
    '                    cmd.Connection = con
    '                    cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename
    '                    cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contentType
    '                    cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
    '                    con.Open()
    '                    cmd.ExecuteNonQuery()
    '                    con.Close()
    '                End Using
    '            End Using
    '        End Using
    '    End Using
    '    Response.Redirect(Request.Url.AbsoluteUri)
    'End Sub
    Protected Sub DownloadFile(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As Integer = Integer.Parse(TryCast(sender, LinkButton).CommandArgument)
        Dim bytes As Byte()
        Dim fileName As String, contentType As String
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                'cmd.CommandText = "select Name, Data, ContentType from Files where Id=@Id"
                cmd.CommandText = "select Name, Data, ContentType from Files where Id=5"
                cmd.Parameters.AddWithValue("@Id", id)
                cmd.Connection = con
                con.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    sdr.Read()
                    bytes = DirectCast(sdr("Data"), Byte())
                    contentType = sdr("ContentType").ToString()
                    fileName = sdr("Name").ToString()
                End Using
                con.Close()
            End Using
        End Using
        Response.Clear()
        Response.Buffer = True
        Response.Charset = ""
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.ContentType = contentType
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName)
        Response.BinaryWrite(bytes)
        Response.Flush()
        Response.End()
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim row As GridViewRow = DirectCast(GridView1.Rows(e.RowIndex), GridViewRow)

        Dim lblHandlingID As Label = DirectCast(row.FindControl("ID"), Label)
        'Dim txtHandlingComments As TextBox = DirectCast(row.FindControl("txtHandling"), TextBox)
        GridView1.EditIndex = -1

        Dim ObjMemberBll As New BusinessLayer.Complaints
        Dim dt As Data.DataTable
        dt = ObjMemberBll.Deletefile(lblHandlingID.Text)
        BindGrid()
    End Sub
End Class
