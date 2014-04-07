Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class Login
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim reader As SqlDataReader
    Dim var As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        var = TextBox1.Text
        Try
            conn = New SqlConnection
            conn.ConnectionString = "Data Source=hp-hp;Initial Catalog=student;User ID=sa;pwd=student"
            conn.Open()
        Catch ex As Exception
            MsgBox("Failed to connect to Database..")
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As System.EventArgs) Handles ButtonLogin.Click

        Try
            Dim sql As String = "SELECT * FROM register WHERE username='" & TextBox1.Text & "' AND password = '" & TextBox2.Text & "'"
            comm = New SqlCommand(sql, conn)
            reader = comm.ExecuteReader
            If reader.Read Then
                'for checking account to be existed
                If reader.GetString(4) = "true" Then
                    Session("myVariable") = var
                    Response.Redirect("ApplicationForm.aspx", False)
                Else
                    Session("myVariable") = var
                    Response.Redirect("Register.aspx", False)
                End If
            Else
                ' If user enter wrong username and password combination
                ' Throw an error message
                Response.Write("<script>alert('Please enter correct username and password');</script>")

                'Clear all fields
                TextBox1.Text = ""
                TextBox2.Text = ""

                'Focus on Username field
                TextBox1.Focus()
            End If

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'directing to registration page
        Response.Redirect("registrationNew.aspx", False)
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        Response.Redirect("Admin.aspx", False)
    End Sub
End Class