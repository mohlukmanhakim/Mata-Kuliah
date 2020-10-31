Public Class FormMenuUtama
    Private Sub LoginToolStripMenuItem_Click_1(sender As Object, e As EventArgs) Handles LoginToolStripMenuItem.Click
        FormLogin.ShowDialog()
    End Sub
    Sub terkunci()
        LoginToolStripMenuItem.Enabled = True
        LogoutToolStripMenuItem.Enabled = False
        UnggahToolStripMenuItem.Enabled = False
        LihatToolStripMenuItem.Enabled = False
        DataToolStripMenuItem.Enabled = False
    End Sub
    Private Sub FormMenuUtama_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call terkunci()
    End Sub

    Private Sub KeluarToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KeluarToolStripMenuItem.Click
        End
    End Sub

    Private Sub LogoutToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LogoutToolStripMenuItem.Click
        Call terkunci()
    End Sub

    Private Sub UnggahToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UnggahToolStripMenuItem.Click
        FormUnggah.ShowDialog()
    End Sub

    Private Sub LihatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LihatToolStripMenuItem.Click
        FormLihat.ShowDialog()
    End Sub
End Class