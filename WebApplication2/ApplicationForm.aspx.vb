Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Public Class ApplicationForm
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim mycomm As SqlCommand
    Dim myreader As SqlDataReader
    Dim userName As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        userName = Session("myVariable")

        Try
            'For establishing connection
            conn = New SqlConnection
            conn.ConnectionString = "Data Source=hp-hp;Initial Catalog=student;User ID=sa;pwd=student"
            conn.Open()

            'setting true in database
            Dim sql As String
            sql = " update register set application ='true' where username = '" & userName & " '"
            mycomm = New SqlCommand
            mycomm.Connection = conn
            mycomm.CommandText = sql
            mycomm.ExecuteNonQuery()

            'For Preparing the Application Form
            Dim query As String
            query = "select * from register where username = '" & userName & "'"
            mycomm = New SqlCommand(query, conn)
            myreader = mycomm.ExecuteReader
            If myreader.Read Then
                Label1.Text = myreader.GetString(2)
                Label11.Text = myreader.GetString(3)
            End If
            myreader.Close()

            Dim query1 As String
            query1 = "select * from stu_info where username = '" & userName & "'"
            mycomm = New SqlCommand(query1, conn)
            myreader = mycomm.ExecuteReader
            If myreader.Read Then
                Label2.Text = myreader.GetString(1)
                Label12.Text = myreader.GetString(2)
                Label3.Text = myreader.GetString(3)
                Label4.Text = myreader.GetString(4)
                Label13.Text = myreader.GetString(5)
                Label5.Text = myreader.GetString(6)
                Label6.Text = myreader.GetString(7)
                Label14.Text = myreader.GetString(8)
                Label7.Text = myreader.GetString(9)
                Label15.Text = myreader.GetString(10)
                Label8.Text = myreader.GetString(11)
                Label9.Text = myreader.GetString(12)
                Label10.Text = myreader.GetString(13)
            End If
            myreader.Close()

            Dim query2 As String
            query2 = "select * from rafree_info where username = '" & userName & "'"
            mycomm = New SqlCommand(query2, conn)
            myreader = mycomm.ExecuteReader
            If myreader.Read Then
                Label16.Text = myreader.GetString(1)
                Label17.Text = myreader.GetString(2)
                Label18.Text = myreader.GetString(3)
                Label19.Text = myreader.GetString(4)
                Label20.Text = myreader.GetString(5)
                Label21.Text = myreader.GetString(6)
                Label22.Text = myreader.GetString(7)
                Label23.Text = myreader.GetString(8)
            End If
            myreader.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

End Class