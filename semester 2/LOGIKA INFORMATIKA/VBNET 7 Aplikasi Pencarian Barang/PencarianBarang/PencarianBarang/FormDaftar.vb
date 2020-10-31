Imports System.Data.Odbc
Public Class FormDaftar

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Call koneksi()
        da = New OdbcDataAdapter("Select kodeadmin,namaadmin,passwordadmin,leveladmin From tbl_admin", con)
        ds = New DataSet
        da.Fill(ds, "tbl_admin")
        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Then
            MsgBox("Silahkan isi semua field")
        Else
            Call koneksi()
            Dim inputdata As String = "Insert into tbl_admin values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "')"
            cmd = New OdbcCommand(inputdata, con)
            cmd.ExecuteNonQuery()
            MsgBox("Input berhasil")
        End If
    End Sub

    Private Sub FormGuest_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Close()
    End Sub
End Class