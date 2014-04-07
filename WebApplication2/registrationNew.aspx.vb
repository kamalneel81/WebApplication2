Imports System.Net.Mail
Imports System.Net.NetworkCredential
Imports System.Data.SqlClient

Public Class registrationNew
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
            MsgBox("Failed to connect to Database.. ,error :" & ex.ToString)
        End Try
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        'for checking account to be existed
        Dim query As String
        query = "select * from register where username = '" & TextBoxUsr.Text & "'"
        comm = New SqlCommand(query, conn)
        reader = comm.ExecuteReader
        If (reader.Read) Then
            Response.Write("<script>alert('Username already Exist');</script>")
            TextBoxName.Text = ""
            TextBoxUsr.Text = ""
            TextBoxMail.Text = ""
            txtCaptcha.Text = ""
            reader.Close()
        Else
            'for generating Captcha
            reader.Close()
            Try
                Captcha1.ValidateCaptcha(txtCaptcha.Text.Trim())
                If Captcha1.UserValidated Then
                    lblMessage.ForeColor = System.Drawing.Color.Green
                    lblMessage.Text = "Valid"
                    'MsgBox("DEEPESH IS GREAT")

                    'Response.Redirect("WebForm2.aspx", False)
                Else
                    lblMessage.ForeColor = System.Drawing.Color.Red
                    lblMessage.Text = "The character you entered is not valid"
                End If

                'e-mail to be sent to user

                Dim oMsg As MailMessage = New MailMessage()
                Dim sendr, receivr As MailAddress
                sendr = New MailAddress("kumardeepesh05@gmail.com")
                receivr = New MailAddress(TextBoxMail.Text)
                oMsg.From = sendr
                oMsg.To.Add(receivr)
                oMsg.Subject = "Asp.net testing"
                oMsg.IsBodyHtml = True
                'oMsg.Body = "Hi everyOne"
                'oMsg.BodyFormat = MailFormat.Html
                oMsg.Body = "<HTML><BODY><B>Dear " & TextBoxName.Text & "</B><br><br>Congratulations! You have been successfully registered.<br><br>"
                oMsg.Body = oMsg.Body & "<b>Your Username is: </b>" & TextBoxUsr.Text & "<br><b>Your Password is: </b>" & TextBoxPwd.Text & " <br><br>Regards,<br>team SMVDU.</BODY></HTML>"

                Dim client As SmtpClient = New SmtpClient()
                Dim cred As System.Net.NetworkCredential = New System.Net.NetworkCredential("kumardeepesh05@gmail.com", "05.kumar.deepesh.1234")
                client.Credentials = cred
                client.Host = "smtp.gmail.com"
                client.Port = 587
                client.DeliveryMethod = SmtpDeliveryMethod.Network
                client.EnableSsl = True
                'client.UseDefaultCredentials = False
                client.Send(oMsg)
                'Response.Write("<script>alert('E-mail sent')</script>")

                'insert Details into database
                Dim sqlstr As String
                sqlstr = " insert into register(username, password, name, email, application) values('" & TextBoxUsr.Text.Trim() & "', '" & TextBoxPwd.Text.Trim() & "', '" & TextBoxName.Text.Trim() & "', '" & TextBoxMail.Text.Trim() & "', 'false')"
                comm = New SqlCommand(sqlstr, conn)
                comm.ExecuteNonQuery()
                conn.Close()
                'MsgBox("data inserted")

                'Response.Write("<script>alert('Congratulations! You have Successfully registerd.')</script>")
                Response.Redirect("Login.aspx", False)
            Catch ex As Exception
                Response.Write("error: " & ex.Message)
            End Try
        End If
    End Sub

    Protected Sub txtCaptcha_TextChanged(sender As Object, e As EventArgs) Handles txtCaptcha.TextChanged

    End Sub
End Class