Imports System
Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        TextBox4.Text = Left(TextBox1.Text, 4)
        If Mid(TextBox1.Text, 5, 2) = "51" Then
            TextBox3.Text = "Teknik Informatika"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "52" Then
            TextBox3.Text = "Sistem Informasi"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "53" Then
            TextBox3.Text = "Teknik Elektro"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "54" Then
            TextBox3.Text = "Teknik Industri"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "55" Then
            TextBox3.Text = "Teknik Mesin"
            TextBox2.Focus()
        Else
            TextBox4.Text = "Salah Input"
            TextBox1.Focus()
            TextBox4.BackColor = Drawing.Color.BlueViolet
        End If

        TextBox4.Text = Left(TextBox1.Text, 4)
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox9.Text = ""
        RadioButtonList1.Text = ""
        DropDownList1.Text = ""
        TextBox1.Focus()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=wik")
            koneksi.Open()
        Dim input As String = "insert into wik(nim,nama,prodi,angkatan,alamat,kota,hp,jekel,agama,sdr) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & RadioButtonList1.Text & "','" & DropDownList1.Text & "','" & TextBox9.Text & "')"
            Dim command As New SqlCommand(input, koneksi)
            Dim readers As SqlDataReader = command.ExecuteReader
            readers.Close()
            koneksi.Close()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox9.Text = ""
        RadioButtonList1.Text = ""
        DropDownList1.Text = ""
        TextBox1.Focus()
            TextBox1.Focus()
    End Sub
End Class