Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO

Public Class UploadRL
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            conn = New SqlConnection
            conn.ConnectionString = "Data Source=hp-hp;Initial Catalog=student;User ID=sa;pwd=student"
            conn.Open()
        Catch ex As Exception
            MsgBox("Failed to connect to Database..")
        End Try
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        Dim query As String
        query = "select username from stuRfreeDetail where username = '" & TextBox1.Text & "'"
        comm = New SqlCommand(query, conn)
        reader = comm.ExecuteReader
        If (reader.Read) Then
            reader.Close()
            comm = New SqlCommand("select rafreeEmail1,rafreeEmail2 from rafree_info where username = '" & TextBox1.Text & "'", conn)
            reader = comm.ExecuteReader
            Dim refreeOrgEmail1, refreeOrgEmail2 As String
            If reader.Read Then
                refreeOrgEmail1 = reader.GetString(0)
                refreeOrgEmail2 = reader.GetString(1)
                If refreeOrgEmail1 = TextBox2.Text Then
                    reader.Close()

                    'for checking refree1 has alredy uploaded recommendation letter
                    Dim queryrl1 As String
                    queryrl1 = "select refree1true from stuRfreeDetail where username = '" & TextBox1.Text & "'"
                    comm = New SqlCommand(queryrl1, conn)
                    reader = comm.ExecuteReader
                    If (reader.Read) Then
                        If reader.GetString(0) = "true" Then
                            Response.Write("<script>alert('you have already submitted recommendation letter for this user')</script>")
                            TextBox1.Text = ""
                            TextBox2.Text = ""
                        Else
                            reader.Close()
                            ' Read the file and convert it to Byte Array
                            Dim filePath As String = FileUpload1.PostedFile.FileName
                            Dim filename As String = Path.GetFileName(filePath)
                            Dim ext As String = Path.GetExtension(filename)
                            Dim contenttype As String = String.Empty

                            'Set the contenttype based on File Extension
                            Select Case ext.ToLower
                                Case ".jpg"
                                    contenttype = "image/jpg"
                                    Exit Select
                                Case ".png"
                                    contenttype = "image/png"
                                    Exit Select
                                Case ".doc"
                                    contenttype = "application/vnd.ms-word"
                                    Exit Select
                                Case ".docx"
                                    contenttype = "application/vnd.ms-word"
                                    Exit Select
                                Case ".pdf"
                                    contenttype = "application/pdf"
                                    Exit Select
                            End Select
                            If contenttype <> String.Empty Then
                                Dim fs As Stream = FileUpload1.PostedFile.InputStream
                                Dim br As New BinaryReader(fs)
                                Dim bytes As Byte() = br.ReadBytes(fs.Length)

                                'insert the recommendation letter1 into database
                                Dim strQueryRL1 As String = "update stuRfreeDetail set refree1filename=@Name, refree1contentType=@ContentType, refree1data=@Data, refree1true = 'true'  where username='" & TextBox1.Text & "'"
                                comm = New SqlCommand(strQueryRL1, conn)
                                comm.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename
                                comm.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype
                                comm.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
                                comm.ExecuteNonQuery()
                                'MsgBox("File Uploaded Successfully")
                                Response.Redirect("thanks.aspx", False)
                            Else
                                Response.Write("File format not recognised")
                                TextBox1.Text = ""
                                TextBox2.Text = ""
                            End If
                        End If
                    End If
                ElseIf refreeOrgEmail2 = TextBox2.Text Then
                    reader.Close()

                    'for checking refree2 has alredy uploaded recommendation letter
                    Dim queryrl2 As String
                    queryrl2 = "select refree2true from stuRfreeDetail where username = '" & TextBox1.Text & "'"
                    comm = New SqlCommand(queryrl2, conn)
                    reader = comm.ExecuteReader
                    If (reader.Read) Then
                        If reader.GetString(0) = "true" Then
                            Response.Write("<script>alert('you have already submitted recommendation letter for this user')</script>")
                            TextBox1.Text = ""
                            TextBox2.Text = ""
                        Else
                            reader.Close()
                            ' Read the file and convert it to Byte Array
                            Dim filePath As String = FileUpload1.PostedFile.FileName
                            Dim filename As String = Path.GetFileName(filePath)
                            Dim ext As String = Path.GetExtension(filename)
                            Dim contenttype As String = String.Empty

                            'Set the contenttype based on File Extension
                            Select Case ext.ToLower
                                Case ".jpg"
                                    contenttype = "image/jpg"
                                    Exit Select
                                Case ".png"
                                    contenttype = "image/png"
                                    Exit Select
                                Case ".doc"
                                    contenttype = "application/vnd.ms-word"
                                    Exit Select
                                Case ".docx"
                                    contenttype = "application/vnd.ms-word"
                                    Exit Select
                                Case ".pdf"
                                    contenttype = "application/pdf"
                                    Exit Select
                            End Select
                            If contenttype <> String.Empty Then
                                Dim fs As Stream = FileUpload1.PostedFile.InputStream
                                Dim br As New BinaryReader(fs)
                                Dim bytes As Byte() = br.ReadBytes(fs.Length)

                                'insert the recommendation letter1 into database
                                Dim strQueryRL2 As String = "update stuRfreeDetail set refree2filename=@Name, refree2contentType=@ContentType, refree2data=@Data, refree2true = 'true' where username='" & TextBox1.Text & "'"
                                comm = New SqlCommand(strQueryRL2, conn)
                                comm.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename
                                comm.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype
                                comm.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
                                comm.ExecuteNonQuery()
                                'MsgBox("File Uploaded Successfully")
                                Response.Redirect("thanks.aspx", False)
                            Else
                                Response.Write("File format not recognised")
                                TextBox1.Text = ""
                                TextBox2.Text = ""
                            End If
                        End If
                    End If
                Else
                    Response.Write("<script>alert('your email not found')</script>")
                    TextBox1.Text = ""
                    TextBox2.Text = ""
                End If
            End If
        Else
            Response.Write("<script>alert('username not found')</script>")
            TextBox1.Text = ""
            TextBox2.Text = ""
        End If
    End Sub
End Class