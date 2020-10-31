Imports System.Data.Odbc
Public Class FormLogin
    Sub terbuka()
        FormMenuUtama.LoginToolStripMenuItem.Enabled = False
        FormMenuUtama.LogoutToolStripMenuItem.Enabled = True
        FormMenuUtama.UnggahToolStripMenuItem.Enabled = True
        FormMenuUtama.LihatToolStripMenuItem.Enabled = True
        FormMenuUtama.DataToolStripMenuItem.Enabled = True
    End Sub
    Sub kondisiawal()
        TextBox1.Text = ""
        TextBox2.Text = ""
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            MsgBox("Username dan password tidak boleh kosong!")
        Else
            Call koneksi()
            cmd = New OdbcCommand("Select * from tbl_admin where kodeadmin='" & TextBox1.Text & "' and passwordadmin= '" & TextBox2.Text & "'", con)
            rd = cmd.ExecuteReader
            rd.Read()
            If rd.HasRows Then
                Me.Close()
                Call terbuka()
            Else
                MsgBox("Username atau password salah!")
            End If
        End If
    End Sub

    Private Sub FormLogin_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call kondisiawal()
    End Sub

    Private Sub Label3_Click(sender As Object, e As EventArgs) Handles Label3.Click
        FormDaftar.ShowDialog()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Hide()
    End Sub
End Class
