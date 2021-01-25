Imports System.Data.SqlClient
Public Class absensi
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Then
            MsgBox("silahkan diisi")
        End If
        If TextBox2.Text = "" Then
            MsgBox("silahkan diisi")
        End If

        If TextBox3.Text = "" Then
            MsgBox("silahkan diisi")
        End If
        If TextBox4.Text = "" Then
            MsgBox("silahkan diisi")
        End If
        If TextBox5.Text = "" Then
            MsgBox("silahkan diisi")
        End If
        If TextBox6.Text = "" Then
            MsgBox("silahkan diisi")
        End If

        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=absensi")
        koneksi.Open()
        Dim input As String = "insert into mahasiswa(nim,nama,prodi,angkatan,alamat,hp) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "')"
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
        MsgBox("data berhasil diinput")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click

    End Sub
End Class