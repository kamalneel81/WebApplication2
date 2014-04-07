
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Imports System.Net.Mail
Imports System.Net.NetworkCredential

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim mycomm As SqlCommand
    Dim mycomm1 As SqlCommand
    Dim mycomm2 As SqlCommand
    Dim mycomm3 As SqlCommand
    Dim mycomm4 As SqlCommand
    Dim myreader As SqlDataReader
    Dim var As String = ""
    Dim nameStu As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        var = Session("myVariable")
        nameStu = Session("name")
        Label2.Text = var
        Try
            conn = New SqlConnection
            conn.ConnectionString = "Data Source=hp-hp;Initial Catalog=student;User ID=sa;pwd=student"
            conn.Open()
            'MsgBox("connect to Database..")
        Catch ex As Exception
            MsgBox("Failed to connect to Database..")
        End Try
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click

        Try
            '-----------------------------------------------for e-mail sending------------------------------------
            'e-mail to be sent to refree1

            Dim oMsg As MailMessage = New MailMessage()
            Dim oMsg1 As MailMessage = New MailMessage()
            Dim sendr, receivr, receivr1 As MailAddress
            sendr = New MailAddress("kumardeepesh05@gmail.com")
            receivr = New MailAddress(TextBoxRemail1.Text)
            receivr1 = New MailAddress(TextBoxRemail2.Text)
            oMsg.From = sendr
            oMsg1.From = sendr
            oMsg.To.Add(receivr)
            oMsg1.To.Add(receivr1)
            oMsg.Subject = "Referral letter request for '" & nameStu & "'"
            oMsg1.Subject = "Referral letter request for '" & nameStu & "'"
            oMsg.IsBodyHtml = True
            oMsg1.IsBodyHtml = True
            'oMsg.Body = "Hi everyOne"
            'oMsg.BodyFormat = MailFormat.Html

            Dim body As String
            body = nameStu & " listed you as a reference in an application for Intern at SMVDU.<br><br> As you are aware the referral letter review is an important step in the process and<br>we cannot complete our screening of the applicant without it.<br> We greatly appreciate your timely response."
            body = body & "<br><br>To upload your referral letter, please click the link below.<br><br><a href=http://localhost:15561/UploadRL.aspx >http://localhost:15561/UploadRL.aspx</a><br><br>"
            body = body & "If you do not wish to upload a referral letter for Neel Kamal at this time, click the link above and then click Decline.<br> Alternatively, reply to this email message indicating that you wish to decline.<br> We will remove your name from the list of references for this applicant."
            oMsg.Body = "<HTML><BODY>Dear " & TextBoxRname1.Text & "<br><br>" & body & "</BODY></HTML>"
            oMsg1.Body = "<HTML><BODY>Dear " & TextBoxRname2.Text & "<br><br>" & body & "</BODY></HTML>"

            Dim client As SmtpClient = New SmtpClient()
            Dim cred As System.Net.NetworkCredential = New System.Net.NetworkCredential("kumardeepesh05@gmail.com", "05.kumar.deepesh.1234")
            client.Credentials = cred
            client.Host = "smtp.gmail.com"
            client.Port = 587
            client.DeliveryMethod = SmtpDeliveryMethod.Network
            client.EnableSsl = True
            'client.UseDefaultCredentials = False
            
            'Response.Write("<script>alert('E-mail sent')</script>") 

            'insert rafrees info in database
            Dim strQueryrafree As String = "insert into rafree_info values ('" & var.Trim() & "', '" & TextBoxRname1.Text.Trim() & "', '" & TextBoxRdesignation1.Text.Trim() & "', '" & TextBoxRemail1.Text.Trim() & "', '" & TextBoxRInstitute1.Text.Trim() & "', '" & TextBoxRname2.Text.Trim() & "', '" & TextBoxRdesignation2.Text.Trim() & "', '" & TextBoxRemail2.Text.Trim() & "', '" & TextBoxRInstitute2.Text.Trim() & "')"
            mycomm3 = New SqlCommand(strQueryrafree, conn)


            Dim usrname4RL As String = "insert into stuRfreeDetail(username, refree1true, refree2true) values ('" & var & "', 'false', 'false')"
            mycomm4 = New SqlCommand(usrname4RL, conn)


            '-------------------------------------------------------for photo upload----------------------------------------
            ' Read the file(photo) and convert it to Byte Array
            Dim filePath As String = FileUploadphoto.PostedFile.FileName
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
            End Select

            '-------------------------------------------------------for resume upload----------------------------------------
            ' Read the file(resume) and convert it to Byte Array
            Dim filePathResume As String = FileUploadResume.PostedFile.FileName
            Dim filenameResume As String = Path.GetFileName(filePathResume)
            Dim ext_Resume As String = Path.GetExtension(filenameResume)
            Dim contenttype_Resume As String = String.Empty

            'Set the contenttype based on File Extension
            Select Case ext_Resume.ToLower
                Case ".doc"
                    contenttype_Resume = "application/vnd.ms-word"
                    Exit Select
                Case ".docx"
                    contenttype_Resume = "application/vnd.ms-word"
                    Exit Select
                Case ".pdf"
                    contenttype_Resume = "application/pdf"
                    Exit Select
            End Select

            '-------------------------------------------------------for maksheet upload----------------------------------------
            ' Read the file(photo) and convert it to Byte Array
            Dim filePathMarksheet As String = FileUploadMarksheet.PostedFile.FileName
            Dim filenameMarksheet As String = Path.GetFileName(filePathMarksheet)
            Dim ext_Marksheet As String = Path.GetExtension(filenameMarksheet)
            Dim contenttype_Marksheet As String = String.Empty

            'Set the contenttype based on File Extension
            Select Case ext_Marksheet.ToLower
                Case ".doc"
                    contenttype_Marksheet = "application/vnd.ms-word"
                    Exit Select
                Case ".docx"
                    contenttype_Marksheet = "application/vnd.ms-word"
                    Exit Select
                Case ".pdf"
                    contenttype_Marksheet = "application/pdf"
                    Exit Select
            End Select

            If var = "" Then
                Response.Write("<script>alert('Please Login Again ! session time out')</script>")
            ElseIf TextBoxRemail1.Text = TextBoxRemail2.Text Then
                Response.Write("<script>alert('Both email cannot be same')</script>")
            Else
                If contenttype <> String.Empty Then
                    Dim fs As Stream = FileUploadphoto.PostedFile.InputStream
                    Dim br As New BinaryReader(fs)
                    Dim bytes As Byte() = br.ReadBytes(fs.Length)

                    'insert the file into database
                    Dim strQueryphoto As String = "insert into file_photo (username, name, contentType, data) values (@Username, @Name, @ContentType, @Data)"
                    mycomm = New SqlCommand(strQueryphoto, conn)
                    mycomm.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename
                    mycomm.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype
                    mycomm.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
                    mycomm.Parameters.Add("@Username", SqlDbType.VarChar).Value = var

                    If contenttype_Resume <> String.Empty Then
                        Dim fs1 As Stream = FileUploadResume.PostedFile.InputStream
                        Dim br1 As New BinaryReader(fs1)
                        Dim bytes1 As Byte() = br.ReadBytes(fs1.Length)

                        'insert the file into database
                        Dim strQueryResume As String = "insert into file_resume (username, name, contentType, data) values (@Username, @Name, @ContentType, @Data)"
                        mycomm1 = New SqlCommand(strQueryResume, conn)
                        mycomm1.Parameters.Add("@Name", SqlDbType.VarChar).Value = filenameResume
                        mycomm1.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype_Resume
                        mycomm1.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes1
                        mycomm1.Parameters.Add("@Username", SqlDbType.VarChar).Value = var

                        If contenttype_Marksheet <> String.Empty Then
                            Dim fs2 As Stream = FileUploadMarksheet.PostedFile.InputStream
                            Dim br2 As New BinaryReader(fs2)
                            Dim bytes2 As Byte() = br.ReadBytes(fs2.Length)

                            'insert the file into database
                            Dim strQuerymarks As String = "insert into file_marksheet (username, name, contentType, data) values (@Username, @Name, @ContentType, @Data)"
                            mycomm2 = New SqlCommand(strQuerymarks, conn)
                            mycomm2.Parameters.Add("@Name", SqlDbType.VarChar).Value = filenameMarksheet
                            mycomm2.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype_Marksheet
                            mycomm2.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes
                            mycomm2.Parameters.Add("@Username", SqlDbType.VarChar).Value = var

                            'execute query
                            mycomm.ExecuteNonQuery()
                            mycomm1.ExecuteNonQuery()
                            mycomm2.ExecuteNonQuery()
                            mycomm3.ExecuteNonQuery()
                            mycomm4.ExecuteNonQuery()
                            Dim sqlstr As String = " update register set cgpa ='" & Session("cgpa") & "', branch='" & Session("branch") & "' where username = '" & var & "'"
                            mycomm = New SqlCommand(sqlstr, conn)
                            mycomm.ExecuteNonQuery()
                            client.Send(oMsg)
                            client.Send(oMsg1)
                            Response.Redirect("ApplicationForm.aspx", False)
                        Else
                            Response.Write("File format not recognised")
                        End If
                    Else
                        Response.Write("File format not recognised")
                    End If
                Else
                    Response.Write("File format not recognised")
                End If
            End If
            
        Catch ex As Exception
            Response.Write("Error is: " & ex.ToString)
            'MsgBox(ex.ToString)
        End Try
    End Sub
End Class