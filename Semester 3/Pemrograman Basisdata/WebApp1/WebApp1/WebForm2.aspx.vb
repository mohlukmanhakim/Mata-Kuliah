Imports System
Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=datadata")
        koneksi.Open()
        Dim input As String = "insert into input(nim,nama,lahir,saudara,jekel,agama,ultah) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & RadioButtonList1.Text & "','" & DropDownList1.Text & "','" & Calendar1.SelectedDate & "')"
        Dim command As New SqlCommand(input, koneksi)
        Dim readers As SqlDataReader = command.ExecuteReader
        readers.Close()
        koneksi.Close()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        RadioButtonList1.Text = ""
        DropDownList1.Text = ""
        TextBox1.Focus()
    End Sub
End Class