Imports System.Data.SqlClient

Public Class WebForm3
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim reader As SqlDataReader
    Dim var As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        var = Session("myVariable")
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
            'MsgBox("username is" & var)
            Dim sql As String
            sql = " update register set password ='" & TextBox1.Text.Trim & "' where username = '" & var & " '"
            comm = New SqlCommand
            comm.Connection = conn
            comm.CommandText = sql
            comm.ExecuteNonQuery()
            'comm = New SqlCommand(sql, conn)
            'reader = comm.ExecuteReader
            'MsgBox("update password")
            Response.Redirect("Login.aspx", False)
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class