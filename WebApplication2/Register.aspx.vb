Imports System.Data.SqlClient
'Imports System.Web.HttpResponse

Public Class Register
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim reader As SqlDataReader
    Dim var As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        var = Session("myVariable")
        Label2.Text = var
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

        'for checking account to be existed
        Dim query, query1 As String
        query = "select * from stu_info where username = '" & var & "'"
        comm = New SqlCommand(query, conn)
        reader = comm.ExecuteReader
        If (reader.Read) Then
            reader.Close()
            query1 = "delete from stu_info where username = '" & var & "'"
            comm = New SqlCommand(query1, conn)
            comm.ExecuteNonQuery()
        End If

        'setting the name
        Try
            reader.Close()
            Dim sql As String = "SELECT name FROM register WHERE username='" & var & "'"
            comm = New SqlCommand(sql, conn)
            reader = comm.ExecuteReader
            If reader.Read Then
                TextBoxName.Text = reader.GetString(0)
                reader.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

        'MsgBox("name is = " & var)
        'var = Response.QueryString.GetValue("var")
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        'Dim newGUID As New Guid
        'Dim str As String = newGUID.ToString

        'insert Details into database
        Dim sqlstr As String
        Dim ins As String = DropDownListInstitute.Text
        Dim prog As String = DropDownListDegree.Text
        Dim dsicip As String = DropDownListDiscipline.Text
        If var = "" Then
            Response.Write("<script>alert('Please Login Again ! session time out')</script>")
        Else
            If DropDownListInstitute.Text = "Others" Then
                ins = TextBoxHide.Text
            End If
            If DropDownListDegree.Text = "Others" Then
                prog = TextBox1.Text
            End If
            'If DropDownListDiscipline.Text = "Others" Then
            'dsicip = TextBox2.Text
            'End If
            sqlstr = " insert into stu_info values('" & var.Trim() & "', '" & datepicker.Text.Trim & "', '" & DropDownListGender.Text.Trim & "', '" & TextBoxAddress.Text.Trim & "', '" & TextBoxTel.Text.Trim & "', '" & TextBoxMobile.Text.Trim & "', '" & ins.Trim & "', '" & prog.Trim & "', '" & dsicip.Trim & "', '" & DropDownListGradingT.Text.Trim & "', '" & TextBoxCGPA.Text.Trim & "', '" & TextBoxInterest.Text.Trim & "', '" & TextBoxStatement.Text.Trim & "', '" & TextBoxAchievement.Text.Trim & "')"
            comm = New SqlCommand(sqlstr, conn)
            comm.ExecuteNonQuery()

            Session("myVariable") = var
            Session("name") = TextBoxName.Text
            Session("cgpa") = TextBoxCGPA.Text
            Session("branch") = dsicip

            Response.Redirect("Register1.aspx", False)
        End If

        'conn.Close()
        'MsgBox("data inserted")
    End Sub
    Protected Sub DL1_IndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        If DropDownListInstitute.SelectedItem.Text = "Others" Then
            TextBoxHide.Visible = True
        Else
            TextBoxHide.Visible = False
        End If
    End Sub

    Protected Sub DL2_IndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        If DropDownListDegree.SelectedItem.Text = "Others" Then
            TextBox1.Visible = True
        Else
            TextBox1.Visible = False
        End If
    End Sub
End Class