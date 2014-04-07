Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class Admin
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
            Dim query As String
            query = "select password from admin_info where admin='admin'"
            comm = New SqlCommand(query, conn)
            reader = comm.ExecuteReader
            If reader.Read Then
                If TextBox2.Text = reader.GetString(0) Then
                    Response.Redirect("AdminChecker.aspx", False)
                Else
                    Response.Write("<script>alert('Please enter correct password');</script>")
                End If
            End If
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Panel1.Visible = True
        TextBox3.Focus()
    End Sub

    Protected Sub buttonChange_Click(sender As Object, e As EventArgs) Handles buttonChange.Click
        Try
            Dim query As String
            query = "select password from admin_info where admin='admin'"
            comm = New SqlCommand(query, conn)
            reader = comm.ExecuteReader
            If reader.Read Then
                If TextBox3.Text = reader.GetString(0) Then
                    reader.Close()
                    Dim sql As String
                    sql = " update admin_info set password ='" & TextBox4.Text & "' where admin = 'admin'"
                    comm = New SqlCommand
                    comm.Connection = conn
                    comm.CommandText = sql
                    comm.ExecuteNonQuery()
                    Response.Write("<script>alert('Password changed successfully.');</script>")
                    Panel1.Visible = False
                Else
                    Response.Write("<script>alert('Please enter correct old password');</script>")
                End If
            End If
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub
End Class