Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Public Class verifyUsr
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
        Try
            Dim sql As String = "SELECT * FROM register WHERE username='" & TextBox1.Text & "'"
            comm = New SqlCommand(sql, conn)
            reader = comm.ExecuteReader
            If reader.Read Then
                Dim var As String = TextBox1.Text
                Session("myVariable") = var
                Response.Redirect("verifyPwd.aspx", False)
            Else
                ' If user enter wrong username and password combination
                ' Throw an error message
                Response.Write("<script>alert('You have entered incorrect username');</script>")

                'Clear all fields
                TextBox1.Text = ""

                'Focus on Username field
                TextBox1.Focus()
            End If

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
End Class