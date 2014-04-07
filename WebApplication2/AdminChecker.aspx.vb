Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class AdminChecker
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

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btn.Click
        Try
            Dim sql As String = "select username, name, email, cgpa from register where branch='" & DropDownList1.Text & "'"
            Dim comm As New SqlCommand(sql, conn)
            Me.GridView1.DataSource = comm.ExecuteReader
            Me.GridView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

End Class