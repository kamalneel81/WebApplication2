Imports System.Data.SqlClient

Public Class verifyPwd
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
            comm = New SqlCommand
            comm.Connection = conn
            'MsgBox("Connection Successfully Established")
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        Try
            Dim sql As String = "SELECT email FROM register WHERE username='" & var & "'"
            comm = New SqlCommand(sql, conn)
            reader = comm.ExecuteReader
            If reader.Read Then
                If reader.GetString(0) = TextBox1.Text Then
                    Dim var1 As String = var
                    Session("myVariable") = var1
                    Response.Redirect("WebForm3.aspx", False)
                Else
                    Response.Write("<script>alert('You have entered wrong e-mail id');</script>")
                End If
            End If

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
End Class